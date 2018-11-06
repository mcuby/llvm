//===-- ShuraCoreRegisterInfo.td - ShuraCore Register defs ---------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Declarations that describe the ShuraCore register file 
//===----------------------------------------------------------------------===//

class ShuraCoreReg<bits<32> Enc, string n> : Register<n> {
  let HWEncoding = Enc;
  let Namespace = "ShuraCore";
}

// CPU registers
def R0  : ShuraCoreReg< 0, "r0">;
def R1  : ShuraCoreReg< 1, "r1">;
def R2  : ShuraCoreReg< 2, "r2">;
def R3  : ShuraCoreReg< 3, "r3">;
def R4  : ShuraCoreReg< 4, "r4">;
def R5  : ShuraCoreReg< 5, "r5">;
def R6  : ShuraCoreReg< 6, "r6">;
def R7  : ShuraCoreReg< 7, "r7">;
def R8  : ShuraCoreReg< 8, "r8">;
def R9  : ShuraCoreReg< 9, "r9">;
def R10  : ShuraCoreReg< 10, "r10">;
def R11  : ShuraCoreReg< 11, "r11">;
def R12  : ShuraCoreReg< 12, "r12">;
def R13  : ShuraCoreReg< 13, "r13">;
def R14  : ShuraCoreReg< 14, "r14">;
def R15  : ShuraCoreReg< 15, "r15">;
def R16  : ShuraCoreReg< 16, "r16">;
def R17  : ShuraCoreReg< 17, "r17">;
def R18  : ShuraCoreReg< 18, "r18">;
def R19  : ShuraCoreReg< 19, "r19">;
def R20  : ShuraCoreReg< 20, "r20">;
def R21  : ShuraCoreReg< 21, "r21">;
def R22  : ShuraCoreReg< 22, "r22">;
def R23  : ShuraCoreReg< 23, "r23">;
def R24  : ShuraCoreReg< 24, "r24">;
def R25  : ShuraCoreReg< 25, "r25">;
def R26  : ShuraCoreReg< 26, "r26">;
def R27  : ShuraCoreReg< 27, "r27">;
def R28  : ShuraCoreReg< 28, "r28">;
def R29  : ShuraCoreReg< 29, "r29">;
def R30  : ShuraCoreReg< 30, "r30">;
def R31  : ShuraCoreReg< 31, "r31">;

//stack pointer
def SP  : LEGReg<32, "sp">;
//heap pointer
def HP  : LEGReg<33, "hp">;

def S0  : ShuraCoreReg< 34, "s0">;
def S1  : ShuraCoreReg< 35, "s1">;
def S2  : ShuraCoreReg< 36, "s2">;
def S3  : ShuraCoreReg< 37, "s3">;
def S4  : ShuraCoreReg< 38, "s4">;
def S5  : ShuraCoreReg< 39, "s5">;
def S6  : ShuraCoreReg< 40, "s6">;
def S7  : ShuraCoreReg< 41, "s7">;
def S8  : ShuraCoreReg< 42, "s8">;

//program counter
def PC  : LEGReg<43, "pc">;
//return address 
def RA  : LEGReg<44, "ra">;

// Register classes.
//
def GRRegs : RegisterClass<"ShuraCore", [i32], 32,
  // Return values and arguments
  (add R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, 
	R11, R12, R13, R14, R15)>;


