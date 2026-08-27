Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfHuf?download=true
inline.NumInlined: 142
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0

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
  %i.g = load i16, ptr %i.f, align 2, !tbaa !8
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !8
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !8
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !8
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

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
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !8
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !10
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7Imf_3_412_GLOBAL__N_116countFrequenciesEPmPKti.exit, label %.lr.ph.i.epil, !llvm.loop !14

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
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.ap, 0
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1
  br i1 %.not.i, label %bb.c, label %.lr.ph.i30.preheader, !llvm.loop !16

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
  store i32 %i.au, ptr %i.at, align 4, !tbaa !17
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv141.i.epil.init ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10
  %.not65.i.epil = icmp eq i64 %i.aw, 0
  br i1 %.not65.i.epil, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i30.epil.preheader
  %i.ax = sext i32 %.052133.i.epil.init to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !18
  %i.az = add nsw i32 %.052133.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i30.epil.preheader, %bb.e, %._crit_edge.i.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.i.unr-lcssa ], [ %.1.epil.init, %.lr.ph.i30.epil.preheader ], [ %i.au, %bb.e ] ; 3 uses
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.052133.i.epil.init, %.lr.ph.i30.epil.preheader ], [ %i.az, %bb.e ] ; 5 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.i28 to i32 ; 3 uses
  %i.bb = add nsw i32 %.2.lcssa, 1                ; 3 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bc ; 4 uses
  store i64 1, ptr %i.bd, align 8, !tbaa !10
  %i.be = sext i32 %.1.i.lcssa to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !18
  %i.bg = add nuw i32 %.1.i.lcssa, 1              ; 2 uses
  %i.bh = icmp slt i32 %.1.i.lcssa, 1
  br i1 %i.bh, label %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.bi = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bj = add nsw i64 %i.bi, -2                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 3 uses
  %i.bl = lshr i32 %.1.i.lcssa, 1
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = and i64 %i.bi, 1
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bk
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, %bb.f
  %.014.i.i.i = phi i64 [ %i.bk, %bb.f ], [ %i.da, %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.014.i.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !18 ; 3 uses
  %i.bu = icmp slt i64 %.014.i.i.i, %i.bm
  br i1 %i.bu, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %bb.g ] ; 2 uses
  %i.bv = shl nuw nsw i64 %.030.i.i.i.i, 1        ; 3 uses
  %i.bw = add nuw i64 %i.bv, 2                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %.val29.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.ca = load i64, ptr %.val.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cb = load i64, ptr %.val29.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cc = icmp ugt i64 %i.ca, %i.cb
  %i.cd = icmp eq i64 %i.ca, %i.cb
  %i.ce = icmp ugt ptr %.val.i.i.i.i, %.val29.i.i.i.i
  %i.cf = and i1 %i.ce, %i.cd
  %i.cg = or i1 %i.cc, %i.cf
  %i.ch = or disjoint i64 %i.bv, 1
  %spec.select.i.i.i.i = select i1 %i.cg, i64 %i.ch, i64 %i.bw ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i.i
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !18
  %i.cl = icmp slt i64 %spec.select.i.i.i.i, %i.bm
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !21

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bk
  %or.cond.i.i.i = select i1 %i.bo, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !18
  store ptr %i.cn, ptr %i.br, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.bp, %bb.h ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.co = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.co, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !10 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.0133.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i, %bb.k ] ; 3 uses
  %.04.in.i.i.i.i.i = add nsw i64 %.0133.i.i.i.i.i, -1
  %.048.i.i.i.i.i = lshr i64 %.04.in.i.i.i.i.i, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !18 ; 3 uses
  %i.cr = load i64, ptr %.val.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, %i.cp
  %i.ct = icmp eq i64 %i.cr, %i.cp
  %i.cu = icmp ugt ptr %.val.i.i.i.i.i, %i.bt
  %i.cv = and i1 %i.cu, %i.ct
  %i.cw = or i1 %i.cs, %i.cv
  br i1 %i.cw, label %bb.k, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i.i
  store ptr %.val.i.i.i.i.i, ptr %i.cx, align 8, !tbaa !18
  %i.cy = icmp samesign ugt i64 %.048.i.i.i.i.i, %.014.i.i.i
  br i1 %i.cy, label %bb.j, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, !llvm.loop !22

_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.i ], [ %.0133.i.i.i.i.i, %bb.j ], [ %.048.i.i.i.i.i, %bb.k ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i.i
  store ptr %i.bt, ptr %i.cz, align 8, !tbaa !18
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.da = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.g, !llvm.loop !23

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.i30.preheader.new
  %.1 = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.2.1, %bb.n ]
  %indvars.iv141.i = phi i64 [ %indvars.iv.i28, %.lr.ph.i30.preheader.new ], [ %indvars.iv.next142.i.1, %bb.n ] ; 5 uses
  %.052133.i = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.1.i.1, %bb.n ] ; 3 uses
  %niter195 = phi i64 [ 0, %.lr.ph.i30.preheader.new ], [ %niter195.next.1, %bb.n ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv141.i
  %i.dc = trunc nuw nsw i64 %indvars.iv141.i to i32 ; 2 uses
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !17
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv141.i ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %.not65.i = icmp eq i64 %i.de, 0
  br i1 %.not65.i, label %.lr.ph.i30.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i30
  %i.df = sext i32 %.052133.i to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.df
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !18
  %i.dh = add nsw i32 %.052133.i, 1
  br label %.lr.ph.i30.1

.lr.ph.i30.1:                                     ; preds = %bb.l, %.lr.ph.i30
  %.2 = phi i32 [ %.1, %.lr.ph.i30 ], [ %i.dc, %bb.l ]
  %.1.i = phi i32 [ %.052133.i, %.lr.ph.i30 ], [ %i.dh, %bb.l ] ; 3 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next142.i
  %i.dj = trunc nuw nsw i64 %indvars.iv.next142.i to i32 ; 2 uses
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next142.i ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !10
  %.not65.i.1 = icmp eq i64 %i.dl, 0
  br i1 %.not65.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i30.1
  %i.dm = sext i32 %.1.i to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dm
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !18
  %i.do = add nsw i32 %.1.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i30.1
  %.2.1 = phi i32 [ %.2, %.lr.ph.i30.1 ], [ %i.dj, %bb.m ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %.lr.ph.i30.1 ], [ %i.do, %bb.m ] ; 3 uses
  %indvars.iv.next142.i.1 = add nuw nsw i64 %indvars.iv141.i, 2 ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i30, !llvm.loop !24

_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i: ; preds = %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, %._crit_edge.i
  %i.dp = invoke noalias noundef nonnull dereferenceable(524296) ptr @_Znam(i64 noundef 524296) #11
          to label %bb.o unwind label %_ZN7Imf_3_49AutoArrayIPmLi65537EED2Ev.exit100.i ; 10 uses

bb.o:                                             ; preds = %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i
  %i.dq = icmp sgt i32 %.1.i.lcssa, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.dp, i8 0, i64 524296, i1 false)
  br i1 %i.dq, label %.lr.ph138.i, label %._crit_edge139.i

.lr.ph138.i:                                      ; preds = %bb.o
  %i.dr = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.ds = zext i32 %i.bg to i64
  br label %bb.p

.loopexit.i:                                      ; preds = %bb.ad
  %i.dt = trunc nuw i64 %indvars.iv144.i to i32
  %i.du = icmp sgt i32 %i.dt, 2
  br i1 %i.du, label %bb.p, label %._crit_edge139.i, !llvm.loop !25

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph138.i
  %indvars.iv144.i = phi i64 [ %i.ds, %.lr.ph138.i ], [ %i.ft, %.loopexit.i ] ; 5 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.dr                    ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 3
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv144.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !18 ; 3 uses
  store ptr %i.dv, ptr %i.eb, align 8, !tbaa !18
  %.idx.i = shl nuw nsw i64 %indvars.iv144.i, 3
  %i.ed = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.ee = ashr exact i64 %i.ed, 3                 ; 3 uses
  %i.ef = add nsw i64 %i.ee, -1
  %i.eg = lshr i64 %i.ef, 1
  %i.eh = icmp sgt i64 %i.ee, 2
  br i1 %i.eh, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i66.i

.lr.ph.i.i.i75.i:                                 ; preds = %bb.p, %.lr.ph.i.i.i75.i
  %.030.i.i.i76.i = phi i64 [ %spec.select.i.i.i79.i, %.lr.ph.i.i.i75.i ], [ 0, %bb.p ] ; 2 uses
  %i.ei = shl nuw nsw i64 %.030.i.i.i76.i, 1      ; 3 uses
  %i.ej = add nuw i64 %i.ei, 2                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.val.i.i.i77.i = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 2 uses
  %.val29.i.i.i78.i = load ptr, ptr %i.em, align 8, !tbaa !18 ; 2 uses
  %i.en = load i64, ptr %.val.i.i.i77.i, align 8, !tbaa !10 ; 2 uses
  %i.eo = load i64, ptr %.val29.i.i.i78.i, align 8, !tbaa !10 ; 2 uses
  %i.ep = icmp ugt i64 %i.en, %i.eo
  %i.eq = icmp eq i64 %i.en, %i.eo
  %i.er = icmp ugt ptr %.val.i.i.i77.i, %.val29.i.i.i78.i
  %i.es = and i1 %i.er, %i.eq
  %i.et = or i1 %i.ep, %i.es
  %i.eu = or disjoint i64 %i.ei, 1
  %spec.select.i.i.i79.i = select i1 %i.et, i64 %i.eu, i64 %i.ej ; 4 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i79.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i76.i
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !18
  %i.ey = icmp slt i64 %spec.select.i.i.i79.i, %i.eg
  br i1 %i.ey, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i66.i, !llvm.loop !21

._crit_edge.i.i.i66.i:                            ; preds = %.lr.ph.i.i.i75.i, %bb.p
  %.0.lcssa.i.i.i67.i = phi i64 [ 0, %bb.p ], [ %spec.select.i.i.i79.i, %.lr.ph.i.i.i75.i ] ; 5 uses
  %i.ez = and i64 %i.ed, 8
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i66.i
  %i.fb = add nsw i64 %i.ee, -2
  %i.fc = ashr exact i64 %i.fb, 1
  %i.fd = icmp eq i64 %.0.lcssa.i.i.i67.i, %i.fc
  br i1 %i.fd, label %.thread.i.i.i, label %bb.r

.thread.i.i.i:                                    ; preds = %bb.q
  %i.fe = shl nuw nsw i64 %.0.lcssa.i.i.i67.i, 1
  %i.ff = or disjoint i64 %i.fe, 1                ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.lcssa.i.i.i67.i
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !18
  br label %.lr.ph.i.i.i.i69.i

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i66.i
  %.not.i.i68.i = icmp eq i64 %.0.lcssa.i.i.i67.i, 0
  br i1 %.not.i.i68.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i69.i

.lr.ph.i.i.i.i69.i:                               ; preds = %bb.r, %.thread.i.i.i
  %.128.i2.i.i.i = phi i64 [ %i.ff, %.thread.i.i.i ], [ %.0.lcssa.i.i.i67.i, %bb.r ]
  %i.fj = load i64, ptr %i.ec, align 8, !tbaa !10 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i69.i
  %.0133.i.i.i.i70.i = phi i64 [ %.128.i2.i.i.i, %.lr.ph.i.i.i.i69.i ], [ %.048.i.i.i.i72.i, %bb.t ] ; 3 uses
  %.04.in.i.i.i.i71.i = add nsw i64 %.0133.i.i.i.i70.i, -1
  %.048.i.i.i.i72.i = lshr i64 %.04.in.i.i.i.i71.i, 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i72.i
  %.val.i.i.i.i73.i = load ptr, ptr %i.fk, align 8, !tbaa !18 ; 3 uses
  %i.fl = load i64, ptr %.val.i.i.i.i73.i, align 8, !tbaa !10 ; 2 uses
  %i.fm = icmp ugt i64 %i.fl, %i.fj
  %i.fn = icmp eq i64 %i.fl, %i.fj
  %i.fo = icmp ugt ptr %.val.i.i.i.i73.i, %i.ec
  %i.fp = and i1 %i.fo, %i.fn
  %i.fq = or i1 %i.fm, %i.fp
  br i1 %i.fq, label %bb.t, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i70.i
  store ptr %.val.i.i.i.i73.i, ptr %i.fr, align 8, !tbaa !18
  %.not3.i.i.i = icmp eq i64 %.048.i.i.i.i72.i, 0
  br i1 %.not3.i.i.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i, label %bb.s, !llvm.loop !22

_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.013.lcssa.i.i.i.i74.i = phi i64 [ 0, %bb.r ], [ %.0133.i.i.i.i70.i, %bb.s ], [ 0, %bb.t ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i74.i
  store ptr %i.ec, ptr %i.fs, align 8, !tbaa !18
  %i.ft = add nsw i64 %indvars.iv144.i, -1        ; 4 uses
  %i.fu = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.fv, %i.dr                    ; 2 uses
  %i.fx = lshr exact i64 %i.fw, 3
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ft ; 2 uses
  %.wide146.i = icmp ugt i64 %i.ft, 1             ; 2 uses
  br i1 %.wide146.i, label %bb.u, label %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i

bb.u:                                             ; preds = %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !18 ; 3 uses
  store ptr %i.fu, ptr %i.ga, align 8, !tbaa !18
  %.idx131.i = shl nuw nsw i64 %i.ft, 3
  %i.gc = add nsw i64 %.idx131.i, -8              ; 2 uses
  %i.gd = ashr exact i64 %i.gc, 3                 ; 3 uses
  %i.ge = add nsw i64 %i.gd, -1
  %i.gf = lshr i64 %i.ge, 1
  %i.gg = icmp sgt i64 %i.gd, 2
  br i1 %i.gg, label %.lr.ph.i.i.i93.i, label %._crit_edge.i.i.i80.i

.lr.ph.i.i.i93.i:                                 ; preds = %bb.u, %.lr.ph.i.i.i93.i
  %.030.i.i.i94.i = phi i64 [ %spec.select.i.i.i97.i, %.lr.ph.i.i.i93.i ], [ 0, %bb.u ] ; 2 uses
  %i.gh = shl nuw nsw i64 %.030.i.i.i94.i, 1      ; 3 uses
  %i.gi = add nuw i64 %i.gh, 2                    ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.val.i.i.i95.i = load ptr, ptr %i.gj, align 8, !tbaa !18 ; 2 uses
  %.val29.i.i.i96.i = load ptr, ptr %i.gl, align 8, !tbaa !18 ; 2 uses
  %i.gm = load i64, ptr %.val.i.i.i95.i, align 8, !tbaa !10 ; 2 uses
  %i.gn = load i64, ptr %.val29.i.i.i96.i, align 8, !tbaa !10 ; 2 uses
  %i.go = icmp ugt i64 %i.gm, %i.gn
  %i.gp = icmp eq i64 %i.gm, %i.gn
  %i.gq = icmp ugt ptr %.val.i.i.i95.i, %.val29.i.i.i96.i
  %i.gr = and i1 %i.gq, %i.gp
  %i.gs = or i1 %i.go, %i.gr
  %i.gt = or disjoint i64 %i.gh, 1
  %spec.select.i.i.i97.i = select i1 %i.gs, i64 %i.gt, i64 %i.gi ; 4 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i97.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i94.i
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !18
  %i.gx = icmp slt i64 %spec.select.i.i.i97.i, %i.gf
  br i1 %i.gx, label %.lr.ph.i.i.i93.i, label %._crit_edge.i.i.i80.i, !llvm.loop !21

._crit_edge.i.i.i80.i:                            ; preds = %.lr.ph.i.i.i93.i, %bb.u
  %.0.lcssa.i.i.i81.i = phi i64 [ 0, %bb.u ], [ %spec.select.i.i.i97.i, %.lr.ph.i.i.i93.i ] ; 5 uses
  %i.gy = and i64 %i.gc, 8
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i80.i
  %i.ha = add nsw i64 %i.gd, -2
  %i.hb = ashr exact i64 %i.ha, 1
  %i.hc = icmp eq i64 %.0.lcssa.i.i.i81.i, %i.hb
  br i1 %i.hc, label %.thread.i.i92.i, label %bb.w

.thread.i.i92.i:                                  ; preds = %bb.v
  %i.hd = shl nuw nsw i64 %.0.lcssa.i.i.i81.i, 1
  %i.he = or disjoint i64 %i.hd, 1                ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.lcssa.i.i.i81.i
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !18
  br label %.lr.ph.i.i.i.i83.i

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i80.i
  %.not.i.i82.i = icmp eq i64 %.0.lcssa.i.i.i81.i, 0
  br i1 %.not.i.i82.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i, label %.lr.ph.i.i.i.i83.i

.lr.ph.i.i.i.i83.i:                               ; preds = %bb.w, %.thread.i.i92.i
  %.128.i2.i.i84.i = phi i64 [ %i.he, %.thread.i.i92.i ], [ %.0.lcssa.i.i.i81.i, %bb.w ]
  %i.hi = load i64, ptr %i.gb, align 8, !tbaa !10 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i83.i
  %.0133.i.i.i.i85.i = phi i64 [ %.128.i2.i.i84.i, %.lr.ph.i.i.i.i83.i ], [ %.048.i.i.i.i87.i, %bb.y ] ; 3 uses
  %.04.in.i.i.i.i86.i = add nsw i64 %.0133.i.i.i.i85.i, -1
  %.048.i.i.i.i87.i = lshr i64 %.04.in.i.i.i.i86.i, 1 ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i87.i
  %.val.i.i.i.i88.i = load ptr, ptr %i.hj, align 8, !tbaa !18 ; 3 uses
  %i.hk = load i64, ptr %.val.i.i.i.i88.i, align 8, !tbaa !10 ; 2 uses
  %i.hl = icmp ugt i64 %i.hk, %i.hi
  %i.hm = icmp eq i64 %i.hk, %i.hi
  %i.hn = icmp ugt ptr %.val.i.i.i.i88.i, %i.gb
  %i.ho = and i1 %i.hn, %i.hm
  %i.hp = or i1 %i.hl, %i.ho
  br i1 %i.hp, label %bb.y, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i

bb.y:                                             ; preds = %bb.x
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i85.i
  store ptr %.val.i.i.i.i88.i, ptr %i.hq, align 8, !tbaa !18
  %.not3.i.i91.i = icmp eq i64 %.048.i.i.i.i87.i, 0
  br i1 %.not3.i.i91.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i, label %bb.x, !llvm.loop !22

_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i: ; preds = %bb.y, %bb.x, %bb.w
  %.013.lcssa.i.i.i.i90.i = phi i64 [ 0, %bb.w ], [ %.0133.i.i.i.i85.i, %bb.x ], [ 0, %bb.y ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i90.i
  store ptr %i.gb, ptr %i.hr, align 8, !tbaa !18
  br label %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i

_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i: ; preds = %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i, %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i
  %sext.i = shl i64 %i.dx, 29
  %i.hs = ashr i64 %sext.i, 32
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !10
  %sext60.i = shl i64 %i.fw, 29
  %i.hv = ashr i64 %sext60.i, 32
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hv ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !10
  %i.hy = add i64 %i.hx, %i.hu
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !10
  %i.hz = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !18 ; 3 uses
  %i.ib = add nsw i64 %indvars.iv144.i, -2        ; 2 uses
  br i1 %.wide146.i, label %.lr.ph.i.i.i, label %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !10 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %.0133.i.i.i = phi i64 [ %i.ib, %.lr.ph.i.i.i ], [ %.048.i.i.i, %bb.aa ] ; 3 uses
  %.04.in.i.i.i = add nsw i64 %.0133.i.i.i, -1
  %.048.i.i.i = lshr i64 %.04.in.i.i.i, 1         ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i
  %.val.i.i.i = load ptr, ptr %i.id, align 8, !tbaa !18 ; 3 uses
  %i.ie = load i64, ptr %.val.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.if = icmp ugt i64 %i.ie, %i.ic
  %i.ig = icmp eq i64 %i.ie, %i.ic
  %i.ih = icmp ugt ptr %.val.i.i.i, %i.ia
  %i.ii = and i1 %i.ih, %i.ig
  %i.ij = or i1 %i.if, %i.ii
  br i1 %i.ij, label %bb.aa, label %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i
  store ptr %.val.i.i.i, ptr %i.ik, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.048.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.z, !llvm.loop !22

_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i: ; preds = %bb.aa, %bb.z, %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i
  %.013.lcssa.i.i.i = phi i64 [ %i.ib, %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i ], [ %.0133.i.i.i, %bb.z ], [ 0, %bb.aa ]
  %i.il = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i
  store ptr %i.ia, ptr %i.il, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i
  %.050.i = phi i32 [ %i.fy, %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i ], [ %i.ir, %bb.ab ] ; 2 uses
  %i.im = sext i32 %.050.i to i64                 ; 3 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !10
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !10
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.im
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !17 ; 2 uses
  %i.is = icmp eq i32 %i.ir, %.050.i
  br i1 %i.is, label %bb.ac, label %bb.ab, !llvm.loop !26

_ZN7Imf_3_49AutoArrayIPmLi65537EED2Ev.exit100.i:  ; preds = %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #12
  br label %_ZN7Imf_3_49AutoArrayIiLi65537EED2Ev.exit101.i

bb.ac:                                            ; preds = %bb.ab
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.im
  store i32 %i.dz, ptr %i.iu, align 4, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.0.i = phi i32 [ %i.dz, %bb.ac ], [ %i.ja, %bb.ad ] ; 2 uses
  %i.iv = sext i32 %.0.i to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.iv ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !10
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !10
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.iv
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !17 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, %.0.i
  br i1 %i.jb, label %.loopexit.i, label %bb.ad, !llvm.loop !27

._crit_edge139.i:                                 ; preds = %.loopexit.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.a, i8 0, i64 472, i1 false), !tbaa !10
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge139.i
  %indvars.iv.i.i = phi i64 [ 0, %._crit_edge139.i ], [ %indvars.iv.next.i.i.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !10
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jd ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !10
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !10
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 65536
  br i1 %exitcond.not.i.i, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !10
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jj ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !10
  %i.jm = add i64 %i.jl, 1
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !10
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !10
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jp ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !10
  %i.js = add i64 %i.jr, 1
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !10
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !10
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jv ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !10
  %i.jy = add i64 %i.jx, 1
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !10
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_413hufUncompressEPKciPti:bb.a
bb.ax:                                            ; preds = %bb.ap
  br i1 %.not69.i, label %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit, label %.lr.ph65.preheader.i

.lr.ph65.preheader.i:                             ; preds = %bb.ax
  %i.fg = zext nneg i32 %i.f to i64
  %i.fh = add nuw nsw i32 %i.h, 1
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.loopexit.i, %.lr.ph65.preheader.i
  %indvars.iv68.i = phi i64 [ %i.fg, %.lr.ph65.preheader.i ], [ %indvars.iv.next69.i, %.loopexit.i ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv68.i
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !10 ; 2 uses
  %i.fk = lshr i64 %i.fj, 6                       ; 3 uses
  %i.fl = and i64 %i.fj, 63                       ; 6 uses
  %i.fm = trunc nuw nsw i64 %i.fl to i32          ; 2 uses
  %i.fn = lshr i64 %i.fk, %i.fl
  %.not49.i = icmp eq i64 %i.fn, 0
  br i1 %.not49.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph65.i
  %i.fo = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fo, ptr noundef nonnull @.str.5)
          to label %.invoke215 unwind label %bb.az

common.resume.i80:                                ; preds = %bb.bn, %bb.bd, %bb.az
  %.sink.i81 = phi ptr [ %i.id, %bb.bn ], [ %i.fw, %bb.bd ], [ %i.fo, %bb.az ]
  %common.resume.op.i82 = phi { ptr, i32 } [ %i.ie, %bb.bn ], [ %i.fx, %bb.bd ], [ %i.fp, %bb.az ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink.i81) #13
  br label %.body78

bb.az:                                            ; preds = %bb.ay
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i80

bb.ba:                                            ; preds = %.lr.ph65.i
  %i.fq = icmp samesign ugt i64 %i.fl, 14
  br i1 %i.fq, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fr = add nuw nsw i64 %i.fl, 4294967282
  %i.fs = and i64 %i.fr, 4294967295
  %i.ft = lshr i64 %i.fk, %i.fs
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ft ; 5 uses
  %i.fv = load i32, ptr %i.fu, align 8            ; 2 uses
  %.mask55.i = and i32 %i.fv, 255
  %.not54.i = icmp eq i32 %.mask55.i, 0
  br i1 %.not54.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fw = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fw, ptr noundef nonnull @.str.5)
          to label %.invoke215 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i80

bb.be:                                            ; preds = %bb.bb
  %i.fy = add i32 %i.fv, 256                      ; 2 uses
  store i32 %i.fy, ptr %i.fu, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !40 ; 9 uses
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %.not56.i = icmp eq ptr %i.ga, null
  br i1 %.not56.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gc = ashr exact i32 %i.fy, 8                 ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i32 %i.gc, 0
  %i.gf = shl nsw i64 %i.gd, 2
  %i.gg = select i1 %i.ge, i64 -1, i64 %i.gf
  %i.gh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gg) #11
          to label %.noexc91 unwind label %.loopexit ; 8 uses

.noexc91:                                         ; preds = %bb.bf
  store ptr %i.gh, ptr %i.fz, align 8, !tbaa !40
  %i.gi = load i32, ptr %i.fu, align 8
  %i.gj = ashr i32 %i.gi, 8                       ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %.lr.ph.preheader.i, label %._crit_edge.i83

.lr.ph.preheader.i:                               ; preds = %.noexc91
  %i.gl = ptrtoaddr ptr %i.gh to i64
  %i.gm = add nsw i32 %i.gj, -1
  %wide.trip.count.i = zext i32 %i.gm to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.gj, 9
  %i.gn = sub i64 %i.gb, %i.gl
  %diff.check = icmp ugt i64 %i.gn, -32
  %or.cond321 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond321, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load = load <4 x i32>, ptr %i.go, align 4, !tbaa !17
  %wide.load233 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !17
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %wide.load, ptr %i.gq, align 4, !tbaa !17
  store <4 x i32> %wide.load233, ptr %i.gr, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i83, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i84.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i84.prol = phi i64 [ %indvars.iv.next.i85.prol, %.lr.ph.i.prol ], [ %indvars.iv.i84.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i84.prol
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !17
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i84.prol
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !17
  %indvars.iv.next.i85.prol = add nuw nsw i64 %indvars.iv.i84.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !47

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i84.unr = phi i64 [ %indvars.iv.i84.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i85.prol, %.lr.ph.i.prol ]
  %i.gw = sub nsw i64 %indvars.iv.i84.ph, %wide.trip.count.i
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %._crit_edge.i83, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i85.3, %.lr.ph.i ], [ %indvars.iv.i84.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i84
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !17
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i84
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !17
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i85
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !17
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i85
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !17
  %indvars.iv.next.i85.1 = add nuw nsw i64 %indvars.iv.i84, 2 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i85.1
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !17
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i85.1
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !17
  %indvars.iv.next.i85.2 = add nuw nsw i64 %indvars.iv.i84, 3 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i85.2
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !17
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i85.2
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !17
  %indvars.iv.next.i85.3 = add nuw nsw i64 %indvars.iv.i84, 4 ; 2 uses
  %exitcond.not.i86.3 = icmp eq i64 %indvars.iv.next.i85.3, %wide.trip.count.i
  br i1 %exitcond.not.i86.3, label %._crit_edge.i83, label %.lr.ph.i, !llvm.loop !48

._crit_edge.i83:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.noexc91
  tail call void @_ZdaPv(ptr noundef nonnull %i.ga) #12
  %.pre.i = load ptr, ptr %i.fz, align 8, !tbaa !40
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hk = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #11
          to label %.noexc92 unwind label %.loopexit ; 2 uses

.noexc92:                                         ; preds = %bb.bg
  store ptr %i.hk, ptr %i.fz, align 8, !tbaa !40
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc92, %._crit_edge.i83
  %i.hl = phi ptr [ %i.hk, %.noexc92 ], [ %.pre.i, %._crit_edge.i83 ]
  %i.hm = load i32, ptr %i.fu, align 8
  %i.hn = ashr i32 %i.hm, 8
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr [4 x i8], ptr %i.hl, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 -4
  %i.hr = trunc nsw i64 %indvars.iv68.i to i32
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !17
  br label %.loopexit.i

bb.bi:                                            ; preds = %bb.ba
  %.not50.i = icmp eq i64 %i.fl, 0
  br i1 %.not50.i, label %.loopexit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hs = sub nuw nsw i64 14, %i.fl
  %i.ht = shl i64 %i.fk, %i.hs
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ht
  %i.hv = lshr exact i32 16384, %i.fm
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = trunc nsw i64 %indvars.iv68.i to i32
  %i.hy = shl nuw nsw i32 %i.hx, 8
  %i.hz = or disjoint i32 %i.hy, %i.fm
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bo, %bb.bj
  %.060.i = phi i64 [ %i.hw, %bb.bj ], [ %i.if, %bb.bo ]
  %.04459.i = phi ptr [ %i.hu, %bb.bj ], [ %i.ig, %bb.bo ] ; 4 uses
  %i.ia = load i32, ptr %.04459.i, align 8
  %.mask.i = and i32 %i.ia, 255
  %.not52.i = icmp eq i32 %.mask.i, 0
  br i1 %.not52.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ib = getelementptr inbounds nuw i8, ptr %.04459.i, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !40
  %.not53.i = icmp eq ptr %i.ic, null
  br i1 %.not53.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.id = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.id, ptr noundef nonnull @.str.5)
          to label %.invoke215 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i80

bb.bo:                                            ; preds = %bb.bl
  store i32 %i.hz, ptr %.04459.i, align 8
  %i.if = add nsw i64 %.060.i, -1                 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.04459.i, i64 16
  %.not51.i = icmp eq i64 %i.if, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.bk, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.bo, %bb.bi, %bb.bh
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next69.i to i32
  %exitcond71.not.i = icmp eq i32 %i.fh, %lftr.wideiv.i
  br i1 %exitcond71.not.i, label %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit, label %.lr.ph65.i, !llvm.loop !50

_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit: ; preds = %.loopexit.i, %bb.ax
  %i.ih = sext i32 %3 to i64                      ; 2 uses
  %i.ii = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ih ; 6 uses
  %i.ij = add nsw i32 %i.j, 7
  %i.ik = sdiv i32 %i.ij, 8
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %i.dc, i64 %i.il ; 3 uses
  %i.in = icmp sgt i32 %i.j, 0
  br i1 %i.in, label %.lr.ph339.i, label %._crit_edge340.i

.loopexit210.i:                                   ; preds = %.loopexit209.i, %.lr.ph339.i
  %.1159.lcssa.i = phi ptr [ %i.iq, %.lr.ph339.i ], [ %.9167.i, %.loopexit209.i ] ; 3 uses
  %.1147.lcssa.i = phi ptr [ %.0146335.i, %.lr.ph339.i ], [ %.8154.i, %.loopexit209.i ] ; 2 uses
  %.1134.lcssa.i = phi i64 [ %i.it, %.lr.ph339.i ], [ %.9142.i, %.loopexit209.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.iu, %.lr.ph339.i ], [ %.9.i, %.loopexit209.i ] ; 2 uses
  %i.io = icmp ult ptr %.1159.lcssa.i, %i.im
  br i1 %i.io, label %.lr.ph339.i, label %._crit_edge340.i, !llvm.loop !51

.lr.ph339.i:                                      ; preds = %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit, %.loopexit210.i
  %.0132337.i = phi i32 [ %.1.lcssa.i, %.loopexit210.i ], [ 0, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ] ; 2 uses
  %.0133336.i = phi i64 [ %.1134.lcssa.i, %.loopexit210.i ], [ 0, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ]
  %.0146335.i = phi ptr [ %.1147.lcssa.i, %.loopexit210.i ], [ %2, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ] ; 2 uses
  %.0158334.i = phi ptr [ %.1159.lcssa.i, %.loopexit210.i ], [ %i.dc, %_ZN7Imf_3_412_GLOBAL__N_116hufBuildDecTableEPKmiiPNS0_6HufDecE.exit ] ; 2 uses
  %i.ip = shl i64 %.0133336.i, 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.0158334.i, i64 1 ; 2 uses
  %i.ir = load i8, ptr %.0158334.i, align 1, !tbaa !31
  %i.is = zext i8 %i.ir to i64
  %i.it = or disjoint i64 %i.ip, %i.is            ; 2 uses
  %i.iu = add nsw i32 %.0132337.i, 8              ; 2 uses
  %i.iv = icmp sgt i32 %.0132337.i, 5
  br i1 %i.iv, label %.lr.ph329.i, label %.loopexit210.i

.lr.ph329.i:                                      ; preds = %.lr.ph339.i, %.loopexit209.i
  %.1327.i = phi i32 [ %.9.i, %.loopexit209.i ], [ %i.iu, %.lr.ph339.i ] ; 4 uses
  %.1134326.i = phi i64 [ %.9142.i, %.loopexit209.i ], [ %i.it, %.lr.ph339.i ] ; 6 uses
  %.1147325.i = phi ptr [ %.8154.i, %.loopexit209.i ], [ %.0146335.i, %.lr.ph339.i ] ; 23 uses
  %.1159324.i = phi ptr [ %.9167.i, %.loopexit209.i ], [ %i.iq, %.lr.ph339.i ] ; 6 uses
  %i.iw = add nsw i32 %.1327.i, -14
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = lshr i64 %.1134326.i, %i.ix
  %i.iz = and i64 %i.iy, 16383
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.iz ; 2 uses
  %.sroa.027.0.copyload.i = load i32, ptr %i.ja, align 8, !tbaa !31 ; 3 uses
  %.sroa.933.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.sroa.933.0.copyload.i = load ptr, ptr %.sroa.933.0..sroa_idx.i, align 8, !tbaa !52 ; 2 uses
  %i.jb = shl i32 %.sroa.027.0.copyload.i, 24     ; 2 uses
  %.not186.i = icmp eq i32 %i.jb, 0
  br i1 %.not186.i, label %bb.cg, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph329.i
  %i.jc = ashr exact i32 %i.jb, 24
  %i.jd = sub nsw i32 %.1327.i, %i.jc             ; 5 uses
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.jf = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, ptr noundef nonnull @.str.6)
          to label %.invoke215 unwind label %bb.br

common.resume.i95:                                ; preds = %bb.du, %bb.ds, %bb.dq, %bb.dl, %bb.di, %bb.dc, %bb.cz, %bb.cx, %bb.cs, %bb.cp, %bb.ci, %bb.cf, %bb.ca, %bb.bx, %bb.br
  %.sink.i96 = phi ptr [ %i.qp, %bb.du ], [ %i.qi, %bb.ds ], [ %i.qg, %bb.dq ], [ %i.pk, %bb.dl ], [ %i.pg, %bb.di ], [ %i.oo, %bb.dc ], [ %i.nw, %bb.cz ], [ %i.nt, %bb.cx ], [ %i.mx, %bb.cs ], [ %i.mt, %bb.cp ], [ %i.lb, %bb.ci ], [ %i.kx, %bb.cf ], [ %i.kb, %bb.ca ], [ %i.jx, %bb.bx ], [ %i.jf, %bb.br ]
  %common.resume.op.i97 = phi { ptr, i32 } [ %i.qq, %bb.du ], [ %i.qj, %bb.ds ], [ %i.qh, %bb.dq ], [ %i.pl, %bb.dl ], [ %i.ph, %bb.di ], [ %i.op, %bb.dc ], [ %i.nx, %bb.cz ], [ %i.nu, %bb.cx ], [ %i.my, %bb.cs ], [ %i.mu, %bb.cp ], [ %i.lc, %bb.ci ], [ %i.ky, %bb.cf ], [ %i.kc, %bb.ca ], [ %i.jy, %bb.bx ], [ %i.jg, %bb.br ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink.i96) #13
  br label %.body78

bb.br:                                            ; preds = %bb.bq
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.bs:                                            ; preds = %bb.bp
  %i.jh = ashr i32 %.sroa.027.0.copyload.i, 8     ; 2 uses
  %i.ji = icmp eq i32 %i.jh, %i.h
  br i1 %i.ji, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.jj = icmp samesign ult i32 %i.jd, 8
  br i1 %i.jj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jk = shl i64 %.1134326.i, 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.1159324.i, i64 1
  %i.jm = load i8, ptr %.1159324.i, align 1, !tbaa !31
  %i.jn = zext i8 %i.jm to i64
  %i.jo = or disjoint i64 %i.jk, %i.jn
  %i.jp = or disjoint i32 %i.jd, 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.2160.i = phi ptr [ %i.jl, %bb.bu ], [ %.1159324.i, %bb.bt ] ; 4 uses
  %.2135.i = phi i64 [ %i.jo, %bb.bu ], [ %.1134326.i, %bb.bt ] ; 5 uses
  %.2.i = phi i32 [ %i.jp, %bb.bu ], [ %i.jd, %bb.bt ]
  %i.jq = add nsw i32 %.2.i, -8                   ; 5 uses
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = lshr i64 %.2135.i, %i.jr                ; 5 uses
  %i.jt = trunc i64 %i.js to i8                   ; 4 uses
  %i.ju = and i64 %i.js, 255                      ; 5 uses
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %.1147325.i, i64 %i.ju
  %i.jw = icmp ugt ptr %i.jv, %i.ii
  br i1 %i.jw, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.jx = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.jx, ptr noundef nonnull @.str.7)
          to label %.invoke215 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.by:                                            ; preds = %bb.bv
  %i.jz = getelementptr inbounds i8, ptr %.1147325.i, i64 -2 ; 2 uses
  %i.ka = icmp ult ptr %i.jz, %2
  br i1 %i.ka, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.kb = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.kb, ptr noundef nonnull @.str)
          to label %.invoke215 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i95

bb.cb:                                            ; preds = %bb.by
  %i.kd = load i16, ptr %i.jz, align 2, !tbaa !8  ; 3 uses
  %.not190297.i = icmp eq i8 %i.jt, 0
  br i1 %.not190297.i, label %.loopexit209.i, label %iter.check272

iter.check272:                                    ; preds = %bb.cb
  %min.iters.check256 = icmp samesign ult i64 %i.ju, 4
  br i1 %min.iters.check256, label %.lr.ph.i99.preheader, label %vector.main.loop.iter.check257

vector.main.loop.iter.check257:                   ; preds = %iter.check272
  %min.iters.check258 = icmp samesign ult i64 %i.ju, 16
  br i1 %min.iters.check258, label %vec.epilog.ph276, label %vector.ph259

vector.ph259:                                     ; preds = %vector.main.loop.iter.check257
  %i.ke = and i64 %i.js, 12
  %n.vec260 = and i64 %i.js, 240                  ; 5 uses
  %i.kf = trunc nuw i64 %n.vec260 to i8
  %i.kg = sub i8 %i.jt, %i.kf
  %i.kh = shl nuw nsw i64 %n.vec260, 1
  %i.ki = getelementptr i8, ptr %.1147325.i, i64 %i.kh ; 2 uses
  %broadcast.splatinsert261 = insertelement <8 x i16> poison, i16 %i.kd, i64 0
  %broadcast.splat262 = shufflevector <8 x i16> %broadcast.splatinsert261, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph259
  %index264 = phi i64 [ 0, %vector.ph259 ], [ %index.next266, %vector.body263 ] ; 2 uses
  %i.kj = shl i64 %index264, 1
  %next.gep265 = getelementptr i8, ptr %.1147325.i, i64 %i.kj ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep265, i64 16
  store <8 x i16> %broadcast.splat262, ptr %next.gep265, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat262, ptr %i.kk, align 2, !tbaa !8
  %index.next266 = add nuw i64 %index264, 16      ; 2 uses
  %i.kl = icmp eq i64 %index.next266, %n.vec260
end_hunk_1
