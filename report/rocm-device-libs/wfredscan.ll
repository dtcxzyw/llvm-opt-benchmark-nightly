Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/wfredscan?download=true
inline.NumInlined: 309
inline.NumDeleted: 133
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_ISA_version = external local_unnamed_addr addrspace(4) constant i32, align 4
@__oclc_wavefrontsize64 = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden i32 @__ockl_wfred_add_i32(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 2 uses
  %i.b = icmp slt i32 %i.a, 8000
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr addrspace(4) @__oclc_wavefrontsize64, align 1, !tbaa !11, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.split, label %fullwave.exit

.split:                                           ; preds = %bb.b
  %i.e = tail call i64 @llvm.amdgcn.ballot.i64(i1 true)
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

fullwave.exit:                                    ; preds = %bb.b
  %i.g = tail call i64 @llvm.amdgcn.ballot.i64(i1 true)
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 4294967295
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split, %fullwave.exit
  %i.j = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %0, i32 32945)
  %i.k = add nsw i32 %i.j, %0                     ; 2 uses
  %i.l = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.k, i32 32846)
  %i.m = add nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.m, i32 4127)
  %i.o = add nsw i32 %i.m, %i.n                   ; 2 uses
  %i.p = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.o, i32 8223)
  %i.q = add nsw i32 %i.o, %i.p                   ; 2 uses
  %i.r = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.q, i32 16415)
  %i.s = add nsw i32 %i.q, %i.r                   ; 2 uses
  %i.t = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.s, i32 32)
  %i.v = add nsw i32 %i.u, %i.t
  br label %bb.h

bb.d:                                             ; preds = %.split, %fullwave.exit
  %i.w = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %0, i32 32945)
  %i.x = add nsw i32 %i.w, %0                     ; 2 uses
  %i.y = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.x, i32 32846)
  %i.z = add nsw i32 %i.x, %i.y                   ; 2 uses
  %i.aa = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.z, i32 4127)
  %i.ab = add nsw i32 %i.z, %i.aa                 ; 2 uses
  %i.ac = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.ab, i32 8223)
  %i.ad = add nsw i32 %i.ab, %i.ac                ; 2 uses
  %i.ae = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.ad, i32 16415)
  %i.af = add nsw i32 %i.ad, %i.ae                ; 2 uses
  %i.ag = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.af, i32 32)
  %i.ah = tail call i64 @llvm.amdgcn.ballot.i64(i1 true)
  %i.ai = and i64 %i.ah, 4294967296
  %.not.i = icmp eq i64 %i.ai, 0
  %i.aj = select i1 %.not.i, i32 0, i32 %i.ag
  %i.ak = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.af, i32 0)
  %i.al = add nsw i32 %i.aj, %i.ak
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.am = icmp samesign ult i32 %i.a, 10000
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = tail call fastcc i32 @red89_int_add(i32 noundef %0) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = tail call fastcc i32 @red10_int_add(i32 noundef %0) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.0 = phi i32 [ %i.v, %bb.c ], [ %i.al, %bb.d ], [ %i.an, %bb.f ], [ %i.ao, %bb.g ]
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc i32 @red89_int_add(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %0, i32 257, i32 15, i32 15, i1 true)
  %i.b = add nsw i32 %i.a, %0                     ; 2 uses
  %i.c = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.b, i32 258, i32 15, i32 15, i1 true)
  %i.d = add nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.d, i32 260, i32 15, i32 15, i1 true)
  %i.f = add nsw i32 %i.d, %i.e                   ; 2 uses
  %i.g = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.f, i32 264, i32 15, i32 15, i1 true)
  %i.h = add nsw i32 %i.f, %i.g                   ; 2 uses
  %i.i = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.h, i32 304, i32 15, i32 15, i1 true)
  %i.j = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.i, i32 320, i32 15, i32 15, i1 true)
  %i.k = add nsw i32 %i.j, %i.h                   ; 2 uses
  %i.l = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.k, i32 32)
  %i.m = tail call i64 @llvm.amdgcn.ballot.i64(i1 true)
  %i.n = and i64 %i.m, 4294967296
  %.not = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not, i32 0, i32 %i.l
  %i.p = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.k, i32 0)
  %i.q = add nsw i32 %i.o, %i.p
  ret i32 %i.q
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc i32 @red10_int_add(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %0, i32 257, i32 15, i32 15, i1 true)
  %i.b = add nsw i32 %i.a, %0                     ; 2 uses
  %i.c = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.b, i32 258, i32 15, i32 15, i1 true)
  %i.d = add nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.d, i32 260, i32 15, i32 15, i1 true)
  %i.f = add nsw i32 %i.d, %i.e                   ; 2 uses
  %i.g = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.f, i32 264, i32 15, i32 15, i1 true)
  %i.h = add nsw i32 %i.f, %i.g
  %i.i = tail call i32 @llvm.amdgcn.update.dpp.i32(i32 0, i32 %i.h, i32 336, i32 15, i32 15, i1 true) ; 2 uses
  %i.j = tail call i32 @llvm.amdgcn.permlanex16.i32(i32 0, i32 %i.i, i32 0, i32 0, i1 false, i1 true)
  %i.k = add nsw i32 %i.j, %i.i                   ; 3 uses
  %i.l = load i8, ptr addrspace(4) @__oclc_wavefrontsize64, align 1, !tbaa !11, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.k, i32 32)
  %i.o = tail call i64 @llvm.amdgcn.ballot.i64(i1 true)
  %i.p = and i64 %i.o, 4294967296
  %.not = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not, i32 0, i32 %i.n
  %i.r = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.k, i32 0)
  %i.s = add nsw i32 %i.q, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.s, %bb.b ], [ %i.k, %bb.a ]
  ret i32 %.0
}

; Function Attrs: convergent norecurse nounwind denormal_fpenv(dynamic) uwtable
define hidden i32 @__ockl_wfscan_add_i32(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @__ockl_lane_u32() #10     ; 13 uses
  %i.b = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 2 uses
  %i.c = icmp slt i32 %i.b, 8000
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %i.b, 10000
  br i1 %i.d, label %bb.c, label %.thread22

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @iscan89_int_add(i32 noundef %0) #10 ; 2 uses
  br i1 %1, label %bb.e, label %bb.d

.thread22:                                        ; preds = %bb.b
  %i.f = tail call fastcc i32 @iscan10_int_add(i32 noundef %0, i32 noundef %i.a) #10 ; 2 uses
  br i1 %1, label %bb.e, label %.thread25

.thread:                                          ; preds = %bb.a
  %i.g = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %0, i32 30)
  %i.h = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i, i32 0, i32 %i.g
  %i.j = add nsw i32 %i.i, %0                     ; 2 uses
  %i.k = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.j, i32 60)
  %i.l = and i32 %i.a, 2
  %.not31.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not31.i, i32 0, i32 %i.k
  %i.n = add nsw i32 %i.j, %i.m                   ; 2 uses
  %i.o = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.n, i32 120)
  %i.p = and i32 %i.a, 4
  %.not32.i = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not32.i, i32 0, i32 %i.o
  %i.r = add nsw i32 %i.n, %i.q                   ; 2 uses
  %i.s = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.r, i32 240)
  %i.t = and i32 %i.a, 8
  %.not33.i = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not33.i, i32 0, i32 %i.s
  %i.v = add nsw i32 %i.r, %i.u                   ; 2 uses
  %i.w = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.v, i32 480)
  %i.x = and i32 %i.a, 16
  %.not34.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not34.i, i32 0, i32 %i.w
  %i.z = add nsw i32 %i.v, %i.y                   ; 2 uses
  %i.aa = tail call i32 @llvm.amdgcn.readlane.i32(i32 %i.z, i32 31)
  %i.ab = icmp ugt i32 %i.a, 31
  %i.ac = select i1 %i.ab, i32 %i.aa, i32 0
  %i.ad = add nsw i32 %i.z, %i.ac                 ; 6 uses
  br i1 %1, label %bb.e, label %.thread18

.thread18:                                        ; preds = %.thread
  %i.ae = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.ad, i32 32912)
  %i.af = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.ad, i32 120)
  %i.ag = and i32 %i.a, 7
  %i.ah = icmp eq i32 %i.ag, 4
  %i.ai = select i1 %i.ah, i32 %i.af, i32 %i.ae
  %i.aj = tail call i32 @llvm.amdgcn.ds.swizzle(i32 %i.ad, i32 240)
  %i.ak = and i32 %i.a, 15
  %i.al = icmp eq i32 %i.ak, 8
  %i.am = select i1 %i.al, i32 %i.aj, i32 %i.ai
end_hunk_0
