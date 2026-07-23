inline.NumInlined: 3398
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIlmEEvRKNS_6TensorEPT_PT0_l:bb.a

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i32 = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIlSaIlEED2Ev.exit33, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01840 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02039 = phi ptr [ %i.ea, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %.02138 = phi i64 [ %i.eb, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.x, %.lr.ph.split ] ; 2 uses
  %i.dk = load i64, ptr %.02039, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i64 %i.dk, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, !prof !54

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dl = getelementptr inbounds nuw i8, ptr %.01840, i64 8
  store i64 %i.dk, ptr %.01840, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dl, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit ], [ %.01840, %.lr.ph.split.split ]
  %i.dm = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.dn = add nsw i64 %i.dm, 1                    ; 3 uses
  store i64 %i.dn, ptr %i.bk, align 8, !tbaa !10
  %i.do = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.dp = icmp eq i64 %i.dn, %i.do
  %or.cond.i = and i1 %i.dp, %i.bm
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dq = phi i64 [ %i.dy, %bb.h ], [ %i.dn, %bb.g ]
  %.03.i = phi i64 [ %i.dv, %bb.h ], [ %i.bj, %bb.g ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !10
  %i.dt = icmp eq i64 %i.dq, %i.ds
  br i1 %i.dt, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %.03.i
  store i64 0, ptr %i.du, align 8, !tbaa !10
  %i.dv = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.dv ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !10
  %i.dy = add nsw i64 %i.dx, 1                    ; 2 uses
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !10
  %i.dz = icmp sgt i64 %.03.i, 1
  br i1 %i.dz, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %.02039, i64 8
  %i.eb = add nsw i64 %.02138, -1
  %i.ec = icmp sgt i64 %.02138, 1
  br i1 %i.ec, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !184

bb.i:                                             ; preds = %bb.f
  %i.ed = ptrtoint ptr %.sroa.034.0 to i64
  %i.ee = sub i64 %.sroa.12.0, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.ee) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit33

_ZNSt6vectorIlSaIlEED2Ev.exit33:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.dj
}

declare noundef zeroext i1 @_ZNK5arrow6Tensor15is_column_majorEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 4 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc46:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 6 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !185
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !187
  store i8 0, ptr %i.n, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add nsw i64 %i.l, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc46
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc46, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.t = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %bb.b ] ; 2 uses
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.n, %.noexc46 ], [ %i.n, %bb.b ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.q, %.noexc46 ], [ %i.o, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.v, align 8, !tbaa !188
  %i.w = icmp slt i64 %3, 0
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i47

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc51 unwind label %bb.h

.noexc51:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i47: ; preds = %bb.c
  %.not.i.i.i.i48 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit53, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i47
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #24
          to label %.noexc52 unwind label %bb.h   ; 5 uses

.noexc52:                                         ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.x, i64 %3       ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !7
  %i.z = add nsw i64 %3, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit53, label %bb.f

bb.f:                                             ; preds = %.noexc52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit53

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit53:             ; preds = %bb.f, %.noexc52, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i47
  %.sroa.11.0 = phi ptr [ %i.y, %bb.f ], [ %i.y, %.noexc52 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i47 ] ; 2 uses
  %.sroa.074.0 = phi ptr [ %i.x, %bb.f ], [ %i.x, %.noexc52 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i47 ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIhhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.u, ptr noundef %.sroa.074.0)
          to label %.preheader103 unwind label %bb.i

.preheader103:                                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit53
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader103
  %i.ac = icmp sgt i32 %i.j, 1
  br i1 %i.ac, label %.preheader.preheader, label %._crit_edge117.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ad = lshr i64 %i.h, 4                        ; 2 uses
  %i.ae = and i64 %i.h, 34359738352
  %i.af = icmp eq i64 %i.ae, 16
  %unroll_iter = and i64 %i.ad, 2147483646
  %i.ag = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.ag, 0
  %lcmp.mod225 = trunc i64 %i.ad to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038116 = phi i64 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ah = mul nsw i64 %.038116, %i.k
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.ah   ; 3 uses
  %i.aj = add nuw nsw i64 %.038116, 1             ; 3 uses
  %i.ak = mul i64 %i.aj, %i.k
  %i.al = getelementptr i8, ptr %i.u, i64 %i.ak   ; 3 uses
  br i1 %i.af, label %.epil.preheader, label %.preheader.new

._crit_edge117.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.am = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %._crit_edge117.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc56 unwind label %bb.af

.noexc56:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge117.split
  %i.an = shl nuw nsw i64 %3, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #24
          to label %.noexc57 unwind label %bb.af  ; 21 uses

.noexc57:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.ao, align 8, !tbaa !10
  %i.ap = getelementptr i8, ptr %i.ao, i64 8      ; 4 uses
  %i.aq = add nsw i64 %3, -1                      ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit64

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit53
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.au = getelementptr i8, ptr %i.ai, i64 %indvars.iv.epil.init ; 2 uses
  %i.av = xor i64 %indvars.iv.epil.init, -1
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !7
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !7
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !7
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond145.not = icmp eq i64 %i.aj, %3
  br i1 %exitcond145.not, label %._crit_edge117.split, label %.preheader, !llvm.loop !189

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.az = getelementptr i8, ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ba = xor i64 %indvars.iv, -1
  %i.bb = getelementptr i8, ptr %i.al, i64 %i.ba  ; 2 uses
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !7
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !7
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !7
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !7
  %i.be = getelementptr i8, ptr %i.ai, i64 %indvars.iv
  %i.bf = getelementptr i8, ptr %i.be, i64 1      ; 2 uses
  %i.bg = xor i64 %indvars.iv, -2
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bg  ; 2 uses
  %i.bi = load i8, ptr %i.bf, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  store i8 %i.bj, ptr %i.bf, align 1, !tbaa !7
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !190

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc57
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc57
  %.0.i.i.i.i.i5594.idx = phi i64 [ %.idx.i.i.i.i.i.i.i, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc57 ] ; 6 uses
  %.0.i.i.i.i.i5594.ptr = getelementptr i8, ptr %i.ap, i64 %.0.i.i.i.i.i5594.idx ; 4 uses
  %i.bk = lshr exact i64 %.0.i.i.i.i.i5594.idx, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5594.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bl, 2305843009213693948     ; 4 uses
  %i.bm = shl nuw i64 %n.vec, 3
  %i.bn = getelementptr i8, ptr %i.ao, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bo = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bp, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ao, %.lr.ph.preheader.i ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %.0.i.i.i.i.i5594.ptr
  br i1 %i.bs, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !194

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bt = ptrtoint ptr %i.ao to i64
  %i.bu = add nuw i64 %.0.i.i.i.i.i5594.idx, 8    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = shl nuw nsw i64 %i.bw, 1
  %i.by = xor i64 %i.bx, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ao, ptr %.0.i.i.i.i.i5594.ptr, i64 noundef %i.by, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.bz = icmp sgt i64 %i.bu, 128
  %i.ca = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  br i1 %i.ca, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cc = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cd = load i64, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.ce = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cf = mul nsw i64 %i.cd, %i.cc
  %i.cg = mul nsw i64 %i.ce, %i.cc
  %i.ch = getelementptr i8, ptr %i.u, i64 %i.cg   ; 2 uses
  %i.ci = getelementptr i8, ptr %i.u, i64 %i.cf
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cc
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.k, !llvm.loop !195

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.j ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.j ]
  %i.cj = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7   ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 3 uses
  %i.cn = icmp ult i8 %i.ck, %i.cm
  %i.co = icmp ule i8 %i.ck, %i.cm
  %..0.i.i.i.i.i.i = select i1 %i.co, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i8 %i.ck, %i.cm
  %.1.i.i.i.i.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.k
  br i1 %.1.i.i.i.i.i.i, label %bb.l, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cp = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cp, label %bb.m, label %bb.n, !prof !54

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cd, ptr %i.cq, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.p
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.p ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cr = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.cc
  %i.ct = getelementptr i8, ptr %i.u, i64 %i.cs
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.q ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.q ]
  %i.cu = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !7   ; 3 uses
  %i.cw = getelementptr i8, ptr %i.ct, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !7   ; 3 uses
  %i.cy = icmp ult i8 %i.cv, %i.cx
  %i.cz = icmp ule i8 %i.cv, %i.cx
  %..0.i.i.us.i.i.i.i.i = select i1 %i.cz, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i8 %i.cv, %i.cx
  %.1.i.i.us.i.i.i.i.i = select i1 %i.cy, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.o
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cr, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cc
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.o, !llvm.loop !195

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.q, %bb.m, %bb.n
  %.sroa.07.016.us.i.i.i.i.i191.sink = phi ptr [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.q ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ce, ptr %.sroa.07.016.us.i.i.i.i.i191.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.da = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.da, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !196

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.db = icmp eq i64 %.0.i.i.i.i.i5594.idx, 120
  br i1 %i.db, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.do, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cb, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.dc = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.cc
  %i.de = getelementptr i8, ptr %i.u, i64 %i.dd
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.s, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.s ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.df = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cc
  %i.dh = getelementptr i8, ptr %i.u, i64 %i.dg
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.t ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.t ]
  %i.di = getelementptr i8, ptr %i.de, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !7   ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !7   ; 3 uses
  %i.dm = icmp ult i8 %i.dj, %i.dl
  %i.dn = icmp ule i8 %i.dj, %i.dl
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dn, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i8 %i.dj, %i.dl
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dm, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.t, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.r
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cc
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.r, !llvm.loop !195

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.t
  store i64 %i.dc, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %.0.i.i.i.i.i5594.ptr
  br i1 %i.dp, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !197

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dq = icmp ne i64 %.0.i.i.i.i.i5594.idx, 0
  %or.cond = select i1 %i.dq, i1 %i.ca, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dr = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ap, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ao, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.ds = load i64, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.dt = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.du = mul nsw i64 %i.ds, %i.dr
  %i.dv = mul nsw i64 %i.dt, %i.dr
  %i.dw = getelementptr i8, ptr %i.u, i64 %i.dv   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.u, i64 %i.du
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dr
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.v, !llvm.loop !195

bb.v:                                             ; preds = %bb.u, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.u ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.u ]
  %i.dy = getelementptr i8, ptr %i.dw, i64 %indvars.iv.i.i.i28.i.i.i
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !7   ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dx, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !7   ; 3 uses
  %i.ec = icmp ult i8 %i.dz, %i.eb
  %i.ed = icmp ule i8 %i.dz, %i.eb
  %..0.i.i.i30.i.i.i = select i1 %i.ed, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i8 %i.dz, %i.eb
  %.1.i.i.i32.i.i.i = select i1 %i.ec, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.v
  br i1 %.1.i.i.i32.i.i.i, label %bb.w, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.u, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.w:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.ee = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ef = sub i64 %i.ee, %i.bt                    ; 3 uses
  %i.eg = ashr exact i64 %i.ef, 3                 ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 1
  br i1 %i.eh, label %bb.x, label %bb.y, !prof !54

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.ej = sub nsw i64 0, %i.eg
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.ef, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.el = icmp eq i64 %i.ef, 8
  br i1 %i.el, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.ds, ptr %i.em, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.ab
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.ab ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.en = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eo = mul nsw i64 %i.en, %i.dr
  %i.ep = getelementptr i8, ptr %i.u, i64 %i.eo
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.ac ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.ac ]
  %i.eq = getelementptr i8, ptr %i.dw, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7   ; 3 uses
  %i.es = getelementptr i8, ptr %i.ep, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !7   ; 3 uses
  %i.eu = icmp ult i8 %i.er, %i.et
  %i.ev = icmp ule i8 %i.er, %i.et
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ev, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i8 %i.er, %i.et
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.eu, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.ac, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.aa
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.ab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.ab:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.en, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dr
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.aa, !llvm.loop !195

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.ac, %bb.x, %bb.y, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i195.sink = phi ptr [ %i.ao, %bb.x ], [ %i.ao, %bb.z ], [ %i.ao, %bb.y ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.ac ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dt, ptr %.sroa.07.016.us.i.i36.i.i.i195.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ew = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5594.ptr
  br i1 %i.ew, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !196

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ex = icmp slt i32 %i.j, 1
  %i.ey = and i64 %i.i, 2147483647                ; 3 uses
  br i1 %i.ex, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %.sroa.074.0, i64 %3, i1 false), !tbaa !7
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter226 = and i64 %3, 1
  %i.ez = icmp eq i64 %i.aq, 0
  br i1 %i.ez, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader
  %unroll_iter229 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader: ; preds = %.lr.ph.split
  %xtraiter231 = and i64 %3, 3                    ; 3 uses
  %i.fa = icmp ult i64 %3, 4
  br i1 %i.fa, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader
  %unroll_iter234 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125:        ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader.new
  %.0120.us122 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125 ] ; 6 uses
  %.030119.us123 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader.new ], [ %i.ga, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125 ] ; 2 uses
  %.031118.us124 = phi ptr [ %1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125.preheader.new ], [ %i.gb, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us125 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS_6TensorEPT_PT0_l:bb.a
_ZNSt6vectorIhSaIhEED2Ev.exit60:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.af:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.g
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new
  %.0120 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 4 uses
  %.030119 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hd, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %.031118 = phi ptr [ %1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.he, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %niter230 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %niter230.next.1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.074.0, i64 %.0120
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !7
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 %.0120
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.031118, ptr align 1 %.030119, i64 %i.ey, i1 false)
  %i.gx = getelementptr inbounds i8, ptr %.030119, i64 %i.k ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.031118, i64 %i.k ; 2 uses
  %i.gz = or disjoint i64 %.0120, 1               ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.074.0, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !7
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %i.gz
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr align 1 %i.gx, i64 %i.ey, i1 false)
  %i.hd = getelementptr inbounds i8, ptr %i.gx, i64 %i.k ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.gy, i64 %i.k ; 2 uses
  %i.hf = add nuw nsw i64 %.0120, 2               ; 2 uses
  %niter230.next.1 = add i64 %niter230, 2         ; 2 uses
  %niter230.ncmp.1 = icmp eq i64 %niter230.next.1, %unroll_iter229
  br i1 %niter230.ncmp.1, label %.loopexit.loopexit211.unr-lcssa, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, !llvm.loop !198

bb.ag:                                            ; preds = %bb.af, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.gt, %bb.af ] ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %.sroa.074.0, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIhSaIhEED2Ev.exit64, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hg = ptrtoint ptr %.sroa.11.0 to i64
  %i.hh = ptrtoint ptr %.sroa.074.0 to i64
  %i.hi = sub i64 %i.hg, %i.hh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0, i64 noundef %i.hi) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit64

_ZNSt6vectorIhSaIhEED2Ev.exit64:                  ; preds = %bb.ah, %bb.ag, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.h ], [ %.pn.pn.pn, %bb.ag ], [ %.pn.pn.pn, %bb.ah ]
  %.not.i.i.i65 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIhSaIhEED2Ev.exit66, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit64
  %i.hj = ptrtoint ptr %i.t to i64
  %i.hk = ptrtoint ptr %i.u to i64
  %i.hl = sub i64 %i.hj, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.hl) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit66

_ZNSt6vectorIhSaIhEED2Ev.exit66:                  ; preds = %bb.ai, %_ZNSt6vectorIhSaIhEED2Ev.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 4 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc46:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 6 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !185
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !187
  store i8 0, ptr %i.n, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add nsw i64 %i.l, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc46
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc46, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.t = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %bb.b ] ; 2 uses
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.n, %.noexc46 ], [ %i.n, %bb.b ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.q, %.noexc46 ], [ %i.o, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.v, align 8, !tbaa !188
  %i.w = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc49 unwind label %bb.g

.noexc49:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = shl nuw nsw i64 %3, 1
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24
          to label %.noexc50 unwind label %bb.g   ; 5 uses

.noexc50:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %3 ; 2 uses
  store i16 0, ptr %i.y, align 2, !tbaa !8
  %i.aa = add nsw i64 %3, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %i.ac = getelementptr i8, ptr %i.y, i64 2
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc50, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.z, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc50 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.071.0 = phi ptr [ %i.y, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc50 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIhtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.u, ptr noundef %.sroa.071.0)
          to label %.preheader100 unwind label %bb.h

.preheader100:                                    ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader100
  %i.ad = icmp sgt i32 %i.j, 1
  br i1 %i.ad, label %.preheader.preheader, label %._crit_edge114.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ae = lshr i64 %i.h, 4                        ; 2 uses
  %i.af = and i64 %i.h, 34359738352
  %i.ag = icmp eq i64 %i.af, 16
  %unroll_iter = and i64 %i.ae, 2147483646
  %i.ah = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.ah, 0
  %lcmp.mod222 = trunc i64 %i.ae to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038113 = phi i64 [ %i.ak, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ai = mul nsw i64 %.038113, %i.k
  %i.aj = getelementptr i8, ptr %i.u, i64 %i.ai   ; 3 uses
  %i.ak = add nuw nsw i64 %.038113, 1             ; 3 uses
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr i8, ptr %i.u, i64 %i.al   ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

._crit_edge114.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.an = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge114.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc54 unwind label %bb.ae

.noexc54:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge114.split
  %i.ao = shl nuw nsw i64 %3, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24
          to label %.noexc55 unwind label %bb.ae  ; 21 uses

.noexc55:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr i8, ptr %i.ap, i64 8      ; 4 uses
  %i.ar = add nsw i64 %3, -1                      ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit61

bb.h:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.av = getelementptr i8, ptr %i.aj, i64 %indvars.iv.epil.init ; 2 uses
  %i.aw = xor i64 %indvars.iv.epil.init, -1
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw  ; 2 uses
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !7
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  store i8 %i.az, ptr %i.av, align 1, !tbaa !7
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond142.not = icmp eq i64 %i.ak, %3
  br i1 %exitcond142.not, label %._crit_edge114.split, label %.preheader, !llvm.loop !200

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ba = getelementptr i8, ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.bb = xor i64 %indvars.iv, -1
  %i.bc = getelementptr i8, ptr %i.am, i64 %i.bb  ; 2 uses
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !7
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !7
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !7
  %i.bf = getelementptr i8, ptr %i.aj, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 1      ; 2 uses
  %i.bh = xor i64 %indvars.iv, -2
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bh  ; 2 uses
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !7
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !7
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !201

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc55
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.ar, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc55
  %.0.i.i.i.i.i5391.idx = phi i64 [ %.idx.i.i.i.i.i.i.i52, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc55 ] ; 6 uses
  %.0.i.i.i.i.i5391.ptr = getelementptr i8, ptr %i.aq, i64 %.0.i.i.i.i.i5391.idx ; 4 uses
  %i.bl = lshr exact i64 %.0.i.i.i.i.i5391.idx, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5391.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bm, 2305843009213693948     ; 4 uses
  %i.bn = shl nuw i64 %n.vec, 3
  %i.bo = getelementptr i8, ptr %i.ap, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bq, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ap, %.lr.ph.preheader.i ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %.0.i.i.i.i.i5391.ptr
  br i1 %i.bt, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !203

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bu = ptrtoint ptr %i.ap to i64
  %i.bv = add nuw i64 %.0.i.i.i.i.i5391.idx, 8    ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = xor i64 %i.by, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ap, ptr %.0.i.i.i.i.i5391.ptr, i64 noundef %i.bz, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.ca = icmp sgt i64 %i.bv, 128
  %i.cb = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  br i1 %i.cb, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cd = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !10 ; 2 uses
  %i.cf = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cg = mul nsw i64 %i.ce, %i.cd
  %i.ch = mul nsw i64 %i.cf, %i.cd
  %i.ci = getelementptr i8, ptr %i.u, i64 %i.ch   ; 2 uses
  %i.cj = getelementptr i8, ptr %i.u, i64 %i.cg
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cd
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.j, !llvm.loop !204

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.i ]
  %i.ck = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i.i.i.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !7   ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7   ; 3 uses
  %i.co = icmp ult i8 %i.cl, %i.cn
  %i.cp = icmp ule i8 %i.cl, %i.cn
  %..0.i.i.i.i.i.i = select i1 %i.cp, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i8 %i.cl, %i.cn
  %.1.i.i.i.i.i.i = select i1 %i.co, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.j
  br i1 %.1.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cq = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cq, label %bb.l, label %bb.m, !prof !54

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.ce, ptr %i.cr, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.o
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.o ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cs = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %i.cd
  %i.cu = getelementptr i8, ptr %i.u, i64 %i.ct
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.p ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.p ]
  %i.cv = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !7   ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !7   ; 3 uses
  %i.cz = icmp ult i8 %i.cw, %i.cy
  %i.da = icmp ule i8 %i.cw, %i.cy
  %..0.i.i.us.i.i.i.i.i = select i1 %i.da, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i8 %i.cw, %i.cy
  %.1.i.i.us.i.i.i.i.i = select i1 %i.cz, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.n
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cs, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cd
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.n, !llvm.loop !204

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.p, %bb.l, %bb.m
  %.sroa.07.016.us.i.i.i.i.i188.sink = phi ptr [ %i.ap, %bb.l ], [ %i.ap, %bb.m ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.p ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cf, ptr %.sroa.07.016.us.i.i.i.i.i188.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.db = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.db, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !205

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dc = icmp eq i64 %.0.i.i.i.i.i5391.idx, 120
  br i1 %i.dc, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dp, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.dd = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.de = mul nsw i64 %i.dd, %i.cd
  %i.df = getelementptr i8, ptr %i.u, i64 %i.de
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.r, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dg = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %i.cd
  %i.di = getelementptr i8, ptr %i.u, i64 %i.dh
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.s ]
  %i.dj = getelementptr i8, ptr %i.df, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !7   ; 3 uses
  %i.dl = getelementptr i8, ptr %i.di, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !7   ; 3 uses
  %i.dn = icmp ult i8 %i.dk, %i.dm
  %i.do = icmp ule i8 %i.dk, %i.dm
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i8 %i.dk, %i.dm
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dn, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.q
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dg, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cd
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.q, !llvm.loop !204

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.s
  store i64 %i.dd, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %.0.i.i.i.i.i5391.ptr
  br i1 %i.dq, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !206

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dr = icmp ne i64 %.0.i.i.i.i.i5391.idx, 0
  %or.cond = select i1 %i.dr, i1 %i.cb, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.ds = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ap, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dt = load i64, ptr %i.ap, align 8, !tbaa !10 ; 2 uses
  %i.du = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dv = mul nsw i64 %i.dt, %i.ds
  %i.dw = mul nsw i64 %i.du, %i.ds
  %i.dx = getelementptr i8, ptr %i.u, i64 %i.dw   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.u, i64 %i.dv
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.ds
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.u, !llvm.loop !204

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.t ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.t ]
  %i.dz = getelementptr i8, ptr %i.dx, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !7   ; 3 uses
  %i.eb = getelementptr i8, ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !7   ; 3 uses
  %i.ed = icmp ult i8 %i.ea, %i.ec
  %i.ee = icmp ule i8 %i.ea, %i.ec
  %..0.i.i.i30.i.i.i = select i1 %i.ee, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i8 %i.ea, %i.ec
  %.1.i.i.i32.i.i.i = select i1 %i.ed, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.u
  br i1 %.1.i.i.i32.i.i.i, label %bb.v, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.v:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.ef = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eg = sub i64 %i.ef, %i.bu                    ; 3 uses
  %i.eh = ashr exact i64 %i.eg, 3                 ; 2 uses
  %i.ei = icmp sgt i64 %i.eh, 1
  br i1 %i.ei, label %bb.w, label %bb.x, !prof !54

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.ek = sub nsw i64 0, %i.eh
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.eg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.em = icmp eq i64 %i.eg, 8
  br i1 %i.em, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dt, ptr %i.en, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.aa
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.aa ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eo = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ep = mul nsw i64 %i.eo, %i.ds
  %i.eq = getelementptr i8, ptr %i.u, i64 %i.ep
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.ab ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.ab ]
  %i.er = getelementptr i8, ptr %i.dx, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !7   ; 3 uses
  %i.et = getelementptr i8, ptr %i.eq, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !7   ; 3 uses
  %i.ev = icmp ult i8 %i.es, %i.eu
  %i.ew = icmp ule i8 %i.es, %i.eu
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ew, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i8 %i.es, %i.eu
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ev, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.ab, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.z
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eo, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.ab:                                            ; preds = %bb.z
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.ds
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.z, !llvm.loop !204

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.ab, %bb.w, %bb.x, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i192.sink = phi ptr [ %i.ap, %bb.w ], [ %i.ap, %bb.y ], [ %i.ap, %bb.x ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.ab ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.du, ptr %.sroa.07.016.us.i.i36.i.i.i192.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ex = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5391.ptr
  br i1 %i.ex, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !205

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ey = icmp slt i32 %i.j, 1
  %i.ez = and i64 %i.i, 2147483647                ; 3 uses
  br i1 %i.ey, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fa = shl nuw nsw i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 2 %.sroa.071.0, i64 %i.fa, i1 false), !tbaa !8
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter223 = and i64 %3, 1
  %i.fb = icmp eq i64 %i.ar, 0
  br i1 %i.fb, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader
  %unroll_iter226 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader: ; preds = %.lr.ph.split
  %xtraiter228 = and i64 %3, 3                    ; 3 uses
  %i.fc = icmp ult i64 %3, 4
  br i1 %i.fc, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader
  %unroll_iter231 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122:        ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new
  %.0117.us119 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.ge, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122 ] ; 6 uses
  %.030116.us120 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS_6TensorEPT_PT0_l:bb.a
_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ae:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new
  %.0117 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 4 uses
  %.030116 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %.031115 = phi ptr [ %1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %niter227 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %niter227.next.1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ]
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.071.0, i64 %.0117
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !8
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0117
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.031115, ptr align 1 %.030116, i64 %i.ez, i1 false)
  %i.gz = getelementptr inbounds i8, ptr %.030116, i64 %i.k ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.031115, i64 %i.k ; 2 uses
  %i.hb = or disjoint i64 %.0117, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.071.0, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !8
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.hb
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.gz, i64 %i.ez, i1 false)
  %i.hf = getelementptr inbounds i8, ptr %i.gz, i64 %i.k ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = add nuw nsw i64 %.0117, 2               ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %.loopexit.loopexit208.unr-lcssa, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, !llvm.loop !207

bb.af:                                            ; preds = %bb.ae, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.h ], [ %i.gv, %bb.ae ] ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.sroa.071.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorItSaItEED2Ev.exit61, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = ptrtoint ptr %.sroa.11.0 to i64
  %i.hj = ptrtoint ptr %.sroa.071.0 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.hk) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit61

_ZNSt6vectorItSaItEED2Ev.exit61:                  ; preds = %bb.ag, %bb.af, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.g ], [ %.pn.pn.pn, %bb.af ], [ %.pn.pn.pn, %bb.ag ]
  %.not.i.i.i62 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIhSaIhEED2Ev.exit63, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit61
  %i.hl = ptrtoint ptr %i.t to i64
  %i.hm = ptrtoint ptr %i.u to i64
  %i.hn = sub i64 %i.hl, %i.hm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.hn) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit63

_ZNSt6vectorIhSaIhEED2Ev.exit63:                  ; preds = %bb.ah, %_ZNSt6vectorItSaItEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 4 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc46:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 6 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !185
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !187
  store i8 0, ptr %i.n, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add nsw i64 %i.l, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc46
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc46, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.t = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %bb.b ] ; 2 uses
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.n, %.noexc46 ], [ %i.n, %bb.b ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.q, %.noexc46 ], [ %i.o, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.v, align 8, !tbaa !188
  %i.w = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc49 unwind label %bb.g

.noexc49:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = shl nuw nsw i64 %3, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24
          to label %.noexc50 unwind label %bb.g   ; 5 uses

.noexc50:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %3 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !3
  %i.aa = add nsw i64 %3, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc50, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.z, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc50 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.071.0 = phi ptr [ %i.y, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc50 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIhjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.u, ptr noundef %.sroa.071.0)
          to label %.preheader100 unwind label %bb.h

.preheader100:                                    ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader100
  %i.ad = icmp sgt i32 %i.j, 1
  br i1 %i.ad, label %.preheader.preheader, label %._crit_edge114.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ae = lshr i64 %i.h, 4                        ; 2 uses
  %i.af = and i64 %i.h, 34359738352
  %i.ag = icmp eq i64 %i.af, 16
  %unroll_iter = and i64 %i.ae, 2147483646
  %i.ah = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.ah, 0
  %lcmp.mod222 = trunc i64 %i.ae to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038113 = phi i64 [ %i.ak, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ai = mul nsw i64 %.038113, %i.k
  %i.aj = getelementptr i8, ptr %i.u, i64 %i.ai   ; 3 uses
  %i.ak = add nuw nsw i64 %.038113, 1             ; 3 uses
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr i8, ptr %i.u, i64 %i.al   ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

._crit_edge114.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.an = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge114.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc54 unwind label %bb.ae

.noexc54:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge114.split
  %i.ao = shl nuw nsw i64 %3, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24
          to label %.noexc55 unwind label %bb.ae  ; 21 uses

.noexc55:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr i8, ptr %i.ap, i64 8      ; 4 uses
  %i.ar = add nsw i64 %3, -1                      ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit61

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.av = getelementptr i8, ptr %i.aj, i64 %indvars.iv.epil.init ; 2 uses
  %i.aw = xor i64 %indvars.iv.epil.init, -1
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw  ; 2 uses
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !7
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  store i8 %i.az, ptr %i.av, align 1, !tbaa !7
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond142.not = icmp eq i64 %i.ak, %3
  br i1 %exitcond142.not, label %._crit_edge114.split, label %.preheader, !llvm.loop !209

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ba = getelementptr i8, ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.bb = xor i64 %indvars.iv, -1
  %i.bc = getelementptr i8, ptr %i.am, i64 %i.bb  ; 2 uses
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !7
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !7
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !7
  %i.bf = getelementptr i8, ptr %i.aj, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 1      ; 2 uses
  %i.bh = xor i64 %indvars.iv, -2
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bh  ; 2 uses
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !7
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !7
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !210

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc55
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.ar, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc55
  %.0.i.i.i.i.i5391.idx = phi i64 [ %.idx.i.i.i.i.i.i.i52, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc55 ] ; 6 uses
  %.0.i.i.i.i.i5391.ptr = getelementptr i8, ptr %i.aq, i64 %.0.i.i.i.i.i5391.idx ; 4 uses
  %i.bl = lshr exact i64 %.0.i.i.i.i.i5391.idx, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5391.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bm, 2305843009213693948     ; 4 uses
  %i.bn = shl nuw i64 %n.vec, 3
  %i.bo = getelementptr i8, ptr %i.ap, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bq, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ap, %.lr.ph.preheader.i ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %.0.i.i.i.i.i5391.ptr
  br i1 %i.bt, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !212

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bu = ptrtoint ptr %i.ap to i64
  %i.bv = add nuw i64 %.0.i.i.i.i.i5391.idx, 8    ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = xor i64 %i.by, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ap, ptr %.0.i.i.i.i.i5391.ptr, i64 noundef %i.bz, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.ca = icmp sgt i64 %i.bv, 128
  %i.cb = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  br i1 %i.cb, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cd = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !10 ; 2 uses
  %i.cf = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cg = mul nsw i64 %i.ce, %i.cd
  %i.ch = mul nsw i64 %i.cf, %i.cd
  %i.ci = getelementptr i8, ptr %i.u, i64 %i.ch   ; 2 uses
  %i.cj = getelementptr i8, ptr %i.u, i64 %i.cg
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cd
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.j, !llvm.loop !213

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.i ]
  %i.ck = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i.i.i.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !7   ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7   ; 3 uses
  %i.co = icmp ult i8 %i.cl, %i.cn
  %i.cp = icmp ule i8 %i.cl, %i.cn
  %..0.i.i.i.i.i.i = select i1 %i.cp, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i8 %i.cl, %i.cn
  %.1.i.i.i.i.i.i = select i1 %i.co, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.j
  br i1 %.1.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cq = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cq, label %bb.l, label %bb.m, !prof !54

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.ce, ptr %i.cr, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.o
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.o ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cs = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %i.cd
  %i.cu = getelementptr i8, ptr %i.u, i64 %i.ct
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.p ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.p ]
  %i.cv = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !7   ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !7   ; 3 uses
  %i.cz = icmp ult i8 %i.cw, %i.cy
  %i.da = icmp ule i8 %i.cw, %i.cy
  %..0.i.i.us.i.i.i.i.i = select i1 %i.da, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i8 %i.cw, %i.cy
  %.1.i.i.us.i.i.i.i.i = select i1 %i.cz, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.n
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cs, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cd
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.n, !llvm.loop !213

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.p, %bb.l, %bb.m
  %.sroa.07.016.us.i.i.i.i.i188.sink = phi ptr [ %i.ap, %bb.l ], [ %i.ap, %bb.m ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.p ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cf, ptr %.sroa.07.016.us.i.i.i.i.i188.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.db = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.db, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !214

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dc = icmp eq i64 %.0.i.i.i.i.i5391.idx, 120
  br i1 %i.dc, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dp, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.dd = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.de = mul nsw i64 %i.dd, %i.cd
  %i.df = getelementptr i8, ptr %i.u, i64 %i.de
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.r, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dg = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %i.cd
  %i.di = getelementptr i8, ptr %i.u, i64 %i.dh
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.s ]
  %i.dj = getelementptr i8, ptr %i.df, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !7   ; 3 uses
  %i.dl = getelementptr i8, ptr %i.di, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !7   ; 3 uses
  %i.dn = icmp ult i8 %i.dk, %i.dm
  %i.do = icmp ule i8 %i.dk, %i.dm
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i8 %i.dk, %i.dm
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dn, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.q
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dg, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cd
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.q, !llvm.loop !213

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.s
  store i64 %i.dd, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %.0.i.i.i.i.i5391.ptr
  br i1 %i.dq, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !215

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dr = icmp ne i64 %.0.i.i.i.i.i5391.idx, 0
  %or.cond = select i1 %i.dr, i1 %i.cb, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.ds = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ap, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dt = load i64, ptr %i.ap, align 8, !tbaa !10 ; 2 uses
  %i.du = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dv = mul nsw i64 %i.dt, %i.ds
  %i.dw = mul nsw i64 %i.du, %i.ds
  %i.dx = getelementptr i8, ptr %i.u, i64 %i.dw   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.u, i64 %i.dv
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.ds
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.u, !llvm.loop !213

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.t ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.t ]
  %i.dz = getelementptr i8, ptr %i.dx, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !7   ; 3 uses
  %i.eb = getelementptr i8, ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !7   ; 3 uses
  %i.ed = icmp ult i8 %i.ea, %i.ec
  %i.ee = icmp ule i8 %i.ea, %i.ec
  %..0.i.i.i30.i.i.i = select i1 %i.ee, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i8 %i.ea, %i.ec
  %.1.i.i.i32.i.i.i = select i1 %i.ed, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.u
  br i1 %.1.i.i.i32.i.i.i, label %bb.v, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.v:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.ef = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eg = sub i64 %i.ef, %i.bu                    ; 3 uses
  %i.eh = ashr exact i64 %i.eg, 3                 ; 2 uses
  %i.ei = icmp sgt i64 %i.eh, 1
  br i1 %i.ei, label %bb.w, label %bb.x, !prof !54

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.ek = sub nsw i64 0, %i.eh
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.eg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.em = icmp eq i64 %i.eg, 8
  br i1 %i.em, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dt, ptr %i.en, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.aa
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.aa ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eo = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ep = mul nsw i64 %i.eo, %i.ds
  %i.eq = getelementptr i8, ptr %i.u, i64 %i.ep
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.ab ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.ab ]
  %i.er = getelementptr i8, ptr %i.dx, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !7   ; 3 uses
  %i.et = getelementptr i8, ptr %i.eq, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !7   ; 3 uses
  %i.ev = icmp ult i8 %i.es, %i.eu
  %i.ew = icmp ule i8 %i.es, %i.eu
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ew, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i8 %i.es, %i.eu
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ev, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.ab, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.z
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eo, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.ab:                                            ; preds = %bb.z
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.ds
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.z, !llvm.loop !213

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.ab, %bb.w, %bb.x, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i192.sink = phi ptr [ %i.ap, %bb.w ], [ %i.ap, %bb.y ], [ %i.ap, %bb.x ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.ab ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.du, ptr %.sroa.07.016.us.i.i36.i.i.i192.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ex = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5391.ptr
  br i1 %i.ex, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !214

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ey = icmp slt i32 %i.j, 1
  %i.ez = and i64 %i.i, 2147483647                ; 3 uses
  br i1 %i.ey, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fa = shl nuw nsw i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %.sroa.071.0, i64 %i.fa, i1 false), !tbaa !3
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter223 = and i64 %3, 1
  %i.fb = icmp eq i64 %i.ar, 0
  br i1 %i.fb, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader
  %unroll_iter226 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader: ; preds = %.lr.ph.split
  %xtraiter228 = and i64 %3, 3                    ; 3 uses
  %i.fc = icmp ult i64 %3, 4
  br i1 %i.fc, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader
  %unroll_iter231 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122:        ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new
  %.0117.us119 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.ge, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122 ] ; 6 uses
  %.030116.us120 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us122 ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS_6TensorEPT_PT0_l:bb.a
_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.ac
  %.not.i.i.i57 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.gs = ptrtoint ptr %i.t to i64
  %i.gt = ptrtoint ptr %i.u to i64
  %i.gu = sub i64 %i.gs, %i.gt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.gu) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ae:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new
  %.0117 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 4 uses
  %.030116 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %.031115 = phi ptr [ %1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %niter227 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %niter227.next.1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.071.0, i64 %.0117
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0117
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.031115, ptr align 1 %.030116, i64 %i.ez, i1 false)
  %i.gz = getelementptr inbounds i8, ptr %.030116, i64 %i.k ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.031115, i64 %i.k ; 2 uses
  %i.hb = or disjoint i64 %.0117, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.071.0, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hb
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.gz, i64 %i.ez, i1 false)
  %i.hf = getelementptr inbounds i8, ptr %i.gz, i64 %i.k ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = add nuw nsw i64 %.0117, 2               ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %.loopexit.loopexit208.unr-lcssa, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, !llvm.loop !216

bb.af:                                            ; preds = %bb.ae, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.h ], [ %i.gv, %bb.ae ] ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.sroa.071.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIjSaIjEED2Ev.exit61, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = ptrtoint ptr %.sroa.11.0 to i64
  %i.hj = ptrtoint ptr %.sroa.071.0 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.hk) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit61

_ZNSt6vectorIjSaIjEED2Ev.exit61:                  ; preds = %bb.ag, %bb.af, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.g ], [ %.pn.pn.pn, %bb.af ], [ %.pn.pn.pn, %bb.ag ]
  %.not.i.i.i62 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIhSaIhEED2Ev.exit63, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit61
  %i.hl = ptrtoint ptr %i.t to i64
  %i.hm = ptrtoint ptr %i.u to i64
  %i.hn = sub i64 %i.hl, %i.hm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.hn) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit63

_ZNSt6vectorIhSaIhEED2Ev.exit63:                  ; preds = %bb.ah, %_ZNSt6vectorIjSaIjEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 4 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc46:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 6 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !185
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !187
  store i8 0, ptr %i.n, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add nsw i64 %i.l, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc46
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc46, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.t = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %bb.b ] ; 2 uses
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.n, %.noexc46 ], [ %i.n, %bb.b ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.q, %.noexc46 ], [ %i.o, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.v, align 8, !tbaa !188
  %i.w = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc49 unwind label %bb.f

.noexc49:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = shl nuw nsw i64 %3, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24
          to label %.noexc50 unwind label %bb.f   ; 5 uses

.noexc50:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %3 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !10
  %i.aa = add nsw i64 %3, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc50, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.z, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc50 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.071.0 = phi ptr [ %i.y, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc50 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIhmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.u, ptr noundef %.sroa.071.0)
          to label %.preheader100 unwind label %bb.g

.preheader100:                                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader100
  %i.ad = icmp sgt i32 %i.j, 1
  br i1 %i.ad, label %.preheader.preheader, label %.loopexit181

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ae = lshr i64 %i.h, 4                        ; 2 uses
  %i.af = and i64 %i.h, 34359738352
  %i.ag = icmp eq i64 %i.af, 16
  %unroll_iter = and i64 %i.ae, 2147483646
  %i.ah = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.ah, 0
  %lcmp.mod222 = trunc i64 %i.ae to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038113 = phi i64 [ %i.ak, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ai = mul nsw i64 %.038113, %i.k
  %i.aj = getelementptr i8, ptr %i.u, i64 %i.ai   ; 3 uses
  %i.ak = add nuw nsw i64 %.038113, 1             ; 3 uses
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr i8, ptr %i.u, i64 %i.al   ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

.loopexit181:                                     ; preds = %._crit_edge, %.preheader.lr.ph
  %i.an = shl nuw nsw i64 %3, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #24
          to label %.noexc55 unwind label %bb.ad  ; 21 uses

.noexc55:                                         ; preds = %.loopexit181
  store i64 0, ptr %i.ao, align 8, !tbaa !10
  %i.ap = getelementptr i8, ptr %i.ao, i64 8      ; 4 uses
  %i.aq = add nsw i64 %3, -1                      ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.au = getelementptr i8, ptr %i.aj, i64 %indvars.iv.epil.init ; 2 uses
  %i.av = xor i64 %indvars.iv.epil.init, -1
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av  ; 2 uses
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !7
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !7
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !7
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond141.not = icmp eq i64 %i.ak, %3
  br i1 %exitcond141.not, label %.loopexit181, label %.preheader, !llvm.loop !218

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.az = getelementptr i8, ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.ba = xor i64 %indvars.iv, -1
  %i.bb = getelementptr i8, ptr %i.am, i64 %i.ba  ; 2 uses
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !7
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !7
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !7
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !7
  %i.be = getelementptr i8, ptr %i.aj, i64 %indvars.iv
  %i.bf = getelementptr i8, ptr %i.be, i64 1      ; 2 uses
  %i.bg = xor i64 %indvars.iv, -2
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bg  ; 2 uses
  %i.bi = load i8, ptr %i.bf, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  store i8 %i.bj, ptr %i.bf, align 1, !tbaa !7
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !219

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc55
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.aq, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc55
  %.0.i.i.i.i.i5391.idx = phi i64 [ %.idx.i.i.i.i.i.i.i52, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc55 ] ; 6 uses
  %.0.i.i.i.i.i5391.ptr = getelementptr i8, ptr %i.ap, i64 %.0.i.i.i.i.i5391.idx ; 4 uses
  %i.bk = lshr exact i64 %.0.i.i.i.i.i5391.idx, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5391.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bl, 2305843009213693948     ; 4 uses
  %i.bm = shl nuw i64 %n.vec, 3
  %i.bn = getelementptr i8, ptr %i.ao, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bo = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bp, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ao, %.lr.ph.preheader.i ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %.0.i.i.i.i.i5391.ptr
  br i1 %i.bs, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !221

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bt = ptrtoint ptr %i.ao to i64
  %i.bu = add nuw i64 %.0.i.i.i.i.i5391.idx, 8    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = shl nuw nsw i64 %i.bw, 1
  %i.by = xor i64 %i.bx, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ao, ptr %.0.i.i.i.i.i5391.ptr, i64 noundef %i.by, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.bz = icmp sgt i64 %i.bu, 128
  %i.ca = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  br i1 %i.ca, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cc = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cd = load i64, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.ce = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cf = mul nsw i64 %i.cd, %i.cc
  %i.cg = mul nsw i64 %i.ce, %i.cc
  %i.ch = getelementptr i8, ptr %i.u, i64 %i.cg   ; 2 uses
  %i.ci = getelementptr i8, ptr %i.u, i64 %i.cf
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cc
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.i, !llvm.loop !222

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ]
  %i.cj = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7   ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 3 uses
  %i.cn = icmp ult i8 %i.ck, %i.cm
  %i.co = icmp ule i8 %i.ck, %i.cm
  %..0.i.i.i.i.i.i = select i1 %i.co, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i8 %i.ck, %i.cm
  %.1.i.i.i.i.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.i
  br i1 %.1.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cp = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cp, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cd, ptr %i.cq, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.n
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.n ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cr = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.cc
  %i.ct = getelementptr i8, ptr %i.u, i64 %i.cs
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.o ]
  %i.cu = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !7   ; 3 uses
  %i.cw = getelementptr i8, ptr %i.ct, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !7   ; 3 uses
  %i.cy = icmp ult i8 %i.cv, %i.cx
  %i.cz = icmp ule i8 %i.cv, %i.cx
  %..0.i.i.us.i.i.i.i.i = select i1 %i.cz, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i8 %i.cv, %i.cx
  %.1.i.i.us.i.i.i.i.i = select i1 %i.cy, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cr, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cc
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.m, !llvm.loop !222

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.o, %bb.k, %bb.l
  %.sroa.07.016.us.i.i.i.i.i188.sink = phi ptr [ %i.ao, %bb.k ], [ %i.ao, %bb.l ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.o ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ce, ptr %.sroa.07.016.us.i.i.i.i.i188.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.da = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.da, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !223

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.db = icmp eq i64 %.0.i.i.i.i.i5391.idx, 120
  br i1 %i.db, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.do, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cb, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.dc = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.cc
  %i.de = getelementptr i8, ptr %i.u, i64 %i.dd
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.df = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cc
  %i.dh = getelementptr i8, ptr %i.u, i64 %i.dg
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.r ]
  %i.di = getelementptr i8, ptr %i.de, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !7   ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !7   ; 3 uses
  %i.dm = icmp ult i8 %i.dj, %i.dl
  %i.dn = icmp ule i8 %i.dj, %i.dl
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dn, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i8 %i.dj, %i.dl
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dm, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.p
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cc
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.p, !llvm.loop !222

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.r
  store i64 %i.dc, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %.0.i.i.i.i.i5391.ptr
  br i1 %i.dp, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !224

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dq = icmp ne i64 %.0.i.i.i.i.i5391.idx, 0
  %or.cond = select i1 %i.dq, i1 %i.ca, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dr = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ap, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ao, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.ds = load i64, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.dt = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.du = mul nsw i64 %i.ds, %i.dr
  %i.dv = mul nsw i64 %i.dt, %i.dr
  %i.dw = getelementptr i8, ptr %i.u, i64 %i.dv   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.u, i64 %i.du
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dr
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.t, !llvm.loop !222

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.s ]
  %i.dy = getelementptr i8, ptr %i.dw, i64 %indvars.iv.i.i.i28.i.i.i
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !7   ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dx, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !7   ; 3 uses
  %i.ec = icmp ult i8 %i.dz, %i.eb
  %i.ed = icmp ule i8 %i.dz, %i.eb
  %..0.i.i.i30.i.i.i = select i1 %i.ed, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i8 %i.dz, %i.eb
  %.1.i.i.i32.i.i.i = select i1 %i.ec, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.t
  br i1 %.1.i.i.i32.i.i.i, label %bb.u, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.ee = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ef = sub i64 %i.ee, %i.bt                    ; 3 uses
  %i.eg = ashr exact i64 %i.ef, 3                 ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 1
  br i1 %i.eh, label %bb.v, label %bb.w, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.ej = sub nsw i64 0, %i.eg
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.ef, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.el = icmp eq i64 %i.ef, 8
  br i1 %i.el, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.ds, ptr %i.em, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.z ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.en = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eo = mul nsw i64 %i.en, %i.dr
  %i.ep = getelementptr i8, ptr %i.u, i64 %i.eo
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.aa ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.aa ]
  %i.eq = getelementptr i8, ptr %i.dw, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7   ; 3 uses
  %i.es = getelementptr i8, ptr %i.ep, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !7   ; 3 uses
  %i.eu = icmp ult i8 %i.er, %i.et
  %i.ev = icmp ule i8 %i.er, %i.et
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ev, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i8 %i.er, %i.et
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.eu, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.y
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.en, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dr
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.y, !llvm.loop !222

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.aa, %bb.v, %bb.w, %bb.x
  %.sroa.07.016.us.i.i36.i.i.i192.sink = phi ptr [ %i.ao, %bb.v ], [ %i.ao, %bb.x ], [ %i.ao, %bb.w ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.aa ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dt, ptr %.sroa.07.016.us.i.i36.i.i.i192.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ew = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5391.ptr
  br i1 %i.ew, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !223

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ex = icmp slt i32 %i.j, 1
  %i.ey = and i64 %i.i, 2147483647                ; 3 uses
  br i1 %i.ex, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.ez = shl nuw nsw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %.sroa.071.0, i64 %i.ez, i1 false), !tbaa !10
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter223 = and i64 %3, 1
  %i.fa = icmp eq i64 %i.aq, 0
  br i1 %i.fa, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader
  %unroll_iter226 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader: ; preds = %.lr.ph.split
  %xtraiter228 = and i64 %3, 3                    ; 3 uses
  %i.fb = icmp ult i64 %3, 4
  br i1 %i.fb, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.epil.preheader, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader.new

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader.new: ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader
  %unroll_iter231 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121:        ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader.new
  %.0116.us118 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader.new ], [ %i.gd, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121 ] ; 6 uses
  %.030115.us119 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121.preheader.new ], [ %i.gb, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us121 ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS_6TensorEPT_PT0_l:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ad:                                            ; preds = %.loopexit181
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new
  %.0116 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 4 uses
  %.030115 = phi ptr [ %i.u, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.he, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %.031114 = phi ptr [ %1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ] ; 2 uses
  %niter227 = phi i64 [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.preheader.new ], [ %niter227.next.1, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %.0116
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !10
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0116
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.031114, ptr align 1 %.030115, i64 %i.ey, i1 false)
  %i.gy = getelementptr inbounds i8, ptr %.030115, i64 %i.k ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %.031114, i64 %i.k ; 2 uses
  %i.ha = or disjoint i64 %.0116, 1               ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !10
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ha
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr align 1 %i.gy, i64 %i.ey, i1 false)
  %i.he = getelementptr inbounds i8, ptr %i.gy, i64 %i.k ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.gz, i64 %i.k ; 2 uses
  %i.hg = add nuw nsw i64 %.0116, 2               ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %.loopexit.loopexit208.unr-lcssa, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit, !llvm.loop !225

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.gu, %bb.ad ] ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.sroa.071.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorImSaImEED2Ev.exit61, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hh = ptrtoint ptr %.sroa.11.0 to i64
  %i.hi = ptrtoint ptr %.sroa.071.0 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.hj) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

_ZNSt6vectorImSaImEED2Ev.exit61:                  ; preds = %bb.af, %bb.ae, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.f ], [ %.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.af ]
  %.not.i.i.i62 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIhSaIhEED2Ev.exit63, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit61
  %i.hk = ptrtoint ptr %i.t to i64
  %i.hl = ptrtoint ptr %i.u to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit63

_ZNSt6vectorIhSaIhEED2Ev.exit63:                  ; preds = %bb.ag, %_ZNSt6vectorImSaImEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.48", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 4611686018427387903
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 1
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !230
  store i16 0, ptr %i.o, align 2, !tbaa !8
  %i.r = getelementptr i8, ptr %i.o, i64 2        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 1   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !231
  %i.y = icmp slt i64 %3, 0
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc49 unwind label %bb.g

.noexc49:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #24
          to label %.noexc50 unwind label %bb.g   ; 5 uses

.noexc50:                                         ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.z, i64 %3      ; 2 uses
  store i8 0, ptr %i.z, align 1, !tbaa !7
  %i.ab = add nsw i64 %3, -1                      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.e, %.noexc50, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %.noexc50 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.071.0 = phi ptr [ %i.z, %bb.e ], [ %i.z, %.noexc50 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIthEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.071.0)
          to label %.preheader100 unwind label %bb.h

.preheader100:                                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader100
  %i.ae = icmp sgt i32 %i.j, 1
  br i1 %i.ae, label %.preheader.preheader, label %._crit_edge114.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.af = lshr i64 %i.h, 4                        ; 2 uses
  %i.ag = and i64 %i.h, 34359738352
  %i.ah = icmp eq i64 %i.ag, 16
  %unroll_iter = and i64 %i.af, 2147483646
  %i.ai = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.ai, 0
  %lcmp.mod223 = trunc i64 %i.af to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038113 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.aj = mul nsw i64 %.038113, %i.k
  %i.ak = getelementptr [2 x i8], ptr %i.w, i64 %i.aj ; 3 uses
  %i.al = add nuw nsw i64 %.038113, 1             ; 3 uses
  %i.am = mul i64 %i.al, %i.k
  %i.an = getelementptr [2 x i8], ptr %i.w, i64 %i.am ; 3 uses
  br i1 %i.ah, label %.epil.preheader, label %.preheader.new

._crit_edge114.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ao = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ao, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge114.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc54 unwind label %bb.ae

.noexc54:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge114.split
  %i.ap = shl nuw nsw i64 %3, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc55 unwind label %bb.ae  ; 21 uses

.noexc55:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 4 uses
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit61

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.aw = getelementptr [2 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.ax = xor i64 %indvars.iv.epil.init, -1
  %i.ay = getelementptr [2 x i8], ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load i16, ptr %i.aw, align 2, !tbaa !8
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !8
  store i16 %i.ba, ptr %i.aw, align 2, !tbaa !8
  store i16 %i.az, ptr %i.ay, align 2, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond142.not = icmp eq i64 %i.al, %3
  br i1 %exitcond142.not, label %._crit_edge114.split, label %.preheader, !llvm.loop !232

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bb = getelementptr [2 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bc = xor i64 %indvars.iv, -1
  %i.bd = getelementptr [2 x i8], ptr %i.an, i64 %i.bc ; 2 uses
  %i.be = load i16, ptr %i.bb, align 2, !tbaa !8
  %i.bf = load i16, ptr %i.bd, align 2, !tbaa !8
  store i16 %i.bf, ptr %i.bb, align 2, !tbaa !8
  store i16 %i.be, ptr %i.bd, align 2, !tbaa !8
  %i.bg = getelementptr [2 x i8], ptr %i.ak, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 2      ; 2 uses
  %i.bi = xor i64 %indvars.iv, -2
  %i.bj = getelementptr [2 x i8], ptr %i.an, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bh, align 2, !tbaa !8
  %i.bl = load i16, ptr %i.bj, align 2, !tbaa !8
  store i16 %i.bl, ptr %i.bh, align 2, !tbaa !8
  store i16 %i.bk, ptr %i.bj, align 2, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !233

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc55
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.as, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc55
  %.0.i.i.i.i.i5391.idx = phi i64 [ %.idx.i.i.i.i.i.i.i52, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc55 ] ; 6 uses
  %.0.i.i.i.i.i5391.ptr = getelementptr i8, ptr %i.ar, i64 %.0.i.i.i.i.i5391.idx ; 4 uses
  %i.bm = lshr exact i64 %.0.i.i.i.i.i5391.idx, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5391.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bn, 2305843009213693948     ; 4 uses
  %i.bo = shl nuw i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.br, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %.0.i.i.i.i.i5391.ptr
  br i1 %i.bu, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !235

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bv = ptrtoint ptr %i.aq to i64
  %i.bw = add nuw i64 %.0.i.i.i.i.i5391.idx, 8    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.aq, ptr %.0.i.i.i.i.i5391.ptr, i64 noundef %i.ca, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cb = icmp sgt i64 %i.bw, 128
  %i.cc = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  br i1 %i.cc, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.ce = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.cg = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cf, %i.ce
  %i.ci = mul nsw i64 %i.cg, %i.ce
  %i.cj = getelementptr [2 x i8], ptr %i.w, i64 %i.ci ; 2 uses
  %i.ck = getelementptr [2 x i8], ptr %i.w, i64 %i.ch
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.j, !llvm.loop !236

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.i ]
  %i.cl = getelementptr [2 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !8  ; 3 uses
  %i.cn = getelementptr [2 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !8  ; 3 uses
  %i.cp = icmp ult i16 %i.cm, %i.co
  %i.cq = icmp ule i16 %i.cm, %i.co
  %..0.i.i.i.i.i.i = select i1 %i.cq, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i16 %i.cm, %i.co
  %.1.i.i.i.i.i.i = select i1 %i.cp, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.j
  br i1 %.1.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cr = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cr, label %bb.l, label %bb.m, !prof !54

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cf, ptr %i.cs, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.o
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.o ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ct = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.ce
  %i.cv = getelementptr [2 x i8], ptr %i.w, i64 %i.cu
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.p ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.p ]
  %i.cw = getelementptr [2 x i8], ptr %i.cj, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !8  ; 3 uses
  %i.cy = getelementptr [2 x i8], ptr %i.cv, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !8  ; 3 uses
  %i.da = icmp ult i16 %i.cx, %i.cz
  %i.db = icmp ule i16 %i.cx, %i.cz
  %..0.i.i.us.i.i.i.i.i = select i1 %i.db, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i16 %i.cx, %i.cz
  %.1.i.i.us.i.i.i.i.i = select i1 %i.da, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.n
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.ct, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.n, !llvm.loop !236

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.p, %bb.l, %bb.m
  %.sroa.07.016.us.i.i.i.i.i189.sink = phi ptr [ %i.aq, %bb.l ], [ %i.aq, %bb.m ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.p ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cg, ptr %.sroa.07.016.us.i.i.i.i.i189.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dc = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !237

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dd = icmp eq i64 %.0.i.i.i.i.i5391.idx, 120
  br i1 %i.dd, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.de = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.ce
  %i.dg = getelementptr [2 x i8], ptr %i.w, i64 %i.df
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.r, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.ce
  %i.dj = getelementptr [2 x i8], ptr %i.w, i64 %i.di
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.s ]
  %i.dk = getelementptr [2 x i8], ptr %i.dg, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !8  ; 3 uses
  %i.dm = getelementptr [2 x i8], ptr %i.dj, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !8  ; 3 uses
  %i.do = icmp ult i16 %i.dl, %i.dn
  %i.dp = icmp ule i16 %i.dl, %i.dn
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i16 %i.dl, %i.dn
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.q
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dh, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.q, !llvm.loop !236

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.s
  store i64 %i.de, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %.0.i.i.i.i.i5391.ptr
  br i1 %i.dr, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !238

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ds = icmp ne i64 %.0.i.i.i.i.i5391.idx, 0
  %or.cond = select i1 %i.ds, i1 %i.cc, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dt = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.du = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.dv = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dw = mul nsw i64 %i.du, %i.dt
  %i.dx = mul nsw i64 %i.dv, %i.dt
  %i.dy = getelementptr [2 x i8], ptr %i.w, i64 %i.dx ; 2 uses
  %i.dz = getelementptr [2 x i8], ptr %i.w, i64 %i.dw
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.u, !llvm.loop !236

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.t ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.t ]
  %i.ea = getelementptr [2 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !8  ; 3 uses
  %i.ec = getelementptr [2 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !8  ; 3 uses
  %i.ee = icmp ult i16 %i.eb, %i.ed
  %i.ef = icmp ule i16 %i.eb, %i.ed
  %..0.i.i.i30.i.i.i = select i1 %i.ef, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i16 %i.eb, %i.ed
  %.1.i.i.i32.i.i.i = select i1 %i.ee, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.u
  br i1 %.1.i.i.i32.i.i.i, label %bb.v, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.v:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eg = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eh = sub i64 %i.eg, %i.bv                    ; 3 uses
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %bb.w, label %bb.x, !prof !54

bb.w:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.el = sub nsw i64 0, %i.ei
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.en = icmp eq i64 %i.eh, 8
  br i1 %i.en, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.du, ptr %i.eo, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.aa
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.aa ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.ep = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = getelementptr [2 x i8], ptr %i.w, i64 %i.eq
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.ab ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.ab ]
  %i.es = getelementptr [2 x i8], ptr %i.dy, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i16, ptr %i.es, align 2, !tbaa !8  ; 3 uses
  %i.eu = getelementptr [2 x i8], ptr %i.er, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !8  ; 3 uses
  %i.ew = icmp ult i16 %i.et, %i.ev
  %i.ex = icmp ule i16 %i.et, %i.ev
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ex, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i16 %i.et, %i.ev
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ew, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.ab, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.z
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.ep, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.ab:                                            ; preds = %bb.z
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.z, !llvm.loop !236

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.ab, %bb.w, %bb.x, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i193.sink = phi ptr [ %i.aq, %bb.w ], [ %i.aq, %bb.y ], [ %i.aq, %bb.x ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.ab ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dv, ptr %.sroa.07.016.us.i.i36.i.i.i193.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ey = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5391.ptr
  br i1 %i.ey, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !237

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ez = icmp slt i32 %i.j, 1
  %i.fa = lshr exact i64 %i.h, 2
  %.idx.i.i = and i64 %i.fa, 4294967295           ; 3 uses
  br i1 %i.ez, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %.sroa.071.0, i64 %3, i1 false), !tbaa !7
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter224 = and i64 %3, 1
  %i.fb = icmp eq i64 %i.as, 0
  br i1 %i.fb, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader
  %unroll_iter227 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader: ; preds = %.lr.ph.split
  %xtraiter229 = and i64 %3, 3                    ; 3 uses
  %i.fc = icmp ult i64 %3, 4
  br i1 %i.fc, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader
  %unroll_iter232 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122:        ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new
  %.0117.us119 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.ge, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122 ] ; 6 uses
  %.030116.us120 = phi ptr [ %i.w, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122 ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS_6TensorEPT_PT0_l:bb.a
  ret void

bb.ae:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new
  %.0117 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 4 uses
  %.030116 = phi ptr [ %i.w, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %.031115 = phi ptr [ %1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %niter228 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %niter228.next.1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.071.0, i64 %.0117
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !7
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %.0117
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.031115, ptr align 2 %.030116, i64 %.idx.i.i, i1 false)
  %i.gz = getelementptr inbounds [2 x i8], ptr %.030116, i64 %i.k ; 2 uses
  %i.ha = getelementptr inbounds [2 x i8], ptr %.031115, i64 %i.k ; 2 uses
  %i.hb = or disjoint i64 %.0117, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.071.0, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !7
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %i.hb
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ha, ptr align 2 %i.gz, i64 %.idx.i.i, i1 false)
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.k ; 2 uses
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = add nuw nsw i64 %.0117, 2               ; 2 uses
  %niter228.next.1 = add i64 %niter228, 2         ; 2 uses
  %niter228.ncmp.1 = icmp eq i64 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1, label %.loopexit.loopexit209.unr-lcssa, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, !llvm.loop !239

bb.af:                                            ; preds = %bb.ae, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.gv, %bb.ae ] ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.sroa.071.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIhSaIhEED2Ev.exit61, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = ptrtoint ptr %.sroa.11.0 to i64
  %i.hj = ptrtoint ptr %.sroa.071.0 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.hk) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit61

_ZNSt6vectorIhSaIhEED2Ev.exit61:                  ; preds = %bb.ag, %bb.af, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %.pn.pn.pn, %bb.af ], [ %.pn.pn.pn, %bb.ag ]
  %.not.i.i.i62 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorItSaItEED2Ev.exit63, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit61
  %i.hl = ptrtoint ptr %i.v to i64
  %i.hm = ptrtoint ptr %i.w to i64
  %i.hn = sub i64 %i.hl, %i.hm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hn) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit63

_ZNSt6vectorItSaItEED2Ev.exit63:                  ; preds = %bb.ah, %_ZNSt6vectorIhSaIhEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.48", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 4611686018427387903
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 1
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !230
  store i16 0, ptr %i.o, align 2, !tbaa !8
  %i.r = getelementptr i8, ptr %i.o, i64 2        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 1   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !231
  %i.y = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i47

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc53 unwind label %bb.f

.noexc53:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i47: ; preds = %bb.b
  %.not.i.i.i.i48 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit55, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i47
  %i.z = shl nuw nsw i64 %3, 1
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc54 unwind label %bb.f   ; 5 uses

.noexc54:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i16 0, ptr %i.aa, align 2, !tbaa !8
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit55, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49: ; preds = %.noexc54
  %i.ae = getelementptr i8, ptr %i.aa, i64 2
  %.idx.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.ac, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i50, i1 false), !tbaa !8
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit55

_ZNSt6vectorItSaItEEC2EmRKS0_.exit55:             ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49, %.noexc54, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i47
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49 ], [ %i.ab, %.noexc54 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i47 ] ; 2 uses
  %.sroa.077.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49 ], [ %i.aa, %.noexc54 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i47 ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIttEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.077.0)
          to label %.preheader106 unwind label %bb.g

.preheader106:                                    ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit55
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader106
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %._crit_edge120.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod229 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038119 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038119, %i.k
  %i.al = getelementptr [2 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038119, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [2 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

._crit_edge120.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ap, label %bb.e, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %._crit_edge120.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc59 unwind label %bb.ad

.noexc59:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge120.split
  %i.aq = shl nuw nsw i64 %3, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24
          to label %.noexc60 unwind label %bb.ad  ; 21 uses

.noexc60:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 4 uses
  %i.at = add nsw i64 %3, -1                      ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit67

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit55
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.ax = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = xor i64 %indvars.iv.epil.init, -1
  %i.az = getelementptr [2 x i8], ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i16, ptr %i.ax, align 2, !tbaa !8
  %i.bb = load i16, ptr %i.az, align 2, !tbaa !8
  store i16 %i.bb, ptr %i.ax, align 2, !tbaa !8
  store i16 %i.ba, ptr %i.az, align 2, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond148.not = icmp eq i64 %i.am, %3
  br i1 %exitcond148.not, label %._crit_edge120.split, label %.preheader, !llvm.loop !241

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bd = xor i64 %indvars.iv, -1
  %i.be = getelementptr [2 x i8], ptr %i.ao, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.bc, align 2, !tbaa !8
  %i.bg = load i16, ptr %i.be, align 2, !tbaa !8
  store i16 %i.bg, ptr %i.bc, align 2, !tbaa !8
  store i16 %i.bf, ptr %i.be, align 2, !tbaa !8
  %i.bh = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 2      ; 2 uses
  %i.bj = xor i64 %indvars.iv, -2
  %i.bk = getelementptr [2 x i8], ptr %i.ao, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.bi, align 2, !tbaa !8
  %i.bm = load i16, ptr %i.bk, align 2, !tbaa !8
  store i16 %i.bm, ptr %i.bi, align 2, !tbaa !8
  store i16 %i.bl, ptr %i.bk, align 2, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !242

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc60
  %.idx.i.i.i.i.i.i.i57 = shl nuw nsw i64 %i.at, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i57, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc60
  %.0.i.i.i.i.i5897.idx = phi i64 [ %.idx.i.i.i.i.i.i.i57, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc60 ] ; 6 uses
  %.0.i.i.i.i.i5897.ptr = getelementptr i8, ptr %i.as, i64 %.0.i.i.i.i.i5897.idx ; 4 uses
  %i.bn = lshr exact i64 %.0.i.i.i.i.i5897.idx, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5897.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bo, 2305843009213693948     ; 4 uses
  %i.bp = shl nuw i64 %n.vec, 3
  %i.bq = getelementptr i8, ptr %i.ar, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.br = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bs, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ar, %.lr.ph.preheader.i ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.0.i.i.i.i.i5897.ptr
  br i1 %i.bv, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !244

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bw = ptrtoint ptr %i.ar to i64
  %i.bx = add nuw i64 %.0.i.i.i.i.i5897.idx, 8    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ar, ptr %.0.i.i.i.i.i5897.ptr, i64 noundef %i.cb, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cc = icmp sgt i64 %i.bx, 128
  %i.cd = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  br i1 %i.cd, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cf = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ci = mul nsw i64 %i.cg, %i.cf
  %i.cj = mul nsw i64 %i.ch, %i.cf
  %i.ck = getelementptr [2 x i8], ptr %i.w, i64 %i.cj ; 2 uses
  %i.cl = getelementptr [2 x i8], ptr %i.w, i64 %i.ci
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.i, !llvm.loop !245

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ]
  %i.cm = getelementptr [2 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !8  ; 3 uses
  %i.co = getelementptr [2 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i.i.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !8  ; 3 uses
  %i.cq = icmp ult i16 %i.cn, %i.cp
  %i.cr = icmp ule i16 %i.cn, %i.cp
  %..0.i.i.i.i.i.i = select i1 %i.cr, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i16 %i.cn, %i.cp
  %.1.i.i.i.i.i.i = select i1 %i.cq, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.i
  br i1 %.1.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cs = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cs, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cg, ptr %i.ct, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.n
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.n ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.cf
  %i.cw = getelementptr [2 x i8], ptr %i.w, i64 %i.cv
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.o ]
  %i.cx = getelementptr [2 x i8], ptr %i.ck, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !8  ; 3 uses
  %i.cz = getelementptr [2 x i8], ptr %i.cw, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !8  ; 3 uses
  %i.db = icmp ult i16 %i.cy, %i.da
  %i.dc = icmp ule i16 %i.cy, %i.da
  %..0.i.i.us.i.i.i.i.i = select i1 %i.dc, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i16 %i.cy, %i.da
  %.1.i.i.us.i.i.i.i.i = select i1 %i.db, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cu, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.m, !llvm.loop !245

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.o, %bb.k, %bb.l
  %.sroa.07.016.us.i.i.i.i.i195.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.o ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ch, ptr %.sroa.07.016.us.i.i.i.i.i195.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !246

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.de = icmp eq i64 %.0.i.i.i.i.i5897.idx, 120
  br i1 %i.de, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.ce, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.df = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cf
  %i.dh = getelementptr [2 x i8], ptr %i.w, i64 %i.dg
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.di = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.cf
  %i.dk = getelementptr [2 x i8], ptr %i.w, i64 %i.dj
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.r ]
  %i.dl = getelementptr [2 x i8], ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !8  ; 3 uses
  %i.dn = getelementptr [2 x i8], ptr %i.dk, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !8  ; 3 uses
  %i.dp = icmp ult i16 %i.dm, %i.do
  %i.dq = icmp ule i16 %i.dm, %i.do
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dq, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i16 %i.dm, %i.do
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.p
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.di, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.p, !llvm.loop !245

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.r
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %.0.i.i.i.i.i5897.ptr
  br i1 %i.ds, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !247

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dt = icmp ne i64 %.0.i.i.i.i.i5897.idx, 0
  %or.cond = select i1 %i.dt, i1 %i.cd, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.du = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.as, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dv = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dx = mul nsw i64 %i.dv, %i.du
  %i.dy = mul nsw i64 %i.dw, %i.du
  %i.dz = getelementptr [2 x i8], ptr %i.w, i64 %i.dy ; 2 uses
  %i.ea = getelementptr [2 x i8], ptr %i.w, i64 %i.dx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.du
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.t, !llvm.loop !245

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.s ]
  %i.eb = getelementptr [2 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !8  ; 3 uses
  %i.ed = getelementptr [2 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !8  ; 3 uses
  %i.ef = icmp ult i16 %i.ec, %i.ee
  %i.eg = icmp ule i16 %i.ec, %i.ee
  %..0.i.i.i30.i.i.i = select i1 %i.eg, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i16 %i.ec, %i.ee
  %.1.i.i.i32.i.i.i = select i1 %i.ef, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.t
  br i1 %.1.i.i.i32.i.i.i, label %bb.u, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eh = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ei = sub i64 %i.eh, %i.bw                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.v, label %bb.w, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.em = sub nsw i64 0, %i.ej
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.ei, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.eo = icmp eq i64 %i.ei, 8
  br i1 %i.eo, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dv, ptr %i.ep, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.z ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.er = mul nsw i64 %i.eq, %i.du
  %i.es = getelementptr [2 x i8], ptr %i.w, i64 %i.er
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.aa ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.aa ]
  %i.et = getelementptr [2 x i8], ptr %i.dz, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !8  ; 3 uses
  %i.ev = getelementptr [2 x i8], ptr %i.es, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !8  ; 3 uses
  %i.ex = icmp ult i16 %i.eu, %i.ew
  %i.ey = icmp ule i16 %i.eu, %i.ew
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ey, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i16 %i.eu, %i.ew
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ex, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.y
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eq, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.du
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.y, !llvm.loop !245

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.aa, %bb.v, %bb.w, %bb.x
  %.sroa.07.016.us.i.i36.i.i.i199.sink = phi ptr [ %i.ar, %bb.v ], [ %i.ar, %bb.x ], [ %i.ar, %bb.w ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.aa ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dw, ptr %.sroa.07.016.us.i.i36.i.i.i199.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5897.ptr
  br i1 %i.ez, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !246

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.fa = icmp slt i32 %i.j, 1
  %i.fb = lshr exact i64 %i.h, 2
  %.idx.i.i = and i64 %i.fb, 4294967295           ; 3 uses
  br i1 %i.fa, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fc = shl nuw nsw i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 2 %.sroa.077.0, i64 %i.fc, i1 false), !tbaa !8
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 1
  %i.fd = icmp eq i64 %i.at, 0
  br i1 %i.fd, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.preheader: ; preds = %.lr.ph.split
  %xtraiter235 = and i64 %3, 3                    ; 3 uses
  %i.fe = icmp ult i64 %3, 4
  br i1 %i.fe, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.preheader
  %unroll_iter238 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128:        ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.preheader.new
  %.0123.us125 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128.preheader.new ], [ %i.gg, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us128 ] ; 6 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS_6TensorEPT_PT0_l:bb.a
  ret void

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new
  %.0123 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hj, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 4 uses
  %.030122 = phi ptr [ %i.w, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %.031121 = phi ptr [ %1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %niter234 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %niter234.next.1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ]
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.077.0, i64 %.0123
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !8
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0123
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.031121, ptr align 2 %.030122, i64 %.idx.i.i, i1 false)
  %i.hb = getelementptr inbounds [2 x i8], ptr %.030122, i64 %i.k ; 2 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %.031121, i64 %i.k ; 2 uses
  %i.hd = or disjoint i64 %.0123, 1               ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.sroa.077.0, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !8
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.hd
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hc, ptr align 2 %i.hb, i64 %.idx.i.i, i1 false)
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.hc, i64 %i.k ; 2 uses
  %i.hj = add nuw nsw i64 %.0123, 2               ; 2 uses
  %niter234.next.1 = add i64 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %.loopexit.loopexit215.unr-lcssa, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, !llvm.loop !248

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.gx, %bb.ad ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorItSaItEED2Ev.exit67, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = ptrtoint ptr %.sroa.11.0 to i64
  %i.hl = ptrtoint ptr %.sroa.077.0 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.0, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit67

_ZNSt6vectorItSaItEED2Ev.exit67:                  ; preds = %bb.af, %bb.ae, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.af ]
  %.not.i.i.i68 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorItSaItEED2Ev.exit69, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit67
  %i.hn = ptrtoint ptr %i.v to i64
  %i.ho = ptrtoint ptr %i.w to i64
  %i.hp = sub i64 %i.hn, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hp) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit69

_ZNSt6vectorItSaItEED2Ev.exit69:                  ; preds = %bb.ag, %_ZNSt6vectorItSaItEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.48", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 4611686018427387903
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 1
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !230
  store i16 0, ptr %i.o, align 2, !tbaa !8
  %i.r = getelementptr i8, ptr %i.o, i64 2        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 1   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !231
  %i.y = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc50 unwind label %bb.f

.noexc50:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = shl nuw nsw i64 %3, 2
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc51 unwind label %bb.f   ; 5 uses

.noexc51:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %i.ae = getelementptr i8, ptr %i.aa, i64 4
  %.idx.i.i.i.i.i.i.i48 = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i48, i1 false), !tbaa !3
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ab, %.noexc51 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.072.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc51 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorItjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.072.0)
          to label %.preheader101 unwind label %bb.g

.preheader101:                                    ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader101
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %._crit_edge115.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod224 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038114 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038114, %i.k
  %i.al = getelementptr [2 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038114, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [2 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

._crit_edge115.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ap, label %bb.e, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %._crit_edge115.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc55 unwind label %bb.ad

.noexc55:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge115.split
  %i.aq = shl nuw nsw i64 %3, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24
          to label %.noexc56 unwind label %bb.ad  ; 21 uses

.noexc56:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 4 uses
  %i.at = add nsw i64 %3, -1                      ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit62

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.ax = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = xor i64 %indvars.iv.epil.init, -1
  %i.az = getelementptr [2 x i8], ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i16, ptr %i.ax, align 2, !tbaa !8
  %i.bb = load i16, ptr %i.az, align 2, !tbaa !8
  store i16 %i.bb, ptr %i.ax, align 2, !tbaa !8
  store i16 %i.ba, ptr %i.az, align 2, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond143.not = icmp eq i64 %i.am, %3
  br i1 %exitcond143.not, label %._crit_edge115.split, label %.preheader, !llvm.loop !250

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bd = xor i64 %indvars.iv, -1
  %i.be = getelementptr [2 x i8], ptr %i.ao, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.bc, align 2, !tbaa !8
  %i.bg = load i16, ptr %i.be, align 2, !tbaa !8
  store i16 %i.bg, ptr %i.bc, align 2, !tbaa !8
  store i16 %i.bf, ptr %i.be, align 2, !tbaa !8
  %i.bh = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 2      ; 2 uses
  %i.bj = xor i64 %indvars.iv, -2
  %i.bk = getelementptr [2 x i8], ptr %i.ao, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.bi, align 2, !tbaa !8
  %i.bm = load i16, ptr %i.bk, align 2, !tbaa !8
  store i16 %i.bm, ptr %i.bi, align 2, !tbaa !8
  store i16 %i.bl, ptr %i.bk, align 2, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !251

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc56
  %.idx.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.at, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i53, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc56
  %.0.i.i.i.i.i5492.idx = phi i64 [ %.idx.i.i.i.i.i.i.i53, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc56 ] ; 6 uses
  %.0.i.i.i.i.i5492.ptr = getelementptr i8, ptr %i.as, i64 %.0.i.i.i.i.i5492.idx ; 4 uses
  %i.bn = lshr exact i64 %.0.i.i.i.i.i5492.idx, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5492.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bo, 2305843009213693948     ; 4 uses
  %i.bp = shl nuw i64 %n.vec, 3
  %i.bq = getelementptr i8, ptr %i.ar, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.br = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bs, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ar, %.lr.ph.preheader.i ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.0.i.i.i.i.i5492.ptr
  br i1 %i.bv, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !253

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bw = ptrtoint ptr %i.ar to i64
  %i.bx = add nuw i64 %.0.i.i.i.i.i5492.idx, 8    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ar, ptr %.0.i.i.i.i.i5492.ptr, i64 noundef %i.cb, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cc = icmp sgt i64 %i.bx, 128
  %i.cd = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  br i1 %i.cd, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cf = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ci = mul nsw i64 %i.cg, %i.cf
  %i.cj = mul nsw i64 %i.ch, %i.cf
  %i.ck = getelementptr [2 x i8], ptr %i.w, i64 %i.cj ; 2 uses
  %i.cl = getelementptr [2 x i8], ptr %i.w, i64 %i.ci
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.i, !llvm.loop !254

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ]
  %i.cm = getelementptr [2 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !8  ; 3 uses
  %i.co = getelementptr [2 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i.i.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !8  ; 3 uses
  %i.cq = icmp ult i16 %i.cn, %i.cp
  %i.cr = icmp ule i16 %i.cn, %i.cp
  %..0.i.i.i.i.i.i = select i1 %i.cr, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i16 %i.cn, %i.cp
  %.1.i.i.i.i.i.i = select i1 %i.cq, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.i
  br i1 %.1.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cs = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cs, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cg, ptr %i.ct, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.n
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.n ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.cf
  %i.cw = getelementptr [2 x i8], ptr %i.w, i64 %i.cv
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.o ]
  %i.cx = getelementptr [2 x i8], ptr %i.ck, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !8  ; 3 uses
  %i.cz = getelementptr [2 x i8], ptr %i.cw, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !8  ; 3 uses
  %i.db = icmp ult i16 %i.cy, %i.da
  %i.dc = icmp ule i16 %i.cy, %i.da
  %..0.i.i.us.i.i.i.i.i = select i1 %i.dc, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i16 %i.cy, %i.da
  %.1.i.i.us.i.i.i.i.i = select i1 %i.db, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cu, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.m, !llvm.loop !254

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.o, %bb.k, %bb.l
  %.sroa.07.016.us.i.i.i.i.i190.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.o ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ch, ptr %.sroa.07.016.us.i.i.i.i.i190.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !255

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.de = icmp eq i64 %.0.i.i.i.i.i5492.idx, 120
  br i1 %i.de, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.ce, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.df = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cf
  %i.dh = getelementptr [2 x i8], ptr %i.w, i64 %i.dg
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.di = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.cf
  %i.dk = getelementptr [2 x i8], ptr %i.w, i64 %i.dj
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.r ]
  %i.dl = getelementptr [2 x i8], ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !8  ; 3 uses
  %i.dn = getelementptr [2 x i8], ptr %i.dk, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !8  ; 3 uses
  %i.dp = icmp ult i16 %i.dm, %i.do
  %i.dq = icmp ule i16 %i.dm, %i.do
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dq, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i16 %i.dm, %i.do
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.p
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.di, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.p, !llvm.loop !254

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.r
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %.0.i.i.i.i.i5492.ptr
  br i1 %i.ds, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !256

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dt = icmp ne i64 %.0.i.i.i.i.i5492.idx, 0
  %or.cond = select i1 %i.dt, i1 %i.cd, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.du = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.as, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dv = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dx = mul nsw i64 %i.dv, %i.du
  %i.dy = mul nsw i64 %i.dw, %i.du
  %i.dz = getelementptr [2 x i8], ptr %i.w, i64 %i.dy ; 2 uses
  %i.ea = getelementptr [2 x i8], ptr %i.w, i64 %i.dx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.du
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.t, !llvm.loop !254

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.s ]
  %i.eb = getelementptr [2 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !8  ; 3 uses
  %i.ed = getelementptr [2 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !8  ; 3 uses
  %i.ef = icmp ult i16 %i.ec, %i.ee
  %i.eg = icmp ule i16 %i.ec, %i.ee
  %..0.i.i.i30.i.i.i = select i1 %i.eg, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i16 %i.ec, %i.ee
  %.1.i.i.i32.i.i.i = select i1 %i.ef, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.t
  br i1 %.1.i.i.i32.i.i.i, label %bb.u, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eh = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ei = sub i64 %i.eh, %i.bw                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.v, label %bb.w, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.em = sub nsw i64 0, %i.ej
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.ei, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.eo = icmp eq i64 %i.ei, 8
  br i1 %i.eo, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dv, ptr %i.ep, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.z ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.er = mul nsw i64 %i.eq, %i.du
  %i.es = getelementptr [2 x i8], ptr %i.w, i64 %i.er
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.aa ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.aa ]
  %i.et = getelementptr [2 x i8], ptr %i.dz, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !8  ; 3 uses
  %i.ev = getelementptr [2 x i8], ptr %i.es, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !8  ; 3 uses
  %i.ex = icmp ult i16 %i.eu, %i.ew
  %i.ey = icmp ule i16 %i.eu, %i.ew
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ey, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i16 %i.eu, %i.ew
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ex, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.y
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eq, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.du
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.y, !llvm.loop !254

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.aa, %bb.v, %bb.w, %bb.x
  %.sroa.07.016.us.i.i36.i.i.i194.sink = phi ptr [ %i.ar, %bb.v ], [ %i.ar, %bb.x ], [ %i.ar, %bb.w ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.aa ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dw, ptr %.sroa.07.016.us.i.i36.i.i.i194.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5492.ptr
  br i1 %i.ez, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !255

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.fa = icmp slt i32 %i.j, 1
  %i.fb = lshr exact i64 %i.h, 2
  %.idx.i.i = and i64 %i.fb, 4294967295           ; 3 uses
  br i1 %i.fa, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fc = shl nuw nsw i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %.sroa.072.0, i64 %i.fc, i1 false), !tbaa !3
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter225 = and i64 %3, 1
  %i.fd = icmp eq i64 %i.at, 0
  br i1 %i.fd, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader
  %unroll_iter228 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.preheader: ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 3                    ; 3 uses
  %i.fe = icmp ult i64 %3, 4
  br i1 %i.fe, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123:        ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.preheader.new
  %.0118.us120 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123.preheader.new ], [ %i.gg, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us123 ] ; 6 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS_6TensorEPT_PT0_l:bb.a

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.gu = ptrtoint ptr %i.v to i64
  %i.gv = ptrtoint ptr %i.w to i64
  %i.gw = sub i64 %i.gu, %i.gv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.gw) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new
  %.0118 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hj, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 4 uses
  %.030117 = phi ptr [ %i.w, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %.031116 = phi ptr [ %1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %niter229 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %niter229.next.1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.072.0, i64 %.0118
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0118
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.031116, ptr align 2 %.030117, i64 %.idx.i.i, i1 false)
  %i.hb = getelementptr inbounds [2 x i8], ptr %.030117, i64 %i.k ; 2 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %.031116, i64 %i.k ; 2 uses
  %i.hd = or disjoint i64 %.0118, 1               ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.072.0, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hd
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hc, ptr align 2 %i.hb, i64 %.idx.i.i, i1 false)
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.hc, i64 %i.k ; 2 uses
  %i.hj = add nuw nsw i64 %.0118, 2               ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %.loopexit.loopexit210.unr-lcssa, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, !llvm.loop !257

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.gx, %bb.ad ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.072.0, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIjSaIjEED2Ev.exit62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = ptrtoint ptr %.sroa.11.0 to i64
  %i.hl = ptrtoint ptr %.sroa.072.0 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit62

_ZNSt6vectorIjSaIjEED2Ev.exit62:                  ; preds = %bb.af, %bb.ae, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.af ]
  %.not.i.i.i63 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorItSaItEED2Ev.exit64, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit62
  %i.hn = ptrtoint ptr %i.v to i64
  %i.ho = ptrtoint ptr %i.w to i64
  %i.hp = sub i64 %i.hn, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hp) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit64

_ZNSt6vectorItSaItEED2Ev.exit64:                  ; preds = %bb.ag, %_ZNSt6vectorIjSaIjEED2Ev.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.48", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 4611686018427387903
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 1
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !230
  store i16 0, ptr %i.o, align 2, !tbaa !8
  %i.r = getelementptr i8, ptr %i.o, i64 2        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 1   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !231
  %i.y = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc50 unwind label %bb.e

.noexc50:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = shl nuw nsw i64 %3, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc51 unwind label %bb.e   ; 5 uses

.noexc51:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !10
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.idx.i.i.i.i.i.i.i48 = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i48, i1 false), !tbaa !10
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ab, %.noexc51 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.072.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc51 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorItmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.072.0)
          to label %.preheader101 unwind label %bb.f

.preheader101:                                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader101
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %.loopexit183

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod224 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038114 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038114, %i.k
  %i.al = getelementptr [2 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038114, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [2 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

.loopexit183:                                     ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = shl nuw nsw i64 %3, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc56 unwind label %bb.ac  ; 21 uses

.noexc56:                                         ; preds = %.loopexit183
  store i64 0, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 4 uses
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit62

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.aw = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ax = xor i64 %indvars.iv.epil.init, -1
  %i.ay = getelementptr [2 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i16, ptr %i.aw, align 2, !tbaa !8
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !8
  store i16 %i.ba, ptr %i.aw, align 2, !tbaa !8
  store i16 %i.az, ptr %i.ay, align 2, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond142.not = icmp eq i64 %i.am, %3
  br i1 %exitcond142.not, label %.loopexit183, label %.preheader, !llvm.loop !259

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bb = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bc = xor i64 %indvars.iv, -1
  %i.bd = getelementptr [2 x i8], ptr %i.ao, i64 %i.bc ; 2 uses
  %i.be = load i16, ptr %i.bb, align 2, !tbaa !8
  %i.bf = load i16, ptr %i.bd, align 2, !tbaa !8
  store i16 %i.bf, ptr %i.bb, align 2, !tbaa !8
  store i16 %i.be, ptr %i.bd, align 2, !tbaa !8
  %i.bg = getelementptr [2 x i8], ptr %i.al, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 2      ; 2 uses
  %i.bi = xor i64 %indvars.iv, -2
  %i.bj = getelementptr [2 x i8], ptr %i.ao, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bh, align 2, !tbaa !8
  %i.bl = load i16, ptr %i.bj, align 2, !tbaa !8
  store i16 %i.bl, ptr %i.bh, align 2, !tbaa !8
  store i16 %i.bk, ptr %i.bj, align 2, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !260

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc56
  %.idx.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.as, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i53, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc56
  %.0.i.i.i.i.i5492.idx = phi i64 [ %.idx.i.i.i.i.i.i.i53, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc56 ] ; 6 uses
  %.0.i.i.i.i.i5492.ptr = getelementptr i8, ptr %i.ar, i64 %.0.i.i.i.i.i5492.idx ; 4 uses
  %i.bm = lshr exact i64 %.0.i.i.i.i.i5492.idx, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5492.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bn, 2305843009213693948     ; 4 uses
  %i.bo = shl nuw i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.br, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %.0.i.i.i.i.i5492.ptr
  br i1 %i.bu, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !262

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bv = ptrtoint ptr %i.aq to i64
  %i.bw = add nuw i64 %.0.i.i.i.i.i5492.idx, 8    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.aq, ptr %.0.i.i.i.i.i5492.ptr, i64 noundef %i.ca, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cb = icmp sgt i64 %i.bw, 128
  %i.cc = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  br i1 %i.cc, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.ce = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.cg = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cf, %i.ce
  %i.ci = mul nsw i64 %i.cg, %i.ce
  %i.cj = getelementptr [2 x i8], ptr %i.w, i64 %i.ci ; 2 uses
  %i.ck = getelementptr [2 x i8], ptr %i.w, i64 %i.ch
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.h, !llvm.loop !263

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.g ]
  %i.cl = getelementptr [2 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !8  ; 3 uses
  %i.cn = getelementptr [2 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !8  ; 3 uses
  %i.cp = icmp ult i16 %i.cm, %i.co
  %i.cq = icmp ule i16 %i.cm, %i.co
  %..0.i.i.i.i.i.i = select i1 %i.cq, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i16 %i.cm, %i.co
  %.1.i.i.i.i.i.i = select i1 %i.cp, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.h
  br i1 %.1.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cr = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cr, label %bb.j, label %bb.k, !prof !54

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cf, ptr %i.cs, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.m
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.m ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ct = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.ce
  %i.cv = getelementptr [2 x i8], ptr %i.w, i64 %i.cu
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.n ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.n ]
  %i.cw = getelementptr [2 x i8], ptr %i.cj, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !8  ; 3 uses
  %i.cy = getelementptr [2 x i8], ptr %i.cv, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !8  ; 3 uses
  %i.da = icmp ult i16 %i.cx, %i.cz
  %i.db = icmp ule i16 %i.cx, %i.cz
  %..0.i.i.us.i.i.i.i.i = select i1 %i.db, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i16 %i.cx, %i.cz
  %.1.i.i.us.i.i.i.i.i = select i1 %i.da, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.l
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.ct, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !llvm.loop !263

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.n, %bb.j, %bb.k
  %.sroa.07.016.us.i.i.i.i.i190.sink = phi ptr [ %i.aq, %bb.j ], [ %i.aq, %bb.k ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.n ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cg, ptr %.sroa.07.016.us.i.i.i.i.i190.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dc = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !264

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dd = icmp eq i64 %.0.i.i.i.i.i5492.idx, 120
  br i1 %i.dd, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.de = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.ce
  %i.dg = getelementptr [2 x i8], ptr %i.w, i64 %i.df
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.p, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.p ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.ce
  %i.dj = getelementptr [2 x i8], ptr %i.w, i64 %i.di
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.q ]
  %i.dk = getelementptr [2 x i8], ptr %i.dg, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !8  ; 3 uses
  %i.dm = getelementptr [2 x i8], ptr %i.dj, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !8  ; 3 uses
  %i.do = icmp ult i16 %i.dl, %i.dn
  %i.dp = icmp ule i16 %i.dl, %i.dn
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i16 %i.dl, %i.dn
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.o
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dh, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.o, !llvm.loop !263

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.q
  store i64 %i.de, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %.0.i.i.i.i.i5492.ptr
  br i1 %i.dr, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !265

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ds = icmp ne i64 %.0.i.i.i.i.i5492.idx, 0
  %or.cond = select i1 %i.ds, i1 %i.cc, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dt = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.du = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.dv = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dw = mul nsw i64 %i.du, %i.dt
  %i.dx = mul nsw i64 %i.dv, %i.dt
  %i.dy = getelementptr [2 x i8], ptr %i.w, i64 %i.dx ; 2 uses
  %i.dz = getelementptr [2 x i8], ptr %i.w, i64 %i.dw
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.s, !llvm.loop !263

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.r ]
  %i.ea = getelementptr [2 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !8  ; 3 uses
  %i.ec = getelementptr [2 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !8  ; 3 uses
  %i.ee = icmp ult i16 %i.eb, %i.ed
  %i.ef = icmp ule i16 %i.eb, %i.ed
  %..0.i.i.i30.i.i.i = select i1 %i.ef, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i16 %i.eb, %i.ed
  %.1.i.i.i32.i.i.i = select i1 %i.ee, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.s
  br i1 %.1.i.i.i32.i.i.i, label %bb.t, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eg = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eh = sub i64 %i.eg, %i.bv                    ; 3 uses
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %bb.u, label %bb.v, !prof !54

bb.u:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.el = sub nsw i64 0, %i.ei
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.en = icmp eq i64 %i.eh, 8
  br i1 %i.en, label %bb.w, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.du, ptr %i.eo, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.y ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.ep = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = getelementptr [2 x i8], ptr %i.w, i64 %i.eq
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.z ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.z ]
  %i.es = getelementptr [2 x i8], ptr %i.dy, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i16, ptr %i.es, align 2, !tbaa !8  ; 3 uses
  %i.eu = getelementptr [2 x i8], ptr %i.er, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !8  ; 3 uses
  %i.ew = icmp ult i16 %i.et, %i.ev
  %i.ex = icmp ule i16 %i.et, %i.ev
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ex, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i16 %i.et, %i.ev
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ew, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.x
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.ep, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.z:                                             ; preds = %bb.x
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.x, !llvm.loop !263

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.z, %bb.u, %bb.v, %bb.w
  %.sroa.07.016.us.i.i36.i.i.i194.sink = phi ptr [ %i.aq, %bb.u ], [ %i.aq, %bb.w ], [ %i.aq, %bb.v ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.z ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dv, ptr %.sroa.07.016.us.i.i36.i.i.i194.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ey = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5492.ptr
  br i1 %i.ey, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !264

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ez = icmp slt i32 %i.j, 1
  %i.fa = lshr exact i64 %i.h, 2
  %.idx.i.i = and i64 %i.fa, 4294967295           ; 3 uses
  br i1 %i.ez, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fb = shl nuw nsw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %.sroa.072.0, i64 %i.fb, i1 false), !tbaa !10
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter225 = and i64 %3, 1
  %i.fc = icmp eq i64 %i.as, 0
  br i1 %i.fc, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader
  %unroll_iter228 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader: ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 3                    ; 3 uses
  %i.fd = icmp ult i64 %3, 4
  br i1 %i.fd, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.epil.preheader, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new: ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122:        ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new
  %.0117.us119 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.gf, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.us122 ] ; 6 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS_6TensorEPT_PT0_l:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ac:                                            ; preds = %.loopexit183
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new
  %.0117 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 4 uses
  %.030116 = phi ptr [ %i.w, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %.031115 = phi ptr [ %1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ] ; 2 uses
  %niter229 = phi i64 [ 0, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit.preheader.new ], [ %niter229.next.1, %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0, i64 %.0117
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !10
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0117
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.031115, ptr align 2 %.030116, i64 %.idx.i.i, i1 false)
  %i.ha = getelementptr inbounds [2 x i8], ptr %.030116, i64 %i.k ; 2 uses
  %i.hb = getelementptr inbounds [2 x i8], ptr %.031115, i64 %i.k ; 2 uses
  %i.hc = or disjoint i64 %.0117, 1               ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hc
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hb, ptr align 2 %i.ha, i64 %.idx.i.i, i1 false)
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = add nuw nsw i64 %.0117, 2               ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %.loopexit.loopexit210.unr-lcssa, label %_ZSt6copy_nIPKtiPtET1_T_T0_S3_.exit, !llvm.loop !266

bb.ad:                                            ; preds = %bb.ac, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.gw, %bb.ac ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.072.0, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorImSaImEED2Ev.exit62, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = ptrtoint ptr %.sroa.11.0 to i64
  %i.hk = ptrtoint ptr %.sroa.072.0 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0, i64 noundef %i.hl) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit62

_ZNSt6vectorImSaImEED2Ev.exit62:                  ; preds = %bb.ae, %bb.ad, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.e ], [ %.pn.pn.pn, %bb.ad ], [ %.pn.pn.pn, %bb.ae ]
  %.not.i.i.i63 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorItSaItEED2Ev.exit64, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit62
  %i.hm = ptrtoint ptr %i.v to i64
  %i.hn = ptrtoint ptr %i.w to i64
  %i.ho = sub i64 %i.hm, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ho) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit64

_ZNSt6vectorItSaItEED2Ev.exit64:                  ; preds = %bb.af, %_ZNSt6vectorImSaImEED2Ev.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !271
  store i32 0, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !272
  %i.y = icmp slt i64 %3, 0
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc49 unwind label %bb.g

.noexc49:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #24
          to label %.noexc50 unwind label %bb.g   ; 5 uses

.noexc50:                                         ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.z, i64 %3      ; 2 uses
  store i8 0, ptr %i.z, align 1, !tbaa !7
  %i.ab = add nsw i64 %3, -1                      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.e, %.noexc50, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %.noexc50 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.071.0 = phi ptr [ %i.z, %bb.e ], [ %i.z, %.noexc50 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.071.0)
          to label %.preheader100 unwind label %bb.h

.preheader100:                                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader100
  %i.ae = icmp sgt i32 %i.j, 1
  br i1 %i.ae, label %.preheader.preheader, label %._crit_edge114.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.af = lshr i64 %i.h, 4                        ; 2 uses
  %i.ag = and i64 %i.h, 34359738352
  %i.ah = icmp eq i64 %i.ag, 16
  %unroll_iter = and i64 %i.af, 2147483646
  %i.ai = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.ai, 0
  %lcmp.mod223 = trunc i64 %i.af to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038113 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.aj = mul nsw i64 %.038113, %i.k
  %i.ak = getelementptr [4 x i8], ptr %i.w, i64 %i.aj ; 3 uses
  %i.al = add nuw nsw i64 %.038113, 1             ; 3 uses
  %i.am = mul i64 %i.al, %i.k
  %i.an = getelementptr [4 x i8], ptr %i.w, i64 %i.am ; 3 uses
  br i1 %i.ah, label %.epil.preheader, label %.preheader.new

._crit_edge114.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ao = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ao, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge114.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc54 unwind label %bb.ae

.noexc54:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge114.split
  %i.ap = shl nuw nsw i64 %3, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc55 unwind label %bb.ae  ; 21 uses

.noexc55:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 4 uses
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit61

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.aw = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.ax = xor i64 %indvars.iv.epil.init, -1
  %i.ay = getelementptr [4 x i8], ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !3
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond142.not = icmp eq i64 %i.al, %3
  br i1 %exitcond142.not, label %._crit_edge114.split, label %.preheader, !llvm.loop !273

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bb = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bc = xor i64 %indvars.iv, -1
  %i.bd = getelementptr [4 x i8], ptr %i.an, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !3
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !3
  %i.bg = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 4      ; 2 uses
  %i.bi = xor i64 %indvars.iv, -2
  %i.bj = getelementptr [4 x i8], ptr %i.an, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !3
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !274

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc55
  %.idx.i.i.i.i.i.i.i52 = shl nuw nsw i64 %i.as, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i52, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc55
  %.0.i.i.i.i.i5391.idx = phi i64 [ %.idx.i.i.i.i.i.i.i52, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc55 ] ; 6 uses
  %.0.i.i.i.i.i5391.ptr = getelementptr i8, ptr %i.ar, i64 %.0.i.i.i.i.i5391.idx ; 4 uses
  %i.bm = lshr exact i64 %.0.i.i.i.i.i5391.idx, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5391.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bn, 2305843009213693948     ; 4 uses
  %i.bo = shl nuw i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.br, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %.0.i.i.i.i.i5391.ptr
  br i1 %i.bu, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !276

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bv = ptrtoint ptr %i.aq to i64
  %i.bw = add nuw i64 %.0.i.i.i.i.i5391.idx, 8    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.aq, ptr %.0.i.i.i.i.i5391.ptr, i64 noundef %i.ca, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cb = icmp sgt i64 %i.bw, 128
  %i.cc = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  br i1 %i.cc, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.ce = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.cg = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cf, %i.ce
  %i.ci = mul nsw i64 %i.cg, %i.ce
  %i.cj = getelementptr [4 x i8], ptr %i.w, i64 %i.ci ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.w, i64 %i.ch
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.j, !llvm.loop !277

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.i ]
  %i.cl = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 3 uses
  %i.cp = icmp ult i32 %i.cm, %i.co
  %i.cq = icmp ule i32 %i.cm, %i.co
  %..0.i.i.i.i.i.i = select i1 %i.cq, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i32 %i.cm, %i.co
  %.1.i.i.i.i.i.i = select i1 %i.cp, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.j
  br i1 %.1.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cr = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cr, label %bb.l, label %bb.m, !prof !54

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cf, ptr %i.cs, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.o
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.o ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ct = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.ce
  %i.cv = getelementptr [4 x i8], ptr %i.w, i64 %i.cu
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.p ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.p ]
  %i.cw = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3  ; 3 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3  ; 3 uses
  %i.da = icmp ult i32 %i.cx, %i.cz
  %i.db = icmp ule i32 %i.cx, %i.cz
  %..0.i.i.us.i.i.i.i.i = select i1 %i.db, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i32 %i.cx, %i.cz
  %.1.i.i.us.i.i.i.i.i = select i1 %i.da, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.n
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.ct, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.n, !llvm.loop !277

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.p, %bb.l, %bb.m
  %.sroa.07.016.us.i.i.i.i.i189.sink = phi ptr [ %i.aq, %bb.l ], [ %i.aq, %bb.m ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.p ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cg, ptr %.sroa.07.016.us.i.i.i.i.i189.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dc = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !278

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dd = icmp eq i64 %.0.i.i.i.i.i5391.idx, 120
  br i1 %i.dd, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.de = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.ce
  %i.dg = getelementptr [4 x i8], ptr %i.w, i64 %i.df
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.r, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.ce
  %i.dj = getelementptr [4 x i8], ptr %i.w, i64 %i.di
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.s ]
  %i.dk = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3  ; 3 uses
  %i.dm = getelementptr [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3  ; 3 uses
  %i.do = icmp ult i32 %i.dl, %i.dn
  %i.dp = icmp ule i32 %i.dl, %i.dn
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i32 %i.dl, %i.dn
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.q
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dh, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.q, !llvm.loop !277

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.s
  store i64 %i.de, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %.0.i.i.i.i.i5391.ptr
  br i1 %i.dr, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !279

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ds = icmp ne i64 %.0.i.i.i.i.i5391.idx, 0
  %or.cond = select i1 %i.ds, i1 %i.cc, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dt = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.du = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.dv = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dw = mul nsw i64 %i.du, %i.dt
  %i.dx = mul nsw i64 %i.dv, %i.dt
  %i.dy = getelementptr [4 x i8], ptr %i.w, i64 %i.dx ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.w, i64 %i.dw
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.u, !llvm.loop !277

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.t ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.t ]
  %i.ea = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3  ; 3 uses
  %i.ec = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3  ; 3 uses
  %i.ee = icmp ult i32 %i.eb, %i.ed
  %i.ef = icmp ule i32 %i.eb, %i.ed
  %..0.i.i.i30.i.i.i = select i1 %i.ef, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i32 %i.eb, %i.ed
  %.1.i.i.i32.i.i.i = select i1 %i.ee, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.u
  br i1 %.1.i.i.i32.i.i.i, label %bb.v, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.v:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eg = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eh = sub i64 %i.eg, %i.bv                    ; 3 uses
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %bb.w, label %bb.x, !prof !54

bb.w:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.el = sub nsw i64 0, %i.ei
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.en = icmp eq i64 %i.eh, 8
  br i1 %i.en, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.du, ptr %i.eo, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.aa
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.aa ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.ep = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = getelementptr [4 x i8], ptr %i.w, i64 %i.eq
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.ab ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.ab ]
  %i.es = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %i.er, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 3 uses
  %i.ew = icmp ult i32 %i.et, %i.ev
  %i.ex = icmp ule i32 %i.et, %i.ev
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ex, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i32 %i.et, %i.ev
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ew, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.ab, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.z
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.ep, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.ab:                                            ; preds = %bb.z
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.z, !llvm.loop !277

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.ab, %bb.w, %bb.x, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i193.sink = phi ptr [ %i.aq, %bb.w ], [ %i.aq, %bb.y ], [ %i.aq, %bb.x ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.ab ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dv, ptr %.sroa.07.016.us.i.i36.i.i.i193.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ey = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5391.ptr
  br i1 %i.ey, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !278

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ez = icmp slt i32 %i.j, 1
  %i.fa = lshr exact i64 %i.h, 1
  %.idx.i.i = and i64 %i.fa, 8589934588           ; 3 uses
  br i1 %i.ez, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %.sroa.071.0, i64 %3, i1 false), !tbaa !7
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter224 = and i64 %3, 1
  %i.fb = icmp eq i64 %i.as, 0
  br i1 %i.fb, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader
  %unroll_iter227 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader: ; preds = %.lr.ph.split
  %xtraiter229 = and i64 %3, 3                    ; 3 uses
  %i.fc = icmp ult i64 %3, 4
  br i1 %i.fc, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader
  %unroll_iter232 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122:        ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new
  %.0117.us119 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.ge, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122 ] ; 6 uses
  %.030116.us120 = phi ptr [ %i.w, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122 ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS_6TensorEPT_PT0_l:bb.a
  ret void

bb.ae:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new
  %.0117 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 4 uses
  %.030116 = phi ptr [ %i.w, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %.031115 = phi ptr [ %1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %niter228 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %niter228.next.1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.071.0, i64 %.0117
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !7
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %.0117
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.031115, ptr align 4 %.030116, i64 %.idx.i.i, i1 false)
  %i.gz = getelementptr inbounds [4 x i8], ptr %.030116, i64 %i.k ; 2 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %.031115, i64 %i.k ; 2 uses
  %i.hb = or disjoint i64 %.0117, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.071.0, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !7
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %i.hb
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ha, ptr align 4 %i.gz, i64 %.idx.i.i, i1 false)
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.k ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = add nuw nsw i64 %.0117, 2               ; 2 uses
  %niter228.next.1 = add i64 %niter228, 2         ; 2 uses
  %niter228.ncmp.1 = icmp eq i64 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1, label %.loopexit.loopexit209.unr-lcssa, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, !llvm.loop !280

bb.af:                                            ; preds = %bb.ae, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.gv, %bb.ae ] ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.sroa.071.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIhSaIhEED2Ev.exit61, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = ptrtoint ptr %.sroa.11.0 to i64
  %i.hj = ptrtoint ptr %.sroa.071.0 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.hk) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit61

_ZNSt6vectorIhSaIhEED2Ev.exit61:                  ; preds = %bb.ag, %bb.af, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %.pn.pn.pn, %bb.af ], [ %.pn.pn.pn, %bb.ag ]
  %.not.i.i.i62 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIjSaIjEED2Ev.exit63, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit61
  %i.hl = ptrtoint ptr %i.v to i64
  %i.hm = ptrtoint ptr %i.w to i64
  %i.hn = sub i64 %i.hl, %i.hm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hn) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit63

_ZNSt6vectorIjSaIjEED2Ev.exit63:                  ; preds = %bb.ah, %_ZNSt6vectorIhSaIhEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !271
  store i32 0, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !272
  %i.y = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc50 unwind label %bb.f

.noexc50:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = shl nuw nsw i64 %3, 1
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc51 unwind label %bb.f   ; 5 uses

.noexc51:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i16 0, ptr %i.aa, align 2, !tbaa !8
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %i.ae = getelementptr i8, ptr %i.aa, i64 2
  %.idx.i.i.i.i.i.i.i48 = shl nuw nsw i64 %i.ac, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i48, i1 false), !tbaa !8
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ab, %.noexc51 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.072.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc51 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.072.0)
          to label %.preheader101 unwind label %bb.g

.preheader101:                                    ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader101
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %._crit_edge115.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod224 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038114 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038114, %i.k
  %i.al = getelementptr [4 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038114, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [4 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

._crit_edge115.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ap, label %bb.e, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %._crit_edge115.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc55 unwind label %bb.ad

.noexc55:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge115.split
  %i.aq = shl nuw nsw i64 %3, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24
          to label %.noexc56 unwind label %bb.ad  ; 21 uses

.noexc56:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 4 uses
  %i.at = add nsw i64 %3, -1                      ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit62

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.ax = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = xor i64 %indvars.iv.epil.init, -1
  %i.az = getelementptr [4 x i8], ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond143.not = icmp eq i64 %i.am, %3
  br i1 %exitcond143.not, label %._crit_edge115.split, label %.preheader, !llvm.loop !282

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bd = xor i64 %indvars.iv, -1
  %i.be = getelementptr [4 x i8], ptr %i.ao, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  %i.bh = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 4      ; 2 uses
  %i.bj = xor i64 %indvars.iv, -2
  %i.bk = getelementptr [4 x i8], ptr %i.ao, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !283

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc56
  %.idx.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.at, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i53, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc56
  %.0.i.i.i.i.i5492.idx = phi i64 [ %.idx.i.i.i.i.i.i.i53, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc56 ] ; 6 uses
  %.0.i.i.i.i.i5492.ptr = getelementptr i8, ptr %i.as, i64 %.0.i.i.i.i.i5492.idx ; 4 uses
  %i.bn = lshr exact i64 %.0.i.i.i.i.i5492.idx, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5492.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bo, 2305843009213693948     ; 4 uses
  %i.bp = shl nuw i64 %n.vec, 3
  %i.bq = getelementptr i8, ptr %i.ar, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.br = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bs, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ar, %.lr.ph.preheader.i ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.0.i.i.i.i.i5492.ptr
  br i1 %i.bv, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !285

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bw = ptrtoint ptr %i.ar to i64
  %i.bx = add nuw i64 %.0.i.i.i.i.i5492.idx, 8    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ar, ptr %.0.i.i.i.i.i5492.ptr, i64 noundef %i.cb, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cc = icmp sgt i64 %i.bx, 128
  %i.cd = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  br i1 %i.cd, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cf = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ci = mul nsw i64 %i.cg, %i.cf
  %i.cj = mul nsw i64 %i.ch, %i.cf
  %i.ck = getelementptr [4 x i8], ptr %i.w, i64 %i.cj ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.w, i64 %i.ci
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.i, !llvm.loop !286

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ]
  %i.cm = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3  ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i.i.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 3 uses
  %i.cq = icmp ult i32 %i.cn, %i.cp
  %i.cr = icmp ule i32 %i.cn, %i.cp
  %..0.i.i.i.i.i.i = select i1 %i.cr, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i32 %i.cn, %i.cp
  %.1.i.i.i.i.i.i = select i1 %i.cq, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.i
  br i1 %.1.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cs = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cs, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cg, ptr %i.ct, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.n
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.n ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.cf
  %i.cw = getelementptr [4 x i8], ptr %i.w, i64 %i.cv
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.o ]
  %i.cx = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3  ; 3 uses
  %i.cz = getelementptr [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3  ; 3 uses
  %i.db = icmp ult i32 %i.cy, %i.da
  %i.dc = icmp ule i32 %i.cy, %i.da
  %..0.i.i.us.i.i.i.i.i = select i1 %i.dc, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i32 %i.cy, %i.da
  %.1.i.i.us.i.i.i.i.i = select i1 %i.db, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cu, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.m, !llvm.loop !286

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.o, %bb.k, %bb.l
  %.sroa.07.016.us.i.i.i.i.i190.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.o ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ch, ptr %.sroa.07.016.us.i.i.i.i.i190.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !287

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.de = icmp eq i64 %.0.i.i.i.i.i5492.idx, 120
  br i1 %i.de, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.ce, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.df = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cf
  %i.dh = getelementptr [4 x i8], ptr %i.w, i64 %i.dg
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.di = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.cf
  %i.dk = getelementptr [4 x i8], ptr %i.w, i64 %i.dj
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.r ]
  %i.dl = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3  ; 3 uses
  %i.dn = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3  ; 3 uses
  %i.dp = icmp ult i32 %i.dm, %i.do
  %i.dq = icmp ule i32 %i.dm, %i.do
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dq, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i32 %i.dm, %i.do
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.p
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.di, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.p, !llvm.loop !286

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.r
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %.0.i.i.i.i.i5492.ptr
  br i1 %i.ds, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !288

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dt = icmp ne i64 %.0.i.i.i.i.i5492.idx, 0
  %or.cond = select i1 %i.dt, i1 %i.cd, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.du = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.as, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dv = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dx = mul nsw i64 %i.dv, %i.du
  %i.dy = mul nsw i64 %i.dw, %i.du
  %i.dz = getelementptr [4 x i8], ptr %i.w, i64 %i.dy ; 2 uses
  %i.ea = getelementptr [4 x i8], ptr %i.w, i64 %i.dx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.du
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.t, !llvm.loop !286

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.s ]
  %i.eb = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3  ; 3 uses
  %i.ed = getelementptr [4 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3  ; 3 uses
  %i.ef = icmp ult i32 %i.ec, %i.ee
  %i.eg = icmp ule i32 %i.ec, %i.ee
  %..0.i.i.i30.i.i.i = select i1 %i.eg, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i32 %i.ec, %i.ee
  %.1.i.i.i32.i.i.i = select i1 %i.ef, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.t
  br i1 %.1.i.i.i32.i.i.i, label %bb.u, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eh = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ei = sub i64 %i.eh, %i.bw                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.v, label %bb.w, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.em = sub nsw i64 0, %i.ej
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.ei, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.eo = icmp eq i64 %i.ei, 8
  br i1 %i.eo, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dv, ptr %i.ep, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.z ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.er = mul nsw i64 %i.eq, %i.du
  %i.es = getelementptr [4 x i8], ptr %i.w, i64 %i.er
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.aa ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.aa ]
  %i.et = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 3 uses
  %i.ev = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3  ; 3 uses
  %i.ex = icmp ult i32 %i.eu, %i.ew
  %i.ey = icmp ule i32 %i.eu, %i.ew
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ey, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i32 %i.eu, %i.ew
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ex, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.y
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eq, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.du
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.y, !llvm.loop !286

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.aa, %bb.v, %bb.w, %bb.x
  %.sroa.07.016.us.i.i36.i.i.i194.sink = phi ptr [ %i.ar, %bb.v ], [ %i.ar, %bb.x ], [ %i.ar, %bb.w ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.aa ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dw, ptr %.sroa.07.016.us.i.i36.i.i.i194.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5492.ptr
  br i1 %i.ez, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !287

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.fa = icmp slt i32 %i.j, 1
  %i.fb = lshr exact i64 %i.h, 1
  %.idx.i.i = and i64 %i.fb, 8589934588           ; 3 uses
  br i1 %i.fa, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fc = shl nuw nsw i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 2 %.sroa.072.0, i64 %i.fc, i1 false), !tbaa !8
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter225 = and i64 %3, 1
  %i.fd = icmp eq i64 %i.at, 0
  br i1 %i.fd, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader
  %unroll_iter228 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.preheader: ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 3                    ; 3 uses
  %i.fe = icmp ult i64 %3, 4
  br i1 %i.fe, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123:        ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.preheader.new
  %.0118.us120 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123.preheader.new ], [ %i.gg, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us123 ] ; 6 uses
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS_6TensorEPT_PT0_l:bb.a
  ret void

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new
  %.0118 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hj, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 4 uses
  %.030117 = phi ptr [ %i.w, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %.031116 = phi ptr [ %1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %niter229 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %niter229.next.1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ]
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.072.0, i64 %.0118
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !8
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0118
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.031116, ptr align 4 %.030117, i64 %.idx.i.i, i1 false)
  %i.hb = getelementptr inbounds [4 x i8], ptr %.030117, i64 %i.k ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %.031116, i64 %i.k ; 2 uses
  %i.hd = or disjoint i64 %.0118, 1               ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.sroa.072.0, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !8
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.hd
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hc, ptr align 4 %i.hb, i64 %.idx.i.i, i1 false)
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.k ; 2 uses
  %i.hj = add nuw nsw i64 %.0118, 2               ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %.loopexit.loopexit210.unr-lcssa, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, !llvm.loop !289

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.gx, %bb.ad ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.072.0, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorItSaItEED2Ev.exit62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = ptrtoint ptr %.sroa.11.0 to i64
  %i.hl = ptrtoint ptr %.sroa.072.0 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit62

_ZNSt6vectorItSaItEED2Ev.exit62:                  ; preds = %bb.af, %bb.ae, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.af ]
  %.not.i.i.i63 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIjSaIjEED2Ev.exit64, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit62
  %i.hn = ptrtoint ptr %i.v to i64
  %i.ho = ptrtoint ptr %i.w to i64
  %i.hp = sub i64 %i.hn, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hp) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit64

_ZNSt6vectorIjSaIjEED2Ev.exit64:                  ; preds = %bb.ag, %_ZNSt6vectorItSaItEED2Ev.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !271
  store i32 0, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !272
  %i.y = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i47

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc53 unwind label %bb.f

.noexc53:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i47: ; preds = %bb.b
  %.not.i.i.i.i48 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit55, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i47
  %i.z = shl nuw nsw i64 %3, 2
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc54 unwind label %bb.f   ; 5 uses

.noexc54:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit55, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49: ; preds = %.noexc54
  %i.ae = getelementptr i8, ptr %i.aa, i64 4
  %.idx.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i50, i1 false), !tbaa !3
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit55

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit55:             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49, %.noexc54, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i47
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49 ], [ %i.ab, %.noexc54 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i47 ] ; 2 uses
  %.sroa.077.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i49 ], [ %i.aa, %.noexc54 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i47 ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.077.0)
          to label %.preheader106 unwind label %bb.g

.preheader106:                                    ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit55
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader106
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %._crit_edge120.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod229 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038119 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038119, %i.k
  %i.al = getelementptr [4 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038119, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [4 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

._crit_edge120.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ap, label %bb.e, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %._crit_edge120.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc59 unwind label %bb.ad

.noexc59:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge120.split
  %i.aq = shl nuw nsw i64 %3, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24
          to label %.noexc60 unwind label %bb.ad  ; 21 uses

.noexc60:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 4 uses
  %i.at = add nsw i64 %3, -1                      ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit67

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit55
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.ax = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = xor i64 %indvars.iv.epil.init, -1
  %i.az = getelementptr [4 x i8], ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond148.not = icmp eq i64 %i.am, %3
  br i1 %exitcond148.not, label %._crit_edge120.split, label %.preheader, !llvm.loop !291

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bd = xor i64 %indvars.iv, -1
  %i.be = getelementptr [4 x i8], ptr %i.ao, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  %i.bh = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 4      ; 2 uses
  %i.bj = xor i64 %indvars.iv, -2
  %i.bk = getelementptr [4 x i8], ptr %i.ao, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !292

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc60
  %.idx.i.i.i.i.i.i.i57 = shl nuw nsw i64 %i.at, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i57, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc60
  %.0.i.i.i.i.i5897.idx = phi i64 [ %.idx.i.i.i.i.i.i.i57, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc60 ] ; 6 uses
  %.0.i.i.i.i.i5897.ptr = getelementptr i8, ptr %i.as, i64 %.0.i.i.i.i.i5897.idx ; 4 uses
  %i.bn = lshr exact i64 %.0.i.i.i.i.i5897.idx, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5897.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bo, 2305843009213693948     ; 4 uses
  %i.bp = shl nuw i64 %n.vec, 3
  %i.bq = getelementptr i8, ptr %i.ar, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.br = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bs, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ar, %.lr.ph.preheader.i ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.0.i.i.i.i.i5897.ptr
  br i1 %i.bv, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !294

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bw = ptrtoint ptr %i.ar to i64
  %i.bx = add nuw i64 %.0.i.i.i.i.i5897.idx, 8    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ar, ptr %.0.i.i.i.i.i5897.ptr, i64 noundef %i.cb, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cc = icmp sgt i64 %i.bx, 128
  %i.cd = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  br i1 %i.cd, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cf = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ci = mul nsw i64 %i.cg, %i.cf
  %i.cj = mul nsw i64 %i.ch, %i.cf
  %i.ck = getelementptr [4 x i8], ptr %i.w, i64 %i.cj ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.w, i64 %i.ci
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.i, !llvm.loop !295

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ]
  %i.cm = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3  ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i.i.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 3 uses
  %i.cq = icmp ult i32 %i.cn, %i.cp
  %i.cr = icmp ule i32 %i.cn, %i.cp
  %..0.i.i.i.i.i.i = select i1 %i.cr, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i32 %i.cn, %i.cp
  %.1.i.i.i.i.i.i = select i1 %i.cq, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.i
  br i1 %.1.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cs = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cs, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cg, ptr %i.ct, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.n
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.n ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.cf
  %i.cw = getelementptr [4 x i8], ptr %i.w, i64 %i.cv
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.o ]
  %i.cx = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3  ; 3 uses
  %i.cz = getelementptr [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3  ; 3 uses
  %i.db = icmp ult i32 %i.cy, %i.da
  %i.dc = icmp ule i32 %i.cy, %i.da
  %..0.i.i.us.i.i.i.i.i = select i1 %i.dc, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i32 %i.cy, %i.da
  %.1.i.i.us.i.i.i.i.i = select i1 %i.db, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cu, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.m, !llvm.loop !295

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.o, %bb.k, %bb.l
  %.sroa.07.016.us.i.i.i.i.i195.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.o ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ch, ptr %.sroa.07.016.us.i.i.i.i.i195.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !296

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.de = icmp eq i64 %.0.i.i.i.i.i5897.idx, 120
  br i1 %i.de, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.ce, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.df = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cf
  %i.dh = getelementptr [4 x i8], ptr %i.w, i64 %i.dg
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.di = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.cf
  %i.dk = getelementptr [4 x i8], ptr %i.w, i64 %i.dj
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.r ]
  %i.dl = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3  ; 3 uses
  %i.dn = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3  ; 3 uses
  %i.dp = icmp ult i32 %i.dm, %i.do
  %i.dq = icmp ule i32 %i.dm, %i.do
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dq, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i32 %i.dm, %i.do
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.p
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.di, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.p, !llvm.loop !295

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.r
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %.0.i.i.i.i.i5897.ptr
  br i1 %i.ds, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !297

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dt = icmp ne i64 %.0.i.i.i.i.i5897.idx, 0
  %or.cond = select i1 %i.dt, i1 %i.cd, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.du = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.as, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dv = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dx = mul nsw i64 %i.dv, %i.du
  %i.dy = mul nsw i64 %i.dw, %i.du
  %i.dz = getelementptr [4 x i8], ptr %i.w, i64 %i.dy ; 2 uses
  %i.ea = getelementptr [4 x i8], ptr %i.w, i64 %i.dx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.du
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.t, !llvm.loop !295

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.s ]
  %i.eb = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3  ; 3 uses
  %i.ed = getelementptr [4 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3  ; 3 uses
  %i.ef = icmp ult i32 %i.ec, %i.ee
  %i.eg = icmp ule i32 %i.ec, %i.ee
  %..0.i.i.i30.i.i.i = select i1 %i.eg, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i32 %i.ec, %i.ee
  %.1.i.i.i32.i.i.i = select i1 %i.ef, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.t
  br i1 %.1.i.i.i32.i.i.i, label %bb.u, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eh = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ei = sub i64 %i.eh, %i.bw                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.v, label %bb.w, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.em = sub nsw i64 0, %i.ej
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.ei, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.eo = icmp eq i64 %i.ei, 8
  br i1 %i.eo, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dv, ptr %i.ep, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.z ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.er = mul nsw i64 %i.eq, %i.du
  %i.es = getelementptr [4 x i8], ptr %i.w, i64 %i.er
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.aa ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.aa ]
  %i.et = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 3 uses
  %i.ev = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3  ; 3 uses
  %i.ex = icmp ult i32 %i.eu, %i.ew
  %i.ey = icmp ule i32 %i.eu, %i.ew
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ey, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i32 %i.eu, %i.ew
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ex, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.y
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eq, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.du
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.y, !llvm.loop !295

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.aa, %bb.v, %bb.w, %bb.x
  %.sroa.07.016.us.i.i36.i.i.i199.sink = phi ptr [ %i.ar, %bb.v ], [ %i.ar, %bb.x ], [ %i.ar, %bb.w ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.aa ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dw, ptr %.sroa.07.016.us.i.i36.i.i.i199.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5897.ptr
  br i1 %i.ez, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !296

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.fa = icmp slt i32 %i.j, 1
  %i.fb = lshr exact i64 %i.h, 1
  %.idx.i.i = and i64 %i.fb, 8589934588           ; 3 uses
  br i1 %i.fa, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fc = shl nuw nsw i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %.sroa.077.0, i64 %i.fc, i1 false), !tbaa !3
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 1
  %i.fd = icmp eq i64 %i.at, 0
  br i1 %i.fd, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.preheader: ; preds = %.lr.ph.split
  %xtraiter235 = and i64 %3, 3                    ; 3 uses
  %i.fe = icmp ult i64 %3, 4
  br i1 %i.fe, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.preheader
  %unroll_iter238 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128:        ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.preheader.new
  %.0123.us125 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128.preheader.new ], [ %i.gg, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us128 ] ; 6 uses
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS_6TensorEPT_PT0_l:bb.a

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.gu = ptrtoint ptr %i.v to i64
  %i.gv = ptrtoint ptr %i.w to i64
  %i.gw = sub i64 %i.gu, %i.gv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.gw) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit63

_ZNSt6vectorIjSaIjEED2Ev.exit63:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new
  %.0123 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hj, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 4 uses
  %.030122 = phi ptr [ %i.w, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %.031121 = phi ptr [ %1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %niter234 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %niter234.next.1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.077.0, i64 %.0123
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0123
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.031121, ptr align 4 %.030122, i64 %.idx.i.i, i1 false)
  %i.hb = getelementptr inbounds [4 x i8], ptr %.030122, i64 %i.k ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %.031121, i64 %i.k ; 2 uses
  %i.hd = or disjoint i64 %.0123, 1               ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.077.0, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hd
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hc, ptr align 4 %i.hb, i64 %.idx.i.i, i1 false)
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.k ; 2 uses
  %i.hj = add nuw nsw i64 %.0123, 2               ; 2 uses
  %niter234.next.1 = add i64 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %.loopexit.loopexit215.unr-lcssa, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, !llvm.loop !298

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.gx, %bb.ad ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIjSaIjEED2Ev.exit67, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = ptrtoint ptr %.sroa.11.0 to i64
  %i.hl = ptrtoint ptr %.sroa.077.0 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.0, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit67

_ZNSt6vectorIjSaIjEED2Ev.exit67:                  ; preds = %bb.af, %bb.ae, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.af ]
  %.not.i.i.i68 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIjSaIjEED2Ev.exit69, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit67
  %i.hn = ptrtoint ptr %i.v to i64
  %i.ho = ptrtoint ptr %i.w to i64
  %i.hp = sub i64 %i.hn, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hp) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit69

_ZNSt6vectorIjSaIjEED2Ev.exit69:                  ; preds = %bb.ag, %_ZNSt6vectorIjSaIjEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !271
  store i32 0, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !272
  %i.y = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc50 unwind label %bb.e

.noexc50:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = shl nuw nsw i64 %3, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc51 unwind label %bb.e   ; 5 uses

.noexc51:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !10
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.idx.i.i.i.i.i.i.i48 = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i48, i1 false), !tbaa !10
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ab, %.noexc51 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.072.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc51 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.072.0)
          to label %.preheader101 unwind label %bb.f

.preheader101:                                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader101
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %.loopexit183

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod224 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038114 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038114, %i.k
  %i.al = getelementptr [4 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038114, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [4 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

.loopexit183:                                     ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = shl nuw nsw i64 %3, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc56 unwind label %bb.ac  ; 21 uses

.noexc56:                                         ; preds = %.loopexit183
  store i64 0, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 4 uses
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit62

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.aw = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ax = xor i64 %indvars.iv.epil.init, -1
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !3
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond142.not = icmp eq i64 %i.am, %3
  br i1 %exitcond142.not, label %.loopexit183, label %.preheader, !llvm.loop !300

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bb = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bc = xor i64 %indvars.iv, -1
  %i.bd = getelementptr [4 x i8], ptr %i.ao, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !3
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !3
  %i.bg = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 4      ; 2 uses
  %i.bi = xor i64 %indvars.iv, -2
  %i.bj = getelementptr [4 x i8], ptr %i.ao, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !3
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !301

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %.noexc56
  %.idx.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.as, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i53, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.noexc56
  %.0.i.i.i.i.i5492.idx = phi i64 [ %.idx.i.i.i.i.i.i.i53, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ 0, %.noexc56 ] ; 6 uses
  %.0.i.i.i.i.i5492.ptr = getelementptr i8, ptr %i.ar, i64 %.0.i.i.i.i.i5492.idx ; 4 uses
  %i.bm = lshr exact i64 %.0.i.i.i.i.i5492.idx, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5492.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bn, 2305843009213693948     ; 4 uses
  %i.bo = shl nuw i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.br, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %.0.i.i.i.i.i5492.ptr
  br i1 %i.bu, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !303

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bv = ptrtoint ptr %i.aq to i64
  %i.bw = add nuw i64 %.0.i.i.i.i.i5492.idx, 8    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.aq, ptr %.0.i.i.i.i.i5492.ptr, i64 noundef %i.ca, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cb = icmp sgt i64 %i.bw, 128
  %i.cc = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  br i1 %i.cc, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.ce = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.cg = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cf, %i.ce
  %i.ci = mul nsw i64 %i.cg, %i.ce
  %i.cj = getelementptr [4 x i8], ptr %i.w, i64 %i.ci ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.w, i64 %i.ch
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.h, !llvm.loop !304

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.g ]
  %i.cl = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 3 uses
  %i.cp = icmp ult i32 %i.cm, %i.co
  %i.cq = icmp ule i32 %i.cm, %i.co
  %..0.i.i.i.i.i.i = select i1 %i.cq, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i32 %i.cm, %i.co
  %.1.i.i.i.i.i.i = select i1 %i.cp, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.h
  br i1 %.1.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cr = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cr, label %bb.j, label %bb.k, !prof !54

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cf, ptr %i.cs, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.m
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.m ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ct = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.ce
  %i.cv = getelementptr [4 x i8], ptr %i.w, i64 %i.cu
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.n ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.n ]
  %i.cw = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3  ; 3 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3  ; 3 uses
  %i.da = icmp ult i32 %i.cx, %i.cz
  %i.db = icmp ule i32 %i.cx, %i.cz
  %..0.i.i.us.i.i.i.i.i = select i1 %i.db, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i32 %i.cx, %i.cz
  %.1.i.i.us.i.i.i.i.i = select i1 %i.da, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.l
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.ct, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !llvm.loop !304

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.n, %bb.j, %bb.k
  %.sroa.07.016.us.i.i.i.i.i190.sink = phi ptr [ %i.aq, %bb.j ], [ %i.aq, %bb.k ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.n ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cg, ptr %.sroa.07.016.us.i.i.i.i.i190.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dc = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !305

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dd = icmp eq i64 %.0.i.i.i.i.i5492.idx, 120
  br i1 %i.dd, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.de = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.ce
  %i.dg = getelementptr [4 x i8], ptr %i.w, i64 %i.df
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.p, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.p ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.ce
  %i.dj = getelementptr [4 x i8], ptr %i.w, i64 %i.di
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.q ]
  %i.dk = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3  ; 3 uses
  %i.dm = getelementptr [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3  ; 3 uses
  %i.do = icmp ult i32 %i.dl, %i.dn
  %i.dp = icmp ule i32 %i.dl, %i.dn
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i32 %i.dl, %i.dn
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.o
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dh, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.o, !llvm.loop !304

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.q
  store i64 %i.de, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %.0.i.i.i.i.i5492.ptr
  br i1 %i.dr, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !306

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ds = icmp ne i64 %.0.i.i.i.i.i5492.idx, 0
  %or.cond = select i1 %i.ds, i1 %i.cc, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dt = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.du = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.dv = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dw = mul nsw i64 %i.du, %i.dt
  %i.dx = mul nsw i64 %i.dv, %i.dt
  %i.dy = getelementptr [4 x i8], ptr %i.w, i64 %i.dx ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.w, i64 %i.dw
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.s, !llvm.loop !304

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.r ]
  %i.ea = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3  ; 3 uses
  %i.ec = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3  ; 3 uses
  %i.ee = icmp ult i32 %i.eb, %i.ed
  %i.ef = icmp ule i32 %i.eb, %i.ed
  %..0.i.i.i30.i.i.i = select i1 %i.ef, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i32 %i.eb, %i.ed
  %.1.i.i.i32.i.i.i = select i1 %i.ee, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.s
  br i1 %.1.i.i.i32.i.i.i, label %bb.t, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eg = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eh = sub i64 %i.eg, %i.bv                    ; 3 uses
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %bb.u, label %bb.v, !prof !54

bb.u:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.el = sub nsw i64 0, %i.ei
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.en = icmp eq i64 %i.eh, 8
  br i1 %i.en, label %bb.w, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.du, ptr %i.eo, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.y ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.ep = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = getelementptr [4 x i8], ptr %i.w, i64 %i.eq
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.z ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.z ]
  %i.es = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %i.er, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 3 uses
  %i.ew = icmp ult i32 %i.et, %i.ev
  %i.ex = icmp ule i32 %i.et, %i.ev
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ex, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i32 %i.et, %i.ev
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ew, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.x
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.ep, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.z:                                             ; preds = %bb.x
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.x, !llvm.loop !304

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.z, %bb.u, %bb.v, %bb.w
  %.sroa.07.016.us.i.i36.i.i.i194.sink = phi ptr [ %i.aq, %bb.u ], [ %i.aq, %bb.w ], [ %i.aq, %bb.v ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.z ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dv, ptr %.sroa.07.016.us.i.i36.i.i.i194.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ey = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5492.ptr
  br i1 %i.ey, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !305

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ez = icmp slt i32 %i.j, 1
  %i.fa = lshr exact i64 %i.h, 1
  %.idx.i.i = and i64 %i.fa, 8589934588           ; 3 uses
  br i1 %i.ez, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fb = shl nuw nsw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %.sroa.072.0, i64 %i.fb, i1 false), !tbaa !10
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter225 = and i64 %3, 1
  %i.fc = icmp eq i64 %i.as, 0
  br i1 %i.fc, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader
  %unroll_iter228 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader: ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 3                    ; 3 uses
  %i.fd = icmp ult i64 %3, 4
  br i1 %i.fd, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.epil.preheader, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new: ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122:        ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new
  %.0117.us119 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122.preheader.new ], [ %i.gf, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us122 ] ; 6 uses
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS_6TensorEPT_PT0_l:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ac:                                            ; preds = %.loopexit183
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new
  %.0117 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 4 uses
  %.030116 = phi ptr [ %i.w, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %.031115 = phi ptr [ %1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ] ; 2 uses
  %niter229 = phi i64 [ 0, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.preheader.new ], [ %niter229.next.1, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0, i64 %.0117
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !10
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0117
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.031115, ptr align 4 %.030116, i64 %.idx.i.i, i1 false)
  %i.ha = getelementptr inbounds [4 x i8], ptr %.030116, i64 %i.k ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %.031115, i64 %i.k ; 2 uses
  %i.hc = or disjoint i64 %.0117, 1               ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hc
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hb, ptr align 4 %i.ha, i64 %.idx.i.i, i1 false)
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = add nuw nsw i64 %.0117, 2               ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %.loopexit.loopexit210.unr-lcssa, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, !llvm.loop !307

bb.ad:                                            ; preds = %bb.ac, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.gw, %bb.ac ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.072.0, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorImSaImEED2Ev.exit62, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = ptrtoint ptr %.sroa.11.0 to i64
  %i.hk = ptrtoint ptr %.sroa.072.0 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0, i64 noundef %i.hl) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit62

_ZNSt6vectorImSaImEED2Ev.exit62:                  ; preds = %bb.ae, %bb.ad, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.e ], [ %.pn.pn.pn, %bb.ad ], [ %.pn.pn.pn, %bb.ae ]
  %.not.i.i.i63 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIjSaIjEED2Ev.exit64, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit62
  %i.hm = ptrtoint ptr %i.v to i64
  %i.hn = ptrtoint ptr %i.w to i64
  %i.ho = sub i64 %i.hm, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ho) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit64

_ZNSt6vectorIjSaIjEED2Ev.exit64:                  ; preds = %bb.af, %_ZNSt6vectorImSaImEED2Ev.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.o, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %i.o, i64 8        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !50
  %i.y = icmp slt i64 %3, 0
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc49 unwind label %bb.g

.noexc49:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #24
          to label %.noexc50 unwind label %bb.g   ; 5 uses

.noexc50:                                         ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.z, i64 %3      ; 2 uses
  store i8 0, ptr %i.z, align 1, !tbaa !7
  %i.ab = add nsw i64 %3, -1                      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.e, %.noexc50, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %.noexc50 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.076.0 = phi ptr [ %i.z, %bb.e ], [ %i.z, %.noexc50 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIlhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.076.0)
          to label %.preheader105 unwind label %bb.h

.preheader105:                                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader105
  %i.ae = icmp sgt i32 %i.j, 1
  br i1 %i.ae, label %.preheader.preheader, label %._crit_edge119.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.af = lshr i64 %i.h, 4                        ; 2 uses
  %i.ag = and i64 %i.h, 34359738352
  %i.ah = icmp eq i64 %i.ag, 16
  %unroll_iter = and i64 %i.af, 2147483646
  %i.ai = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.ai, 0
  %lcmp.mod228 = trunc i64 %i.af to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038118 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.aj = mul nsw i64 %.038118, %i.k
  %i.ak = getelementptr [8 x i8], ptr %i.w, i64 %i.aj ; 3 uses
  %i.al = add nuw nsw i64 %.038118, 1             ; 3 uses
  %i.am = mul i64 %i.al, %i.k
  %i.an = getelementptr [8 x i8], ptr %i.w, i64 %i.am ; 3 uses
  br i1 %i.ah, label %.epil.preheader, label %.preheader.new

._crit_edge119.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ao = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ao, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i51

bb.f:                                             ; preds = %._crit_edge119.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc57 unwind label %bb.ae

.noexc57:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i51: ; preds = %._crit_edge119.split
  %i.ap = shl nuw nsw i64 %3, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc58 unwind label %bb.ae  ; 21 uses

.noexc58:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i51
  store i64 0, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 4 uses
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit59

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit66

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.aw = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.ax = xor i64 %indvars.iv.epil.init, -1
  %i.ay = getelementptr [8 x i8], ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !10
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !10
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond147.not = icmp eq i64 %i.al, %3
  br i1 %exitcond147.not, label %._crit_edge119.split, label %.preheader, !llvm.loop !309

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bb = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bc = xor i64 %indvars.iv, -1
  %i.bd = getelementptr [8 x i8], ptr %i.an, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !10
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !10
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !10
  %i.bg = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %i.bi = xor i64 %indvars.iv, -2
  %i.bj = getelementptr [8 x i8], ptr %i.an, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !10
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !10
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !310

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit59:             ; preds = %.noexc58
  %.idx.i.i.i.i.i.i.i54 = shl nuw nsw i64 %i.as, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i54, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit59, %.noexc58
  %.0.i.i.i.i.i5596.idx = phi i64 [ %.idx.i.i.i.i.i.i.i54, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit59 ], [ 0, %.noexc58 ] ; 6 uses
  %.0.i.i.i.i.i5596.ptr = getelementptr i8, ptr %i.ar, i64 %.0.i.i.i.i.i5596.idx ; 4 uses
  %i.bm = lshr exact i64 %.0.i.i.i.i.i5596.idx, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5596.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bn, 2305843009213693948     ; 4 uses
  %i.bo = shl nuw i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.br, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %.0.i.i.i.i.i5596.ptr
  br i1 %i.bu, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !312

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bv = ptrtoint ptr %i.aq to i64
  %i.bw = add nuw i64 %.0.i.i.i.i.i5596.idx, 8    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.aq, ptr %.0.i.i.i.i.i5596.ptr, i64 noundef %i.ca, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cb = icmp sgt i64 %i.bw, 128
  %i.cc = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  br i1 %i.cc, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.ce = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.cg = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cf, %i.ce
  %i.ci = mul nsw i64 %i.cg, %i.ce
  %i.cj = getelementptr [8 x i8], ptr %i.w, i64 %i.ci ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.w, i64 %i.ch
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.j, !llvm.loop !313

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.i ]
  %i.cl = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10 ; 3 uses
  %i.cn = getelementptr [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !10 ; 3 uses
  %i.cp = icmp slt i64 %i.cm, %i.co
  %i.cq = icmp sle i64 %i.cm, %i.co
  %..0.i.i.i.i.i.i = select i1 %i.cq, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.co
  %.1.i.i.i.i.i.i = select i1 %i.cp, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.j
  br i1 %.1.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cr = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cr, label %bb.l, label %bb.m, !prof !54

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cf, ptr %i.cs, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.o
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.o ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ct = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.ce
  %i.cv = getelementptr [8 x i8], ptr %i.w, i64 %i.cu
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.p ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.p ]
  %i.cw = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !10 ; 3 uses
  %i.cy = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !10 ; 3 uses
  %i.da = icmp slt i64 %i.cx, %i.cz
  %i.db = icmp sle i64 %i.cx, %i.cz
  %..0.i.i.us.i.i.i.i.i = select i1 %i.db, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i64 %i.cx, %i.cz
  %.1.i.i.us.i.i.i.i.i = select i1 %i.da, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.n
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.ct, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.n, !llvm.loop !313

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.p, %bb.l, %bb.m
  %.sroa.07.016.us.i.i.i.i.i194.sink = phi ptr [ %i.aq, %bb.l ], [ %i.aq, %bb.m ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.p ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cg, ptr %.sroa.07.016.us.i.i.i.i.i194.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dc = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !314

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dd = icmp eq i64 %.0.i.i.i.i.i5596.idx, 120
  br i1 %i.dd, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.de = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.ce
  %i.dg = getelementptr [8 x i8], ptr %i.w, i64 %i.df
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.r, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.ce
  %i.dj = getelementptr [8 x i8], ptr %i.w, i64 %i.di
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.s ]
  %i.dk = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !10 ; 3 uses
  %i.dm = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !10 ; 3 uses
  %i.do = icmp slt i64 %i.dl, %i.dn
  %i.dp = icmp sle i64 %i.dl, %i.dn
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i64 %i.dl, %i.dn
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.q
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dh, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.q, !llvm.loop !313

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.s
  store i64 %i.de, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %.0.i.i.i.i.i5596.ptr
  br i1 %i.dr, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !315

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ds = icmp ne i64 %.0.i.i.i.i.i5596.idx, 0
  %or.cond = select i1 %i.ds, i1 %i.cc, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dt = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.du = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.dv = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dw = mul nsw i64 %i.du, %i.dt
  %i.dx = mul nsw i64 %i.dv, %i.dt
  %i.dy = getelementptr [8 x i8], ptr %i.w, i64 %i.dx ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.w, i64 %i.dw
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.u, !llvm.loop !313

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.t ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.t ]
  %i.ea = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !10 ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !10 ; 3 uses
  %i.ee = icmp slt i64 %i.eb, %i.ed
  %i.ef = icmp sle i64 %i.eb, %i.ed
  %..0.i.i.i30.i.i.i = select i1 %i.ef, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i64 %i.eb, %i.ed
  %.1.i.i.i32.i.i.i = select i1 %i.ee, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.u
  br i1 %.1.i.i.i32.i.i.i, label %bb.v, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.v:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eg = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eh = sub i64 %i.eg, %i.bv                    ; 3 uses
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %bb.w, label %bb.x, !prof !54

bb.w:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.el = sub nsw i64 0, %i.ei
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.en = icmp eq i64 %i.eh, 8
  br i1 %i.en, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.du, ptr %i.eo, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.aa
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.aa ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.ep = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = getelementptr [8 x i8], ptr %i.w, i64 %i.eq
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.ab ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.ab ]
  %i.es = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10 ; 3 uses
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10 ; 3 uses
  %i.ew = icmp slt i64 %i.et, %i.ev
  %i.ex = icmp sle i64 %i.et, %i.ev
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ex, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i64 %i.et, %i.ev
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ew, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.ab, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.z
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.ep, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.ab:                                            ; preds = %bb.z
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.z, !llvm.loop !313

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.ab, %bb.w, %bb.x, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i198.sink = phi ptr [ %i.aq, %bb.w ], [ %i.aq, %bb.y ], [ %i.aq, %bb.x ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.ab ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dv, ptr %.sroa.07.016.us.i.i36.i.i.i198.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ey = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5596.ptr
  br i1 %i.ey, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !314

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ez = icmp slt i32 %i.j, 1
  %.idx.i.i = and i64 %i.h, 17179869176           ; 3 uses
  br i1 %i.ez, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %.sroa.076.0, i64 %3, i1 false), !tbaa !7
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter229 = and i64 %3, 1
  %i.fa = icmp eq i64 %i.as, 0
  br i1 %i.fa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader
  %unroll_iter232 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader: ; preds = %.lr.ph.split
  %xtraiter234 = and i64 %3, 3                    ; 3 uses
  %i.fb = icmp ult i64 %3, 4
  br i1 %i.fb, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader
  %unroll_iter237 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127:        ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new
  %.0122.us124 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.gd, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 6 uses
  %.030121.us125 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.gb, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 2 uses
  %.031120.us126 = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS_6TensorEPT_PT0_l:bb.a
  ret void

bb.ae:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i51, %bb.f
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new
  %.0122 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 4 uses
  %.030121 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.he, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %.031120 = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %niter233 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %niter233.next.1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 %.0122
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !7
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %.0122
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.031120, ptr align 8 %.030121, i64 %.idx.i.i, i1 false)
  %i.gy = getelementptr inbounds [8 x i8], ptr %.030121, i64 %i.k ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %.031120, i64 %i.k ; 2 uses
  %i.ha = or disjoint i64 %.0122, 1               ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !7
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 %i.ha
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gz, ptr align 8 %i.gy, i64 %.idx.i.i, i1 false)
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.k ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.k ; 2 uses
  %i.hg = add nuw nsw i64 %.0122, 2               ; 2 uses
  %niter233.next.1 = add i64 %niter233, 2         ; 2 uses
  %niter233.ncmp.1 = icmp eq i64 %niter233.next.1, %unroll_iter232
  br i1 %niter233.ncmp.1, label %.loopexit.loopexit214.unr-lcssa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, !llvm.loop !316

bb.af:                                            ; preds = %bb.ae, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.gu, %bb.ae ] ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %.sroa.076.0, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIhSaIhEED2Ev.exit66, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hh = ptrtoint ptr %.sroa.11.0 to i64
  %i.hi = ptrtoint ptr %.sroa.076.0 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0, i64 noundef %i.hj) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit66

_ZNSt6vectorIhSaIhEED2Ev.exit66:                  ; preds = %bb.ag, %bb.af, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %.pn.pn.pn, %bb.af ], [ %.pn.pn.pn, %bb.ag ]
  %.not.i.i.i67 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIlSaIlEED2Ev.exit68, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit66
  %i.hk = ptrtoint ptr %i.v to i64
  %i.hl = ptrtoint ptr %i.w to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit68

_ZNSt6vectorIlSaIlEED2Ev.exit68:                  ; preds = %bb.ah, %_ZNSt6vectorIhSaIhEED2Ev.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.o, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %i.o, i64 8        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !50
  %i.y = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc50 unwind label %bb.f

.noexc50:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = shl nuw nsw i64 %3, 1
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc51 unwind label %bb.f   ; 5 uses

.noexc51:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i16 0, ptr %i.aa, align 2, !tbaa !8
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %i.ae = getelementptr i8, ptr %i.aa, i64 2
  %.idx.i.i.i.i.i.i.i48 = shl nuw nsw i64 %i.ac, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i48, i1 false), !tbaa !8
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ab, %.noexc51 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.077.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc51 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIltEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.077.0)
          to label %.preheader106 unwind label %bb.g

.preheader106:                                    ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader106
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %._crit_edge120.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod229 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038119 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038119, %i.k
  %i.al = getelementptr [8 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038119, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [8 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

._crit_edge120.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ap, label %bb.e, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52

bb.e:                                             ; preds = %._crit_edge120.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc58 unwind label %bb.ad

.noexc58:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52: ; preds = %._crit_edge120.split
  %i.aq = shl nuw nsw i64 %3, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24
          to label %.noexc59 unwind label %bb.ad  ; 21 uses

.noexc59:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52
  store i64 0, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 4 uses
  %i.at = add nsw i64 %3, -1                      ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit67

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.ax = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = xor i64 %indvars.iv.epil.init, -1
  %i.az = getelementptr [8 x i8], ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !10
  store i64 %i.bb, ptr %i.ax, align 8, !tbaa !10
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond148.not = icmp eq i64 %i.am, %3
  br i1 %exitcond148.not, label %._crit_edge120.split, label %.preheader, !llvm.loop !318

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bd = xor i64 %indvars.iv, -1
  %i.be = getelementptr [8 x i8], ptr %i.ao, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !10
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !10
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !10
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !10
  %i.bh = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.bj = xor i64 %indvars.iv, -2
  %i.bk = getelementptr [8 x i8], ptr %i.ao, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !10
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !10
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !319

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60:             ; preds = %.noexc59
  %.idx.i.i.i.i.i.i.i55 = shl nuw nsw i64 %i.at, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i55, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60, %.noexc59
  %.0.i.i.i.i.i5697.idx = phi i64 [ %.idx.i.i.i.i.i.i.i55, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60 ], [ 0, %.noexc59 ] ; 6 uses
  %.0.i.i.i.i.i5697.ptr = getelementptr i8, ptr %i.as, i64 %.0.i.i.i.i.i5697.idx ; 4 uses
  %i.bn = lshr exact i64 %.0.i.i.i.i.i5697.idx, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5697.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bo, 2305843009213693948     ; 4 uses
  %i.bp = shl nuw i64 %n.vec, 3
  %i.bq = getelementptr i8, ptr %i.ar, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.br = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bs, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ar, %.lr.ph.preheader.i ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.0.i.i.i.i.i5697.ptr
  br i1 %i.bv, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !321

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bw = ptrtoint ptr %i.ar to i64
  %i.bx = add nuw i64 %.0.i.i.i.i.i5697.idx, 8    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ar, ptr %.0.i.i.i.i.i5697.ptr, i64 noundef %i.cb, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cc = icmp sgt i64 %i.bx, 128
  %i.cd = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  br i1 %i.cd, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cf = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ci = mul nsw i64 %i.cg, %i.cf
  %i.cj = mul nsw i64 %i.ch, %i.cf
  %i.ck = getelementptr [8 x i8], ptr %i.w, i64 %i.cj ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.w, i64 %i.ci
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.i, !llvm.loop !322

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ]
  %i.cm = getelementptr [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10 ; 3 uses
  %i.co = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10 ; 3 uses
  %i.cq = icmp slt i64 %i.cn, %i.cp
  %i.cr = icmp sle i64 %i.cn, %i.cp
  %..0.i.i.i.i.i.i = select i1 %i.cr, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i64 %i.cn, %i.cp
  %.1.i.i.i.i.i.i = select i1 %i.cq, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.i
  br i1 %.1.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cs = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cs, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cg, ptr %i.ct, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.n
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.n ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.cf
  %i.cw = getelementptr [8 x i8], ptr %i.w, i64 %i.cv
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.o ]
  %i.cx = getelementptr [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !10 ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !10 ; 3 uses
  %i.db = icmp slt i64 %i.cy, %i.da
  %i.dc = icmp sle i64 %i.cy, %i.da
  %..0.i.i.us.i.i.i.i.i = select i1 %i.dc, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i64 %i.cy, %i.da
  %.1.i.i.us.i.i.i.i.i = select i1 %i.db, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cu, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.m, !llvm.loop !322

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.o, %bb.k, %bb.l
  %.sroa.07.016.us.i.i.i.i.i195.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.o ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ch, ptr %.sroa.07.016.us.i.i.i.i.i195.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !323

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.de = icmp eq i64 %.0.i.i.i.i.i5697.idx, 120
  br i1 %i.de, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.ce, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.df = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cf
  %i.dh = getelementptr [8 x i8], ptr %i.w, i64 %i.dg
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.di = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.cf
  %i.dk = getelementptr [8 x i8], ptr %i.w, i64 %i.dj
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.r ]
  %i.dl = getelementptr [8 x i8], ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !10 ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !10 ; 3 uses
  %i.dp = icmp slt i64 %i.dm, %i.do
  %i.dq = icmp sle i64 %i.dm, %i.do
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dq, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i64 %i.dm, %i.do
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.p
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.di, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.p, !llvm.loop !322

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.r
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %.0.i.i.i.i.i5697.ptr
  br i1 %i.ds, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !324

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dt = icmp ne i64 %.0.i.i.i.i.i5697.idx, 0
  %or.cond = select i1 %i.dt, i1 %i.cd, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.du = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.as, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dv = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dx = mul nsw i64 %i.dv, %i.du
  %i.dy = mul nsw i64 %i.dw, %i.du
  %i.dz = getelementptr [8 x i8], ptr %i.w, i64 %i.dy ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.w, i64 %i.dx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.du
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.t, !llvm.loop !322

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.s ]
  %i.eb = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10 ; 3 uses
  %i.ed = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !10 ; 3 uses
  %i.ef = icmp slt i64 %i.ec, %i.ee
  %i.eg = icmp sle i64 %i.ec, %i.ee
  %..0.i.i.i30.i.i.i = select i1 %i.eg, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i64 %i.ec, %i.ee
  %.1.i.i.i32.i.i.i = select i1 %i.ef, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.t
  br i1 %.1.i.i.i32.i.i.i, label %bb.u, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eh = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ei = sub i64 %i.eh, %i.bw                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.v, label %bb.w, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.em = sub nsw i64 0, %i.ej
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.ei, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.eo = icmp eq i64 %i.ei, 8
  br i1 %i.eo, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dv, ptr %i.ep, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.z ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.er = mul nsw i64 %i.eq, %i.du
  %i.es = getelementptr [8 x i8], ptr %i.w, i64 %i.er
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.aa ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.aa ]
  %i.et = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !10 ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10 ; 3 uses
  %i.ex = icmp slt i64 %i.eu, %i.ew
  %i.ey = icmp sle i64 %i.eu, %i.ew
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ey, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i64 %i.eu, %i.ew
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ex, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.y
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eq, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.du
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.y, !llvm.loop !322

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.aa, %bb.v, %bb.w, %bb.x
  %.sroa.07.016.us.i.i36.i.i.i199.sink = phi ptr [ %i.ar, %bb.v ], [ %i.ar, %bb.x ], [ %i.ar, %bb.w ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.aa ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dw, ptr %.sroa.07.016.us.i.i36.i.i.i199.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5697.ptr
  br i1 %i.ez, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !323

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.fa = icmp slt i32 %i.j, 1
  %.idx.i.i = and i64 %i.h, 17179869176           ; 3 uses
  br i1 %i.fa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fb = shl nuw nsw i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 2 %.sroa.077.0, i64 %i.fb, i1 false), !tbaa !8
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 1
  %i.fc = icmp eq i64 %i.at, 0
  br i1 %i.fc, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader: ; preds = %.lr.ph.split
  %xtraiter235 = and i64 %3, 3                    ; 3 uses
  %i.fd = icmp ult i64 %3, 4
  br i1 %i.fd, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader
  %unroll_iter238 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128:        ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new
  %.0123.us125 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new ], [ %i.gf, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128 ] ; 6 uses
  %.030122.us126 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new ], [ %i.gd, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128 ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS_6TensorEPT_PT0_l:bb.a
  ret void

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52, %bb.e
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new
  %.0123 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 4 uses
  %.030122 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %.031121 = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %niter234 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %niter234.next.1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ]
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.077.0, i64 %.0123
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !8
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0123
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.031121, ptr align 8 %.030122, i64 %.idx.i.i, i1 false)
  %i.ha = getelementptr inbounds [8 x i8], ptr %.030122, i64 %i.k ; 2 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %.031121, i64 %i.k ; 2 uses
  %i.hc = or disjoint i64 %.0123, 1               ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.077.0, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !8
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.hc
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hb, ptr align 8 %i.ha, i64 %.idx.i.i, i1 false)
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = add nuw nsw i64 %.0123, 2               ; 2 uses
  %niter234.next.1 = add i64 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %.loopexit.loopexit215.unr-lcssa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, !llvm.loop !325

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.gw, %bb.ad ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorItSaItEED2Ev.exit67, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = ptrtoint ptr %.sroa.11.0 to i64
  %i.hk = ptrtoint ptr %.sroa.077.0 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.0, i64 noundef %i.hl) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit67

_ZNSt6vectorItSaItEED2Ev.exit67:                  ; preds = %bb.af, %bb.ae, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.af ]
  %.not.i.i.i68 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIlSaIlEED2Ev.exit69, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit67
  %i.hm = ptrtoint ptr %i.v to i64
  %i.hn = ptrtoint ptr %i.w to i64
  %i.ho = sub i64 %i.hm, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ho) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit69

_ZNSt6vectorIlSaIlEED2Ev.exit69:                  ; preds = %bb.ag, %_ZNSt6vectorItSaItEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.o, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %i.o, i64 8        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !50
  %i.y = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc50 unwind label %bb.f

.noexc50:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = shl nuw nsw i64 %3, 2
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc51 unwind label %bb.f   ; 5 uses

.noexc51:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %i.ae = getelementptr i8, ptr %i.aa, i64 4
  %.idx.i.i.i.i.i.i.i48 = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i48, i1 false), !tbaa !3
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ab, %.noexc51 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.077.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc51 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIljEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.077.0)
          to label %.preheader106 unwind label %bb.g

.preheader106:                                    ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader106
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %._crit_edge120.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod229 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038119 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038119, %i.k
  %i.al = getelementptr [8 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038119, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [8 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

._crit_edge120.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.ap, label %bb.e, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52

bb.e:                                             ; preds = %._crit_edge120.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc58 unwind label %bb.ad

.noexc58:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52: ; preds = %._crit_edge120.split
  %i.aq = shl nuw nsw i64 %3, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24
          to label %.noexc59 unwind label %bb.ad  ; 21 uses

.noexc59:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52
  store i64 0, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 4 uses
  %i.at = add nsw i64 %3, -1                      ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit67

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.ax = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = xor i64 %indvars.iv.epil.init, -1
  %i.az = getelementptr [8 x i8], ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !10
  store i64 %i.bb, ptr %i.ax, align 8, !tbaa !10
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond148.not = icmp eq i64 %i.am, %3
  br i1 %exitcond148.not, label %._crit_edge120.split, label %.preheader, !llvm.loop !327

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bd = xor i64 %indvars.iv, -1
  %i.be = getelementptr [8 x i8], ptr %i.ao, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !10
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !10
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !10
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !10
  %i.bh = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.bj = xor i64 %indvars.iv, -2
  %i.bk = getelementptr [8 x i8], ptr %i.ao, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !10
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !10
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !328

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60:             ; preds = %.noexc59
  %.idx.i.i.i.i.i.i.i55 = shl nuw nsw i64 %i.at, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i55, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60, %.noexc59
  %.0.i.i.i.i.i5697.idx = phi i64 [ %.idx.i.i.i.i.i.i.i55, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60 ], [ 0, %.noexc59 ] ; 6 uses
  %.0.i.i.i.i.i5697.ptr = getelementptr i8, ptr %i.as, i64 %.0.i.i.i.i.i5697.idx ; 4 uses
  %i.bn = lshr exact i64 %.0.i.i.i.i.i5697.idx, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5697.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bo, 2305843009213693948     ; 4 uses
  %i.bp = shl nuw i64 %n.vec, 3
  %i.bq = getelementptr i8, ptr %i.ar, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.br = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.bs, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.ar, %.lr.ph.preheader.i ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.0.i.i.i.i.i5697.ptr
  br i1 %i.bv, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !330

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bw = ptrtoint ptr %i.ar to i64
  %i.bx = add nuw i64 %.0.i.i.i.i.i5697.idx, 8    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.ar, ptr %.0.i.i.i.i.i5697.ptr, i64 noundef %i.cb, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cc = icmp sgt i64 %i.bx, 128
  %i.cd = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  br i1 %i.cd, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cf = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ci = mul nsw i64 %i.cg, %i.cf
  %i.cj = mul nsw i64 %i.ch, %i.cf
  %i.ck = getelementptr [8 x i8], ptr %i.w, i64 %i.cj ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.w, i64 %i.ci
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.i, !llvm.loop !331

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ]
  %i.cm = getelementptr [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10 ; 3 uses
  %i.co = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10 ; 3 uses
  %i.cq = icmp slt i64 %i.cn, %i.cp
  %i.cr = icmp sle i64 %i.cn, %i.cp
  %..0.i.i.i.i.i.i = select i1 %i.cr, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i64 %i.cn, %i.cp
  %.1.i.i.i.i.i.i = select i1 %i.cq, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.i
  br i1 %.1.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cs = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cs, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cg, ptr %i.ct, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.n
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.n ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.cf
  %i.cw = getelementptr [8 x i8], ptr %i.w, i64 %i.cv
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.o ]
  %i.cx = getelementptr [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !10 ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !10 ; 3 uses
  %i.db = icmp slt i64 %i.cy, %i.da
  %i.dc = icmp sle i64 %i.cy, %i.da
  %..0.i.i.us.i.i.i.i.i = select i1 %i.dc, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i64 %i.cy, %i.da
  %.1.i.i.us.i.i.i.i.i = select i1 %i.db, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.cu, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.m, !llvm.loop !331

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.o, %bb.k, %bb.l
  %.sroa.07.016.us.i.i.i.i.i195.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.o ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.ch, ptr %.sroa.07.016.us.i.i.i.i.i195.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !332

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.de = icmp eq i64 %.0.i.i.i.i.i5697.idx, 120
  br i1 %i.de, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.ce, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.df = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cf
  %i.dh = getelementptr [8 x i8], ptr %i.w, i64 %i.dg
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.di = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dj = mul nsw i64 %i.di, %i.cf
  %i.dk = getelementptr [8 x i8], ptr %i.w, i64 %i.dj
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.r ]
  %i.dl = getelementptr [8 x i8], ptr %i.dh, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !10 ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !10 ; 3 uses
  %i.dp = icmp slt i64 %i.dm, %i.do
  %i.dq = icmp sle i64 %i.dm, %i.do
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dq, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i64 %i.dm, %i.do
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.p
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.di, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.cf
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.p, !llvm.loop !331

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.r
  store i64 %i.df, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %.0.i.i.i.i.i5697.ptr
  br i1 %i.ds, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !333

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.dt = icmp ne i64 %.0.i.i.i.i.i5697.idx, 0
  %or.cond = select i1 %i.dt, i1 %i.cd, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.du = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.as, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.dv = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dx = mul nsw i64 %i.dv, %i.du
  %i.dy = mul nsw i64 %i.dw, %i.du
  %i.dz = getelementptr [8 x i8], ptr %i.w, i64 %i.dy ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.w, i64 %i.dx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.du
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.t, !llvm.loop !331

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.s ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.s ]
  %i.eb = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10 ; 3 uses
  %i.ed = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !10 ; 3 uses
  %i.ef = icmp slt i64 %i.ec, %i.ee
  %i.eg = icmp sle i64 %i.ec, %i.ee
  %..0.i.i.i30.i.i.i = select i1 %i.eg, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i64 %i.ec, %i.ee
  %.1.i.i.i32.i.i.i = select i1 %i.ef, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.t
  br i1 %.1.i.i.i32.i.i.i, label %bb.u, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eh = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.ei = sub i64 %i.eh, %i.bw                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.v, label %bb.w, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.em = sub nsw i64 0, %i.ej
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.ei, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.eo = icmp eq i64 %i.ei, 8
  br i1 %i.eo, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.dv, ptr %i.ep, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.z
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.z ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.er = mul nsw i64 %i.eq, %i.du
  %i.es = getelementptr [8 x i8], ptr %i.w, i64 %i.er
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.aa ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.aa ]
  %i.et = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !10 ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10 ; 3 uses
  %i.ex = icmp slt i64 %i.eu, %i.ew
  %i.ey = icmp sle i64 %i.eu, %i.ew
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ey, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i64 %i.eu, %i.ew
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ex, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.y
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.eq, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.du
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.y, !llvm.loop !331

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.aa, %bb.v, %bb.w, %bb.x
  %.sroa.07.016.us.i.i36.i.i.i199.sink = phi ptr [ %i.ar, %bb.v ], [ %i.ar, %bb.x ], [ %i.ar, %bb.w ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.aa ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dw, ptr %.sroa.07.016.us.i.i36.i.i.i199.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5697.ptr
  br i1 %i.ez, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !332

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.fa = icmp slt i32 %i.j, 1
  %.idx.i.i = and i64 %i.h, 17179869176           ; 3 uses
  br i1 %i.fa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fb = shl nuw nsw i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %.sroa.077.0, i64 %i.fb, i1 false), !tbaa !3
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 1
  %i.fc = icmp eq i64 %i.at, 0
  br i1 %i.fc, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader: ; preds = %.lr.ph.split
  %xtraiter235 = and i64 %3, 3                    ; 3 uses
  %i.fd = icmp ult i64 %3, 4
  br i1 %i.fd, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader
  %unroll_iter238 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128:        ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new
  %.0123.us125 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new ], [ %i.gf, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128 ] ; 6 uses
  %.030122.us126 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128.preheader.new ], [ %i.gd, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us128 ] ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS_6TensorEPT_PT0_l:bb.a

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.gt = ptrtoint ptr %i.v to i64
  %i.gu = ptrtoint ptr %i.w to i64
  %i.gv = sub i64 %i.gt, %i.gu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.gv) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit63

_ZNSt6vectorIlSaIlEED2Ev.exit63:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i52, %bb.e
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new
  %.0123 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hi, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 4 uses
  %.030122 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %.031121 = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %niter234 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %niter234.next.1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.077.0, i64 %.0123
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0123
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.031121, ptr align 8 %.030122, i64 %.idx.i.i, i1 false)
  %i.ha = getelementptr inbounds [8 x i8], ptr %.030122, i64 %i.k ; 2 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %.031121, i64 %i.k ; 2 uses
  %i.hc = or disjoint i64 %.0123, 1               ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.077.0, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hc
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hb, ptr align 8 %i.ha, i64 %.idx.i.i, i1 false)
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.k ; 2 uses
  %i.hi = add nuw nsw i64 %.0123, 2               ; 2 uses
  %niter234.next.1 = add i64 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %.loopexit.loopexit215.unr-lcssa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, !llvm.loop !334

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.gw, %bb.ad ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIjSaIjEED2Ev.exit67, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = ptrtoint ptr %.sroa.11.0 to i64
  %i.hk = ptrtoint ptr %.sroa.077.0 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.0, i64 noundef %i.hl) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit67

_ZNSt6vectorIjSaIjEED2Ev.exit67:                  ; preds = %bb.af, %bb.ae, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.af ]
  %.not.i.i.i68 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIlSaIlEED2Ev.exit69, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit67
  %i.hm = ptrtoint ptr %i.v to i64
  %i.hn = ptrtoint ptr %i.w to i64
  %i.ho = sub i64 %i.hm, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ho) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit69

_ZNSt6vectorIlSaIlEED2Ev.exit69:                  ; preds = %bb.ag, %_ZNSt6vectorIjSaIjEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %sext = shl i64 %i.h, 29
  %i.k = ashr i64 %sext, 32                       ; 17 uses
  %i.l = mul nsw i64 %i.k, %3                     ; 5 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %.noexc46

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc46:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 6 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.o, align 8, !tbaa !10
  %i.r = getelementptr i8, ptr %i.o, i64 8        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc46
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc46, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc46 ], [ %i.p, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc46 ], [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 21 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc46 ], [ %i.u, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !50
  %i.y = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc50 unwind label %bb.e

.noexc50:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i47 = icmp eq i64 %3, 0             ; 2 uses
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = shl nuw nsw i64 %3, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc51 unwind label %bb.e   ; 5 uses

.noexc51:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %3 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !10
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.idx.i.i.i.i.i.i.i48 = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i48, i1 false), !tbaa !10
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ab, %.noexc51 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.077.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc51 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIlmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.w, ptr noundef %.sroa.077.0)
          to label %.preheader106 unwind label %bb.f

.preheader106:                                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader106
  %i.af = icmp sgt i32 %i.j, 1
  br i1 %i.af, label %.preheader.preheader, label %.loopexit188

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ag = lshr i64 %i.h, 4                        ; 2 uses
  %i.ah = and i64 %i.h, 34359738352
  %i.ai = icmp eq i64 %i.ah, 16
  %unroll_iter = and i64 %i.ag, 2147483646
  %i.aj = and i64 %i.h, 16
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  %lcmp.mod229 = trunc i64 %i.ag to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.038119 = phi i64 [ %i.am, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ak = mul nsw i64 %.038119, %i.k
  %i.al = getelementptr [8 x i8], ptr %i.w, i64 %i.ak ; 3 uses
  %i.am = add nuw nsw i64 %.038119, 1             ; 3 uses
  %i.an = mul i64 %i.am, %i.k
  %i.ao = getelementptr [8 x i8], ptr %i.w, i64 %i.an ; 3 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

.loopexit188:                                     ; preds = %._crit_edge, %.preheader.lr.ph
  %i.ap = shl nuw nsw i64 %3, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc59 unwind label %bb.ac  ; 21 uses

.noexc59:                                         ; preds = %.loopexit188
  store i64 0, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 4 uses
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit67

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.aw = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv.epil.init ; 2 uses
  %i.ax = xor i64 %indvars.iv.epil.init, -1
  %i.ay = getelementptr [8 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !10
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !10
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %exitcond147.not = icmp eq i64 %i.am, %3
  br i1 %exitcond147.not, label %.loopexit188, label %.preheader, !llvm.loop !336

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bb = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bc = xor i64 %indvars.iv, -1
  %i.bd = getelementptr [8 x i8], ptr %i.ao, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !10
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !10
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !10
  %i.bg = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %i.bi = xor i64 %indvars.iv, -2
  %i.bj = getelementptr [8 x i8], ptr %i.ao, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !10
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !10
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !337

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60:             ; preds = %.noexc59
  %.idx.i.i.i.i.i.i.i55 = shl nuw nsw i64 %i.as, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i55, i1 false), !tbaa !10
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60, %.noexc59
  %.0.i.i.i.i.i5697.idx = phi i64 [ %.idx.i.i.i.i.i.i.i55, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit60 ], [ 0, %.noexc59 ] ; 6 uses
  %.0.i.i.i.i.i5697.ptr = getelementptr i8, ptr %i.ar, i64 %.0.i.i.i.i.i5697.idx ; 4 uses
  %i.bm = lshr exact i64 %.0.i.i.i.i.i5697.idx, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i.i.i.i5697.idx, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bn, 2305843009213693948     ; 4 uses
  %i.bo = shl nuw i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.br, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %.0.i.i.i.i.i5697.ptr
  br i1 %i.bu, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !339

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block
  %i.bv = ptrtoint ptr %i.aq to i64
  %i.bw = add nuw i64 %.0.i.i.i.i.i5697.idx, 8    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %i.aq, ptr %.0.i.i.i.i.i5697.ptr, i64 noundef %i.ca, ptr nonnull readonly %i.a, ptr nonnull readonly %4)
  %i.cb = icmp sgt i64 %i.bw, 128
  %i.cc = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.preheader.i13.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  br i1 %i.cc, label %.lr.ph.split.i.preheader.i.i.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.ce = and i64 %i.i, 2147483647                ; 8 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %.sroa.0.029.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ] ; 4 uses
  %.pn28.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.split.i.preheader.i.i.i ], [ %.sroa.0.029.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ]
  %.sroa.0.029.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.029.i.idx.i.i.i ; 3 uses
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.cg = load i64, ptr %.sroa.0.029.i.ptr.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cf, %i.ce
  %i.ci = mul nsw i64 %i.cg, %i.ce
  %i.cj = getelementptr [8 x i8], ptr %i.w, i64 %i.ci ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.w, i64 %i.ch
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %bb.h, !llvm.loop !340

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.03.i.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.g ]
  %i.cl = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10 ; 3 uses
  %i.cn = getelementptr [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !10 ; 3 uses
  %i.cp = icmp slt i64 %i.cm, %i.co
  %i.cq = icmp sle i64 %i.cm, %i.co
  %..0.i.i.i.i.i.i = select i1 %i.cq, i1 %.03.i.i.i.i.i.i, i1 false
  %cond1.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.co
  %.1.i.i.i.i.i.i = select i1 %i.cp, i1 true, i1 %..0.i.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i.i.i, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i: ; preds = %bb.h
  br i1 %.1.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.us.i.i.i.i.i.preheader

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i.i.i
  %i.cr = icmp samesign ugt i64 %.sroa.0.029.i.idx.i.i.i, 8
  br i1 %i.cr, label %bb.j, label %bb.k, !prof !54

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %.sroa.0.029.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn28.i.i.i.i, i64 8
  store i64 %i.cf, ptr %i.cs, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %bb.m
  %.sroa.07.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.017.us.i.i.i.i.i, %bb.m ], [ %.sroa.0.029.i.ptr.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ct = load i64, ptr %.sroa.0.017.us.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.ce
  %i.cv = getelementptr [8 x i8], ptr %i.w, i64 %i.cu
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i.i.us.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i, %bb.n ] ; 3 uses
  %.03.i.i.us.i.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i, %bb.n ]
  %i.cw = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !10 ; 3 uses
  %i.cy = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv.i.i.us.i.i.i.i.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !10 ; 3 uses
  %i.da = icmp slt i64 %i.cx, %i.cz
  %i.db = icmp sle i64 %i.cx, %i.cz
  %..0.i.i.us.i.i.i.i.i = select i1 %i.db, i1 %.03.i.i.us.i.i.i.i.i, i1 false
  %cond1.i.i.us.i.i.i.i.i = icmp eq i64 %i.cx, %i.cz
  %.1.i.i.us.i.i.i.i.i = select i1 %i.da, i1 true, i1 %..0.i.i.us.i.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i.i.i.i, label %bb.n, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i: ; preds = %bb.l
  br i1 %.1.i.i.us.i.i.i.i.i, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i
  store i64 %i.ct, ptr %.sroa.07.016.us.i.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next.i.i.us.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !llvm.loop !340

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i, %bb.n, %bb.j, %bb.k
  %.sroa.07.016.us.i.i.i.i.i195.sink = phi ptr [ %i.aq, %bb.j ], [ %i.aq, %bb.k ], [ %.sroa.07.016.us.i.i.i.i.i, %bb.n ], [ %.sroa.07.016.us.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i.i.i.i ]
  store i64 %i.cg, ptr %.sroa.07.016.us.i.i.i.i.i195.sink, align 8, !tbaa !10
  %.sroa.0.029.i.add.i.i.i = add nuw nsw i64 %.sroa.0.029.i.idx.i.i.i, 8 ; 2 uses
  %i.dc = icmp eq i64 %.sroa.0.029.i.add.i.i.i, 128
  br i1 %i.dc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !341

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.dd = icmp eq i64 %.0.i.i.i.i.i5697.idx, 120
  br i1 %i.dd, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i

.lr.ph.i.i.lr.ph.i.us.i.i.i.i:                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i
  %.sroa.0.012.us.i.i.i.i = phi ptr [ %i.dq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i ], [ %i.cd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i ] ; 3 uses
  %i.de = load i64, ptr %.sroa.0.012.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.ce
  %i.dg = getelementptr [8 x i8], ptr %i.w, i64 %i.df
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

.lr.ph.i.i.us.i.us.i.i.i.i:                       ; preds = %bb.p, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i
  %.sroa.07.016.us.i.us.i.i.i.i = phi ptr [ %.sroa.0.012.us.i.i.i.i, %.lr.ph.i.i.lr.ph.i.us.i.i.i.i ], [ %.sroa.0.017.us.i.us.i.i.i.i, %bb.p ] ; 3 uses
  %.sroa.0.017.us.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %.sroa.0.017.us.i.us.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.ce
  %i.dj = getelementptr [8 x i8], ptr %i.w, i64 %i.di
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i.us.i.us.i.i.i.i
  %indvars.iv.i.i.us.i.us.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.us.i.i.i.i, %bb.q ] ; 3 uses
  %.03.i.i.us.i.us.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.us.i.i.i.i ], [ %.1.i.i.us.i.us.i.i.i.i, %bb.q ]
  %i.dk = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !10 ; 3 uses
  %i.dm = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv.i.i.us.i.us.i.i.i.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !10 ; 3 uses
  %i.do = icmp slt i64 %i.dl, %i.dn
  %i.dp = icmp sle i64 %i.dl, %i.dn
  %..0.i.i.us.i.us.i.i.i.i = select i1 %i.dp, i1 %.03.i.i.us.i.us.i.i.i.i, i1 false
  %cond1.i.i.us.i.us.i.i.i.i = icmp eq i64 %i.dl, %i.dn
  %.1.i.i.us.i.us.i.i.i.i = select i1 %i.do, i1 true, i1 %..0.i.i.us.i.us.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.us.i.i.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i: ; preds = %bb.o
  br i1 %.1.i.i.us.i.us.i.i.i.i, label %bb.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i
  store i64 %i.dh, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.us.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next.i.i.us.i.us.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.us.i.i.i.i, %i.ce
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, label %bb.o, !llvm.loop !340

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.us.i.i.i.i, %bb.q
  store i64 %i.de, ptr %.sroa.07.016.us.i.us.i.i.i.i, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.012.us.i.i.i.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %.0.i.i.i.i.i5697.ptr
  br i1 %i.dr, label %.lr.ph, label %.lr.ph.i.i.lr.ph.i.us.i.i.i.i, !llvm.loop !342

.preheader.i13.i.i.i:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %i.ds = icmp ne i64 %.0.i.i.i.i.i5697.idx, 0
  %or.cond = select i1 %i.ds, i1 %i.cc, i1 false
  br i1 %or.cond, label %.lr.ph.split.i16.i.i.i.preheader, label %.lr.ph

.lr.ph.split.i16.i.i.i.preheader:                 ; preds = %.preheader.i13.i.i.i
  %i.dt = and i64 %i.i, 2147483647                ; 5 uses
  br label %.lr.ph.split.i16.i.i.i

.lr.ph.split.i16.i.i.i:                           ; preds = %.lr.ph.split.i16.i.i.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i
  %.sroa.0.029.i18.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.ar, %.lr.ph.split.i16.i.i.i.preheader ] ; 5 uses
  %.pn28.i19.i.i.i = phi ptr [ %.sroa.0.029.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i ], [ %i.aq, %.lr.ph.split.i16.i.i.i.preheader ] ; 2 uses
  %i.du = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.dv = load i64, ptr %.sroa.0.029.i18.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.dw = mul nsw i64 %i.du, %i.dt
  %i.dx = mul nsw i64 %i.dv, %i.dt
  %i.dy = getelementptr [8 x i8], ptr %i.w, i64 %i.dx ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.w, i64 %i.dw
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i.i47.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i28.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i48.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.i48.i.i.i, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader, label %bb.s, !llvm.loop !340

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.i16.i.i.i
  %indvars.iv.i.i.i28.i.i.i = phi i64 [ 0, %.lr.ph.split.i16.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i, %bb.r ] ; 3 uses
  %.03.i.i.i29.i.i.i = phi i1 [ undef, %.lr.ph.split.i16.i.i.i ], [ %.1.i.i.i32.i.i.i, %bb.r ]
  %i.ea = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i28.i.i.i
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !10 ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i28.i.i.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !10 ; 3 uses
  %i.ee = icmp slt i64 %i.eb, %i.ed
  %i.ef = icmp sle i64 %i.eb, %i.ed
  %..0.i.i.i30.i.i.i = select i1 %i.ef, i1 %.03.i.i.i29.i.i.i, i1 false
  %cond1.i.i.i31.i.i.i = icmp eq i64 %i.eb, %i.ed
  %.1.i.i.i32.i.i.i = select i1 %i.ee, i1 true, i1 %..0.i.i.i30.i.i.i ; 2 uses
  br i1 %cond1.i.i.i31.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i: ; preds = %bb.s
  br i1 %.1.i.i.i32.i.i.i, label %bb.t, label %.lr.ph.i.i.us.i.i35.i.i.i.preheader

.lr.ph.i.i.us.i.i35.i.i.i.preheader:              ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i33.i.i.i
  %i.eg = ptrtoint ptr %.sroa.0.029.i18.i.i.i to i64
  %i.eh = sub i64 %i.eg, %i.bv                    ; 3 uses
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %bb.u, label %bb.v, !prof !54

bb.u:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 16
  %i.el = sub nsw i64 0, %i.ei
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.en = icmp eq i64 %i.eh, 8
  br i1 %i.en, label %bb.w, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn28.i19.i.i.i, i64 8
  store i64 %i.du, ptr %i.eo, align 8, !tbaa !10
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

.lr.ph.i.i.us.i.i35.i.i.i:                        ; preds = %.lr.ph.i.i.us.i.i35.i.i.i.preheader, %bb.y
  %.sroa.07.016.us.i.i36.i.i.i = phi ptr [ %.sroa.0.017.us.i.i37.i.i.i, %bb.y ], [ %.sroa.0.029.i18.i.i.i, %.lr.ph.i.i.us.i.i35.i.i.i.preheader ] ; 4 uses
  %.sroa.0.017.us.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.016.us.i.i36.i.i.i, i64 -8 ; 2 uses
  %i.ep = load i64, ptr %.sroa.0.017.us.i.i37.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = getelementptr [8 x i8], ptr %i.w, i64 %i.eq
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i.i.us.i.i35.i.i.i
  %indvars.iv.i.i.us.i.i38.i.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %indvars.iv.next.i.i.us.i.i44.i.i.i, %bb.z ] ; 3 uses
  %.03.i.i.us.i.i39.i.i.i = phi i1 [ undef, %.lr.ph.i.i.us.i.i35.i.i.i ], [ %.1.i.i.us.i.i42.i.i.i, %bb.z ]
  %i.es = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10 ; 3 uses
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %indvars.iv.i.i.us.i.i38.i.i.i
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10 ; 3 uses
  %i.ew = icmp slt i64 %i.et, %i.ev
  %i.ex = icmp sle i64 %i.et, %i.ev
  %..0.i.i.us.i.i40.i.i.i = select i1 %i.ex, i1 %.03.i.i.us.i.i39.i.i.i, i1 false
  %cond1.i.i.us.i.i41.i.i.i = icmp eq i64 %i.et, %i.ev
  %.1.i.i.us.i.i42.i.i.i = select i1 %i.ew, i1 true, i1 %..0.i.i.us.i.i40.i.i.i ; 2 uses
  br i1 %cond1.i.i.us.i.i41.i.i.i, label %bb.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i: ; preds = %bb.x
  br i1 %.1.i.i.us.i.i42.i.i.i, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i
  store i64 %i.ep, ptr %.sroa.07.016.us.i.i36.i.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.us.i.i35.i.i.i

bb.z:                                             ; preds = %bb.x
  %indvars.iv.next.i.i.us.i.i44.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i38.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i45.i.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i44.i.i.i, %i.dt
  br i1 %exitcond.not.i.i.us.i.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, label %bb.x, !llvm.loop !340

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i, %bb.z, %bb.u, %bb.v, %bb.w
  %.sroa.07.016.us.i.i36.i.i.i199.sink = phi ptr [ %i.aq, %bb.u ], [ %i.aq, %bb.w ], [ %i.aq, %bb.v ], [ %.sroa.07.016.us.i.i36.i.i.i, %bb.z ], [ %.sroa.07.016.us.i.i36.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclIlNS_17__normal_iteratorIPlSt6vectorIlSaIlEEEEEEbRS9_SB_.exit.us.i.i43.i.i.i ]
  store i64 %i.dv, ptr %.sroa.07.016.us.i.i36.i.i.i199.sink, align 8, !tbaa !10
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i18.i.i.i, i64 8 ; 2 uses
  %i.ey = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i5697.ptr
  br i1 %i.ey, label %.lr.ph, label %.lr.ph.split.i16.i.i.i, !llvm.loop !341

.lr.ph:                                           ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i46.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_.exit.us.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_.exit.i.i.i, %.preheader.i13.i.i.i
  %i.ez = icmp slt i32 %i.j, 1
  %.idx.i.i = and i64 %i.h, 17179869176           ; 3 uses
  br i1 %i.ez, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader, label %.lr.ph.split

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader: ; preds = %.lr.ph.i.i.i.i, %.lr.ph
  %i.fa = shl nuw nsw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %.sroa.077.0, i64 %i.fa, i1 false), !tbaa !10
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader, !prof !49

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader:    ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %3, 1
  %i.fb = icmp eq i64 %i.as, 0
  br i1 %i.fb, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader
  %unroll_iter233 = and i64 %3, 1152921504606846974
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader: ; preds = %.lr.ph.split
  %xtraiter235 = and i64 %3, 3                    ; 3 uses
  %i.fc = icmp ult i64 %3, 4
  br i1 %i.fc, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader
  %unroll_iter238 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127:        ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new
  %.0122.us124 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.ge, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 6 uses
  %.030121.us125 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 2 uses
end_hunk_15
