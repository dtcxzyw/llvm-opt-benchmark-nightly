inline.NumInlined: 402
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::Status" = type { ptr }
%"class.arrow::internal::AlignedStorage" = type { %"union.std::aligned_storage<16, 8>::type" }
%"union.std::aligned_storage<16, 8>::type" = type { [16 x i8] }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.8 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.8 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh = comdat any

$_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEEvPKhlllPh = comdat any

$_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll = comdat any

$_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE = comdat any

$_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@_ZN5arrow4util8internalL14kNonNullFillerE = internal unnamed_addr constant i8 0, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN5arrow8bit_utilL8kBitmaskE = internal unnamed_addr constant [8 x i8] c"\01\02\04\08\10 @\80", align 1
@_ZN5arrow8bit_utilL15kFlippedBitmaskE = internal unnamed_addr constant [8 x i8] c"\FE\FD\FB\F7\EF\DF\BF\7F", align 1
@.str = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = shl i64 %i.a, 3
  %i.c = add i64 %i.b, %1                         ; 2 uses
  %i.d = add i64 %i.c, 63
  %i.e = and i64 %i.d, -64
  %i.f = sub i64 %i.e, %i.c
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %2) ; 3 uses
  %i.g = sub i64 %2, %.sroa.speculated.i          ; 2 uses
  %i.h = lshr i64 %i.g, 6                         ; 4 uses
  %i.i = and i64 %i.g, -64
  %i.j = add nsw i64 %.sroa.speculated.i, %1      ; 3 uses
  %i.k = add nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = sdiv i64 %i.j, 8                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 8 uses
  %i.n = icmp sgt i64 %.sroa.speculated.i, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.039.lcssa = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge58, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03948 = phi i64 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %.04047 = phi i64 [ %i.w, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.o = lshr i64 %.04047, 3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = trunc i64 %.04047 to i8
  %i.s = and i8 %i.r, 7
  %i.t = lshr i8 %i.q, %i.s
  %i.u = and i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i64
  %spec.select = add nuw nsw i64 %.03948, %i.v    ; 2 uses
  %i.w = add nsw i64 %.04047, 1                   ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.j
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !8

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.h ; 2 uses
  %i.z = and i64 %i.h, 144115188075855868         ; 3 uses
  %.not66 = icmp eq i64 %i.z, 0
  br i1 %.not66, label %.preheader45, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %bb.b
  %i.aa = add nsw i64 %i.z, -4                    ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 12
  br i1 %min.iters.check, label %.preheader46.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.preheader46.preheader
  %n.vec = and i64 %i.ac, 9223372036854775804     ; 4 uses
  %i.ad = shl i64 %n.vec, 2
  %i.ae = shl i64 %n.vec, 5
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ae   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi90 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi91 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi92 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi93 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi94 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %i.ag = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ag ; 4 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.ag   ; 4 uses
  %next.gep97 = getelementptr i8, ptr %i.ah, i64 32
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ag   ; 4 uses
  %next.gep98 = getelementptr i8, ptr %i.ai, i64 64
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ag   ; 4 uses
  %next.gep99 = getelementptr i8, ptr %i.aj, i64 96
  %i.ak = load i64, ptr %next.gep, align 8, !tbaa !10
  %i.al = load i64, ptr %next.gep97, align 8, !tbaa !10
  %i.am = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %i.an = insertelement <2 x i64> %i.am, i64 %i.al, i64 1
  %i.ao = load i64, ptr %next.gep98, align 8, !tbaa !10
  %i.ap = load i64, ptr %next.gep99, align 8, !tbaa !10
  %i.aq = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.ap, i64 1
  %i.as = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.an)
  %i.at = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ar)
  %i.au = add <2 x i64> %vec.phi, %i.as           ; 2 uses
  %i.av = add <2 x i64> %vec.phi90, %i.at         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ax = getelementptr i8, ptr %i.ah, i64 40
  %i.ay = getelementptr i8, ptr %i.ai, i64 72
  %i.az = getelementptr i8, ptr %i.aj, i64 104
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.bc = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %i.bd = insertelement <2 x i64> %i.bc, i64 %i.bb, i64 1
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !10
  %i.bg = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %i.bh = insertelement <2 x i64> %i.bg, i64 %i.bf, i64 1
  %i.bi = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bd)
  %i.bj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bh)
  %i.bk = add <2 x i64> %vec.phi91, %i.bi         ; 2 uses
  %i.bl = add <2 x i64> %vec.phi92, %i.bj         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bn = getelementptr i8, ptr %i.ah, i64 48
  %i.bo = getelementptr i8, ptr %i.ai, i64 80
  %i.bp = getelementptr i8, ptr %i.aj, i64 112
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bs = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bt = insertelement <2 x i64> %i.bs, i64 %i.br, i64 1
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !10
  %i.bw = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %i.bx = insertelement <2 x i64> %i.bw, i64 %i.bv, i64 1
  %i.by = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bt)
  %i.bz = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bx)
  %i.ca = add <2 x i64> %vec.phi93, %i.by         ; 2 uses
  %i.cb = add <2 x i64> %vec.phi94, %i.bz         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.cd = getelementptr i8, ptr %i.ah, i64 56
  %i.ce = getelementptr i8, ptr %i.ai, i64 88
  %i.cf = getelementptr i8, ptr %i.aj, i64 120
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !10
  %i.ci = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.cj = insertelement <2 x i64> %i.ci, i64 %i.ch, i64 1
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.cm = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cn = insertelement <2 x i64> %i.cm, i64 %i.cl, i64 1
  %i.co = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cj)
  %i.cp = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cn)
  %i.cq = add <2 x i64> %vec.phi95, %i.co         ; 2 uses
  %i.cr = add <2 x i64> %vec.phi96, %i.cp         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.av, %i.au
  %i.ct = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %bin.rdx100 = add <2 x i64> %i.bl, %i.bk
  %i.cu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx100)
  %bin.rdx101 = add <2 x i64> %i.cb, %i.ca
  %i.cv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx101)
  %bin.rdx102 = add <2 x i64> %i.cr, %i.cq
  %i.cw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx102)
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  %i.cx = insertelement <4 x i64> poison, i64 %i.ct, i64 0
  %i.cy = insertelement <4 x i64> %i.cx, i64 %i.cu, i64 1
  %i.cz = insertelement <4 x i64> %i.cy, i64 %i.cv, i64 2
  %i.da = insertelement <4 x i64> %i.cz, i64 %i.cw, i64 3 ; 2 uses
  br i1 %cmp.n, label %.preheader45, label %.preheader46.preheader127

.preheader46.preheader127:                        ; preds = %.preheader46.preheader, %middle.block
  %.03851.ph = phi i64 [ 0, %.preheader46.preheader ], [ %i.ad, %middle.block ]
  %.04150.ph = phi ptr [ %i.m, %.preheader46.preheader ], [ %i.af, %middle.block ]
  %.ph = phi <4 x i64> [ zeroinitializer, %.preheader46.preheader ], [ %i.da, %middle.block ]
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader127, %.preheader46
  %.03851 = phi i64 [ %i.dg, %.preheader46 ], [ %.03851.ph, %.preheader46.preheader127 ]
  %.04150 = phi ptr [ %i.df, %.preheader46 ], [ %.04150.ph, %.preheader46.preheader127 ] ; 2 uses
  %i.db = phi <4 x i64> [ %i.de, %.preheader46 ], [ %.ph, %.preheader46.preheader127 ]
  %i.dc = load <4 x i64>, ptr %.04150, align 8, !tbaa !10
  %i.dd = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.dc)
  %i.de = add <4 x i64> %i.db, %i.dd              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.04150, i64 32 ; 2 uses
  %i.dg = add nuw nsw i64 %.03851, 4              ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, %i.z
  br i1 %i.dh, label %.preheader46, label %.preheader45, !llvm.loop !15

.preheader45:                                     ; preds = %.preheader46, %middle.block, %bb.b
  %.041.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.af, %middle.block ], [ %i.df, %.preheader46 ] ; 5 uses
  %i.di = phi <4 x i64> [ zeroinitializer, %bb.b ], [ %i.da, %middle.block ], [ %i.de, %.preheader46 ]
  %i.dj = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.di)
  %op.rdx = add i64 %i.dj, %.039.lcssa            ; 3 uses
  %i.dk = icmp ult ptr %.041.lcssa, %i.y
  br i1 %i.dk, label %.lr.ph57.preheader, label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %.preheader45
  %i.dl = shl nuw nsw i64 %i.h, 3
  %i.dm = add i64 %i.l, %i.a
  %i.dn = add i64 %i.dm, %i.dl
  %3 = ptrtoint ptr %.041.lcssa to i64            ; 2 uses
  %i.do = add i64 %3, 8
  %i.dp = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.do)
  %i.dq = xor i64 %3, -1
  %i.dr = add i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.dr, 24
  br i1 %min.iters.check108, label %.lr.ph57.preheader124, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph57.preheader
  %n.vec111 = and i64 %i.dt, 4611686018427387900  ; 3 uses
  %i.du = shl i64 %n.vec111, 3
  %i.dv = getelementptr i8, ptr %.041.lcssa, i64 %i.du
  %i.dw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %op.rdx, i64 0
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph109
  %index113 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %vec.phi114 = phi <2 x i64> [ %i.dw, %vector.ph109 ], [ %i.eb, %vector.body112 ]
  %vec.phi115 = phi <2 x i64> [ zeroinitializer, %vector.ph109 ], [ %i.ec, %vector.body112 ]
  %i.dx = shl i64 %index113, 3
  %next.gep116 = getelementptr i8, ptr %.041.lcssa, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep116, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep116, align 8, !tbaa !10
  %wide.load117 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !10
  %i.dz = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ea = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load117)
  %i.eb = add <2 x i64> %i.dz, %vec.phi114        ; 2 uses
  %i.ec = add <2 x i64> %i.ea, %vec.phi115        ; 2 uses
  %index.next118 = add nuw i64 %index113, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.ed, label %middle.block119, label %vector.body112, !llvm.loop !16

middle.block119:                                  ; preds = %vector.body112
  %bin.rdx120 = add <2 x i64> %i.ec, %i.eb
  %i.ee = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx120) ; 2 uses
  %cmp.n121 = icmp eq i64 %i.dt, %n.vec111
  br i1 %cmp.n121, label %._crit_edge58, label %.lr.ph57.preheader124

.lr.ph57.preheader124:                            ; preds = %.lr.ph57.preheader, %middle.block119
  %.356.ph = phi i64 [ %op.rdx, %.lr.ph57.preheader ], [ %i.ee, %middle.block119 ]
  %.14255.ph = phi ptr [ %.041.lcssa, %.lr.ph57.preheader ], [ %i.dv, %middle.block119 ]
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader124, %.lr.ph57
  %.356 = phi i64 [ %i.eh, %.lr.ph57 ], [ %.356.ph, %.lr.ph57.preheader124 ]
  %.14255 = phi ptr [ %i.ei, %.lr.ph57 ], [ %.14255.ph, %.lr.ph57.preheader124 ] ; 2 uses
  %i.ef = load i64, ptr %.14255, align 8, !tbaa !10
  %i.eg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ef)
  %i.eh = add i64 %i.eg, %.356                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.14255, i64 8 ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %i.y
  br i1 %i.ej, label %.lr.ph57, label %._crit_edge58, !llvm.loop !17

._crit_edge58:                                    ; preds = %.lr.ph57, %middle.block119, %.preheader45, %._crit_edge
  %.4 = phi i64 [ %.039.lcssa, %._crit_edge ], [ %op.rdx, %.preheader45 ], [ %i.ee, %middle.block119 ], [ %i.eh, %.lr.ph57 ] ; 2 uses
  %i.ek = add nsw i64 %2, %1                      ; 2 uses
  %i.el = icmp slt i64 %i.k, %i.ek
  br i1 %i.el, label %.lr.ph63, label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63, %._crit_edge58
  %.5.lcssa = phi i64 [ %.4, %._crit_edge58 ], [ %spec.select44, %.lr.ph63 ]
  ret i64 %.5.lcssa

.lr.ph63:                                         ; preds = %._crit_edge58, %.lr.ph63
  %.061 = phi i64 [ %i.eu, %.lr.ph63 ], [ %i.k, %._crit_edge58 ] ; 3 uses
  %.560 = phi i64 [ %spec.select44, %.lr.ph63 ], [ %.4, %._crit_edge58 ]
  %i.em = lshr i64 %.061, 3
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !7
  %i.ep = trunc i64 %.061 to i8
  %i.eq = and i8 %i.ep, 7
  %i.er = lshr i8 %i.eo, %i.eq
  %i.es = and i8 %i.er, 1
  %i.et = zext nneg i8 %i.es to i64
  %spec.select44 = add nsw i64 %.560, %i.et       ; 2 uses
  %i.eu = add nsw i64 %.061, 1                    ; 2 uses
  %i.ev = icmp slt i64 %i.eu, %i.ek
  br i1 %i.ev, label %.lr.ph63, label %._crit_edge64, !llvm.loop !18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN5arrow8internal15CountAndSetBitsEPKhlS2_ll(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i = select i1 %.not.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %0, !prof !19
  %i.a = sdiv i64 %1, 8
  %i.b = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i, i64 %i.a
  %i.c = srem i64 %1, 8                           ; 5 uses
  %.not.i7.i = icmp eq ptr %2, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i = select i1 %.not.i7.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %2, !prof !19
  %i.d = sdiv i64 %3, 8
  %i.e = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i, i64 %i.d
  %i.f = srem i64 %3, 8                           ; 5 uses
  %.not36.i = icmp eq i64 %i.c, 0
  %i.g = sub nsw i64 128, %i.c
  %spec.select.i = select i1 %.not36.i, i64 64, i64 %i.g
  %.not37.i = icmp eq i64 %i.f, 0
  %i.h = sub nsw i64 128, %i.f
  %i.i = select i1 %.not37.i, i64 64, i64 %i.h
  %i.j = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.i)
  %i.k = or i64 %i.f, %i.c
  %brmerge.not.i = icmp eq i64 %i.k, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, %bb.a
  %.sroa.9.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.9.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 6 uses
  %.sroa.17.0 = phi i64 [ %4, %bb.a ], [ %.sroa.17.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.07 = phi i64 [ 0, %bb.a ], [ %i.ay, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.17.0, 0
  br i1 %.not.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %.sroa.17.0, %i.j
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated31.i = tail call i64 @llvm.smin.i64(i64 %.sroa.17.0, i64 64) ; 3 uses
  %i.m = trunc i64 %.sroa.speculated31.i to i16
  %sext.i = shl i64 %.sroa.speculated31.i, 48
  %i.n = ashr exact i64 %sext.i, 48               ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.p = zext i16 %spec.select20.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %.016.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.p, %._crit_edge.i.loopexit ]
  %i.q = sdiv i16 %i.m, 8
  %i.r = sext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %.sroa.9.0, i64 %i.r
  %i.u = sub nsw i64 %.sroa.17.0, %i.n
  %i.v = and i64 %.sroa.speculated31.i, 65535
  %i.w = icmp eq i64 %i.v, 0
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01540.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %.01639.i = phi i16 [ %spec.select20.i, %.lr.ph.i ], [ 0, %bb.d ]
  %i.x = add nsw i64 %.01540.i, %i.c              ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7
  %i.ab = trunc i64 %i.x to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = lshr i8 %i.aa, %i.ac
  %i.ae = add nsw i64 %.01540.i, %i.f             ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = lshr i8 %i.ah, %i.aj
  %i.al = and i8 %i.ad, 1
  %i.am = and i8 %i.al, %i.ak
  %i.an = zext nneg i8 %i.am to i16
  %spec.select20.i = add i16 %.01639.i, %i.an     ; 2 uses
  %i.ao = add nuw nsw i64 %.01540.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !20

bb.e:                                             ; preds = %bb.c
  %.0.copyload.i.i.i = load i64, ptr %.sroa.0.0, align 1 ; 2 uses
  br i1 %brmerge.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i22.i = load i64, ptr %.sroa.9.0, align 1
  %i.ap = and i64 %.0.copyload.i.i22.i, %.0.copyload.i.i.i
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.0.copyload.i.i24.i = load i64, ptr %i.aq, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i24.i, i64 %.0.copyload.i.i.i, i64 %i.c)
  %.0.copyload.i.i25.i = load i64, ptr %.sroa.9.0, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %.0.copyload.i.i26.i = load i64, ptr %i.ar, align 1
  %.0.i27.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i26.i, i64 %.0.copyload.i.i25.i, i64 %i.f)
  %i.as = and i64 %.0.i27.i, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.as, %bb.g ], [ %i.ap, %bb.f ]
  %i.at = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.aw = add nsw i64 %.sroa.17.0, -64
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit: ; preds = %._crit_edge.i, %bb.h
end_hunk_0
