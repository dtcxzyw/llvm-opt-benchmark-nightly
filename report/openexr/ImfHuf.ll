Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfHuf?download=true
inline.NumInlined: 142
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Imf_3_4::FastHufDecoder" = type { i32, i32, i8, i8, ptr, [59 x i64], [59 x i64], [4096 x i32], [4096 x i8], i64 }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [72 x i8] c"Error in Huffman-encoded data (decoded data are shorter than expected).\00", align 1
@_ZTIN7Iex_3_48InputExcE = external constant ptr
@.str.1 = private unnamed_addr constant [57 x i8] c"Error in Huffman-encoded data (invalid code table size).\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Error in Huffman-encoded data (unexpected end of code table data).\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"Error in Huffman-encoded data (code table is longer than expected).\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Error in header for Huffman-encoded data (invalid number of bits).\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Error in Huffman-encoded data (invalid code table entry).\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Error in Huffman-encoded data (invalid code).\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"Error in Huffman-encoded data (decoded data are longer than expected).\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7Imf_3_411hufCompressEPKtiPc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [59 x i64], align 16              ; 10 uses
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(524296) ptr @_Znam(i64 noundef 524296) #11 ; 21 uses
  %i.d = icmp sgt i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.c, i8 0, i64 524296, i1 false)
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.e = icmp ult i32 %1, 4
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !11
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !11
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !11
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !13
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !19

_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit.loopexit.unr-lcssa ]
  %lcmp.mod186 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !11
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !13
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit, label %.lr.ph.i.epil, !llvm.loop !20

_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %i.am = invoke noalias noundef nonnull dereferenceable(262148) ptr @_Znam(i64 noundef 262148) #11
          to label %.noexc unwind label %bb.as    ; 9 uses

.noexc:                                           ; preds = %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262148) %i.am, i8 0, i64 262148, i1 false)
  %i.an = invoke noalias noundef nonnull dereferenceable(524296) ptr @_Znam(i64 noundef 524296) #11
          to label %_ZN7Imf_3_49AutoArrayIPmLi65537EEC2Ev.exit.i unwind label %bb.d ; 42 uses

_ZN7Imf_3_49AutoArrayIPmLi65537EEC2Ev.exit.i:     ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.an, i8 0, i64 524296, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN7Imf_3_49AutoArrayIPmLi65537EEC2Ev.exit.i
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %bb.c ], [ 0, %_ZN7Imf_3_49AutoArrayIPmLi65537EEC2Ev.exit.i ] ; 7 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i28
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.ap, 0
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1
  br i1 %.not.i, label %bb.c, label %.lr.ph.i30.preheader, !llvm.loop !21

.lr.ph.i30.preheader:                             ; preds = %bb.c
  %i.aq = sub nsw i64 65537, %indvars.iv.i28      ; 3 uses
  %xtraiter188 = and i64 %i.aq, 1
  %i.ar = icmp eq i64 %indvars.iv.i28, 65536
  br i1 %i.ar, label %.lr.ph.i30.epil.preheader, label %.lr.ph.i30.preheader.new

.lr.ph.i30.preheader.new:                         ; preds = %.lr.ph.i30.preheader
  %unroll_iter194 = and i64 %i.aq, -2
  br label %.lr.ph.i30

bb.d:                                             ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7Imf_3_49AutoArrayIiLi65537EED2Ev.exit101.i

._crit_edge.i.unr-lcssa:                          ; preds = %bb.n
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %._crit_edge.i, label %.lr.ph.i30.epil.preheader

.lr.ph.i30.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i30.preheader
  %.1.epil.init = phi i32 [ 0, %.lr.ph.i30.preheader ], [ %.2.1, %._crit_edge.i.unr-lcssa ]
  %indvars.iv141.i.epil.init = phi i64 [ %indvars.iv.i28, %.lr.ph.i30.preheader ], [ %indvars.iv.next142.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.052133.i.epil.init = phi i32 [ 0, %.lr.ph.i30.preheader ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod193 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv141.i.epil.init
  %i.au = trunc nuw nsw i64 %indvars.iv141.i.epil.init to i32 ; 2 uses
  store i32 %i.au, ptr %i.at, align 4, !tbaa !16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv141.i.epil.init ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %.not65.i.epil = icmp eq i64 %i.aw, 0
  br i1 %.not65.i.epil, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i30.epil.preheader
  %i.ax = sext i32 %.052133.i.epil.init to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !35
  %i.az = add nsw i32 %.052133.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i30.epil.preheader, %bb.e, %._crit_edge.i.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.i.unr-lcssa ], [ %.1.epil.init, %.lr.ph.i30.epil.preheader ], [ %i.au, %bb.e ] ; 3 uses
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.052133.i.epil.init, %.lr.ph.i30.epil.preheader ], [ %i.az, %bb.e ] ; 5 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.i28 to i32 ; 3 uses
  %i.bb = add nsw i32 %.2.lcssa, 1                ; 3 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bc ; 4 uses
  store i64 1, ptr %i.bd, align 8, !tbaa !13
  %i.be = sext i32 %.1.i.lcssa to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !35
  %i.bg = add nuw i32 %.1.i.lcssa, 1              ; 2 uses
  %i.bh = icmp slt i32 %.1.i.lcssa, 1
  br i1 %i.bh, label %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.bi = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bj = add nsw i64 %i.bi, -2                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 3 uses
  %3 = lshr i32 %.1.i.lcssa, 1
  %4 = zext nneg i32 %3 to i64                    ; 2 uses
  %i.bl = and i64 %i.bi, 1
  %i.bm = icmp eq i64 %i.bl, 0
  %5 = or disjoint i64 %i.bj, 1                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %5
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bk
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, %bb.f
  %.014.i.i.i = phi i64 [ %i.bk, %bb.f ], [ %i.cx, %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.014.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35 ; 3 uses
  %i.br = icmp slt i64 %.014.i.i.i, %4
  br i1 %i.br, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %bb.g ] ; 2 uses
  %i.bs = shl nuw nsw i64 %.030.i.i.i.i, 1        ; 3 uses
  %i.bt = add nuw nsw i64 %i.bs, 2                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !35 ; 2 uses
  %.val29.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 2 uses
  %i.bx = load i64, ptr %.val.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.by = load i64, ptr %.val29.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.bz = icmp ugt i64 %i.bx, %i.by
  %i.ca = icmp eq i64 %i.bx, %i.by
  %i.cb = icmp ugt ptr %.val.i.i.i.i, %.val29.i.i.i.i
  %i.cc = and i1 %i.cb, %i.ca
  %i.cd = or i1 %i.bz, %i.cc
  %i.ce = or disjoint i64 %i.bs, 1
  %spec.select.i.i.i.i = select i1 %i.cd, i64 %i.ce, i64 %i.bt ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i.i
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !35
  %i.ci = icmp samesign ult i64 %spec.select.i.i.i.i, %4
  br i1 %i.ci, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !22

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bk
  %or.cond.i.i.i = select i1 %i.bm, i1 %i.cj, i1 false
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ck = load ptr, ptr %i.bn, align 8, !tbaa !35
  store ptr %i.ck, ptr %i.bo, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %5, %bb.h ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cl = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i
  %i.cm = load i64, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.0133.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i, %bb.k ] ; 3 uses
  %.04.in.i.i.i.i.i = add nsw i64 %.0133.i.i.i.i.i, -1
  %.048.i.i.i.i.i = lshr i64 %.04.in.i.i.i.i.i, 1 ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !35 ; 3 uses
  %i.co = load i64, ptr %.val.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.cp = icmp ugt i64 %i.co, %i.cm
  %i.cq = icmp eq i64 %i.co, %i.cm
  %i.cr = icmp ugt ptr %.val.i.i.i.i.i, %i.bq
  %i.cs = and i1 %i.cr, %i.cq
  %i.ct = or i1 %i.cp, %i.cs
  br i1 %i.ct, label %bb.k, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i.i
  store ptr %.val.i.i.i.i.i, ptr %i.cu, align 8, !tbaa !35
  %i.cv = icmp samesign ugt i64 %.048.i.i.i.i.i, %.014.i.i.i
  br i1 %i.cv, label %bb.j, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, !llvm.loop !23

_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.i ], [ %.0133.i.i.i.i.i, %bb.j ], [ %.048.i.i.i.i.i, %bb.k ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i.i
  store ptr %i.bq, ptr %i.cw, align 8, !tbaa !35
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.cx = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.g, !llvm.loop !24

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.i30.preheader.new
  %.1 = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.2.1, %bb.n ]
  %indvars.iv141.i = phi i64 [ %indvars.iv.i28, %.lr.ph.i30.preheader.new ], [ %indvars.iv.next142.i.1, %bb.n ] ; 5 uses
  %.052133.i = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.1.i.1, %bb.n ] ; 3 uses
  %niter195 = phi i64 [ 0, %.lr.ph.i30.preheader.new ], [ %niter195.next.1, %bb.n ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv141.i
  %i.cz = trunc nuw nsw i64 %indvars.iv141.i to i32 ; 2 uses
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !16
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv141.i ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !13
  %.not65.i = icmp eq i64 %i.db, 0
  br i1 %.not65.i, label %.lr.ph.i30.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i30
  %i.dc = sext i32 %.052133.i to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dc
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !35
  %i.de = add nsw i32 %.052133.i, 1
  br label %.lr.ph.i30.1

.lr.ph.i30.1:                                     ; preds = %bb.l, %.lr.ph.i30
  %.2 = phi i32 [ %.1, %.lr.ph.i30 ], [ %i.cz, %bb.l ]
  %.1.i = phi i32 [ %.052133.i, %.lr.ph.i30 ], [ %i.de, %bb.l ] ; 3 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next142.i
  %i.dg = trunc nuw nsw i64 %indvars.iv.next142.i to i32 ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !16
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next142.i ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !13
  %.not65.i.1 = icmp eq i64 %i.di, 0
  br i1 %.not65.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i30.1
  %i.dj = sext i32 %.1.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !35
  %i.dl = add nsw i32 %.1.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i30.1
  %.2.1 = phi i32 [ %.2, %.lr.ph.i30.1 ], [ %i.dg, %bb.m ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %.lr.ph.i30.1 ], [ %i.dl, %bb.m ] ; 3 uses
  %indvars.iv.next142.i.1 = add nuw nsw i64 %indvars.iv141.i, 2 ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i30, !llvm.loop !25

_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i: ; preds = %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, %._crit_edge.i
  %i.dm = invoke noalias noundef nonnull dereferenceable(524296) ptr @_Znam(i64 noundef 524296) #11
          to label %bb.o unwind label %_ZN7Imf_3_49AutoArrayIPmLi65537EED2Ev.exit100.i ; 10 uses

bb.o:                                             ; preds = %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i
  %i.dn = icmp sgt i32 %.1.i.lcssa, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.dm, i8 0, i64 524296, i1 false)
  br i1 %i.dn, label %.lr.ph138.i, label %._crit_edge139.i

.lr.ph138.i:                                      ; preds = %bb.o
  %i.do = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.dp = zext i32 %i.bg to i64
  br label %bb.p

.loopexit.i:                                      ; preds = %bb.ad
  %i.dq = trunc nuw i64 %indvars.iv144.i to i32
  %i.dr = icmp sgt i32 %i.dq, 2
  br i1 %i.dr, label %bb.p, label %._crit_edge139.i, !llvm.loop !26

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph138.i
  %indvars.iv144.i = phi i64 [ %i.dp, %.lr.ph138.i ], [ %i.fq, %.loopexit.i ] ; 5 uses
  %i.ds = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.do                    ; 2 uses
  %i.dv = lshr exact i64 %i.du, 3
  %i.dw = trunc i64 %i.dv to i32                  ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv144.i
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !35 ; 3 uses
  store ptr %i.ds, ptr %i.dy, align 8, !tbaa !35
  %.idx.i = shl nuw nsw i64 %indvars.iv144.i, 3
  %i.ea = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.eb = ashr exact i64 %i.ea, 3                 ; 3 uses
  %i.ec = add nsw i64 %i.eb, -1
  %i.ed = lshr i64 %i.ec, 1
  %i.ee = icmp sgt i64 %i.eb, 2
  br i1 %i.ee, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i66.i

.lr.ph.i.i.i75.i:                                 ; preds = %bb.p, %.lr.ph.i.i.i75.i
  %.030.i.i.i76.i = phi i64 [ %spec.select.i.i.i79.i, %.lr.ph.i.i.i75.i ], [ 0, %bb.p ] ; 2 uses
  %i.ef = shl nuw nsw i64 %.030.i.i.i76.i, 1      ; 3 uses
  %i.eg = add nuw nsw i64 %i.ef, 2                ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val.i.i.i77.i = load ptr, ptr %i.eh, align 8, !tbaa !35 ; 2 uses
  %.val29.i.i.i78.i = load ptr, ptr %i.ej, align 8, !tbaa !35 ; 2 uses
  %i.ek = load i64, ptr %.val.i.i.i77.i, align 8, !tbaa !13 ; 2 uses
  %i.el = load i64, ptr %.val29.i.i.i78.i, align 8, !tbaa !13 ; 2 uses
  %i.em = icmp ugt i64 %i.ek, %i.el
  %i.en = icmp eq i64 %i.ek, %i.el
  %i.eo = icmp ugt ptr %.val.i.i.i77.i, %.val29.i.i.i78.i
  %i.ep = and i1 %i.eo, %i.en
  %i.eq = or i1 %i.em, %i.ep
  %i.er = or disjoint i64 %i.ef, 1
  %spec.select.i.i.i79.i = select i1 %i.eq, i64 %i.er, i64 %i.eg ; 4 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i79.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i76.i
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !35
  %i.ev = icmp samesign ult i64 %spec.select.i.i.i79.i, %i.ed
  br i1 %i.ev, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i66.i, !llvm.loop !22

._crit_edge.i.i.i66.i:                            ; preds = %.lr.ph.i.i.i75.i, %bb.p
  %.0.lcssa.i.i.i67.i = phi i64 [ 0, %bb.p ], [ %spec.select.i.i.i79.i, %.lr.ph.i.i.i75.i ] ; 5 uses
  %i.ew = and i64 %i.ea, 8
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i66.i
  %i.ey = add nsw i64 %i.eb, -2
  %i.ez = ashr exact i64 %i.ey, 1
  %i.fa = icmp eq i64 %.0.lcssa.i.i.i67.i, %i.ez
  br i1 %i.fa, label %.thread.i.i.i, label %bb.r

.thread.i.i.i:                                    ; preds = %bb.q
  %i.fb = shl nuw nsw i64 %.0.lcssa.i.i.i67.i, 1
  %i.fc = or disjoint i64 %i.fb, 1                ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !35
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.lcssa.i.i.i67.i
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !35
  br label %.lr.ph.i.i.i.i69.i

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i66.i
  %.not.i.i68.i = icmp eq i64 %.0.lcssa.i.i.i67.i, 0
  br i1 %.not.i.i68.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i69.i

.lr.ph.i.i.i.i69.i:                               ; preds = %bb.r, %.thread.i.i.i
  %.128.i2.i.i.i = phi i64 [ %i.fc, %.thread.i.i.i ], [ %.0.lcssa.i.i.i67.i, %bb.r ]
  %i.fg = load i64, ptr %i.dz, align 8, !tbaa !13 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i69.i
  %.0133.i.i.i.i70.i = phi i64 [ %.128.i2.i.i.i, %.lr.ph.i.i.i.i69.i ], [ %.048.i.i.i.i72.i, %bb.t ] ; 3 uses
  %.04.in.i.i.i.i71.i = add nsw i64 %.0133.i.i.i.i70.i, -1
  %.048.i.i.i.i72.i = lshr i64 %.04.in.i.i.i.i71.i, 1 ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i72.i
  %.val.i.i.i.i73.i = load ptr, ptr %i.fh, align 8, !tbaa !35 ; 3 uses
  %i.fi = load i64, ptr %.val.i.i.i.i73.i, align 8, !tbaa !13 ; 2 uses
  %i.fj = icmp ugt i64 %i.fi, %i.fg
  %i.fk = icmp eq i64 %i.fi, %i.fg
  %i.fl = icmp ugt ptr %.val.i.i.i.i73.i, %i.dz
  %i.fm = and i1 %i.fl, %i.fk
  %i.fn = or i1 %i.fj, %i.fm
  br i1 %i.fn, label %bb.t, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i70.i
  store ptr %.val.i.i.i.i73.i, ptr %i.fo, align 8, !tbaa !35
  %.not3.i.i.i = icmp eq i64 %.048.i.i.i.i72.i, 0
  br i1 %.not3.i.i.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i, label %bb.s, !llvm.loop !23

_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.013.lcssa.i.i.i.i74.i = phi i64 [ 0, %bb.r ], [ %.0133.i.i.i.i70.i, %bb.s ], [ 0, %bb.t ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i74.i
  store ptr %i.dz, ptr %i.fp, align 8, !tbaa !35
  %i.fq = add nsw i64 %indvars.iv144.i, -1        ; 4 uses
end_hunk_0
