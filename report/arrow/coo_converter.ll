Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/coo_converter?download=true
inline.NumInlined: 3398
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIhmEEvRKNS_6TensorEPT_PT0_l:bb.a
  %i.bf = icmp sgt i64 %.02041.us, 1
  br i1 %i.bf, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !209

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bg = icmp eq i64 %i.y, 1
  br i1 %i.bg, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 2 uses
  %i.bn = add nsw i64 %i.bm, -1                   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bn
  %i.bq = icmp sgt i64 %i.bm, 1
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57
  %.043.us44 = phi ptr [ %.1.us51, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %1, %.lr.ph.split ] ; 3 uses
  %.01842.us45 = phi ptr [ %.119.us50, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02041.us46 = phi i64 [ %i.cw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.v, %.lr.ph.split ] ; 2 uses
  %.02540.us47 = phi ptr [ %i.cv, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.br = load i64, ptr %.02540.us47, align 8, !tbaa !32 ; 2 uses
  %.not.us48 = icmp eq i64 %i.br, 0
  br i1 %.not.us48, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us49, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us49: ; preds = %.lr.ph.split.split.us
  %i.bs = load i8, ptr %.sroa.032.0, align 1, !tbaa !28
  store i8 %i.bs, ptr %.043.us44, align 1, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.01842.us45, i64 8
  store i64 %i.br, ptr %.01842.us45, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %.043.us44, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us49, %.lr.ph.split.split.us
  %.119.us50 = phi ptr [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us49 ], [ %.01842.us45, %.lr.ph.split.split.us ]
  %.1.us51 = phi ptr [ %i.bu, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us49 ], [ %.043.us44, %.lr.ph.split.split.us ]
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3                 ; 2 uses
  %i.cb = add nsw i64 %i.ca, -1                   ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !28
  %i.ce = add i8 %i.cd, 1                         ; 3 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !28
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cb
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = icmp eq i64 %i.ch, %i.cf
  %i.cj = icmp sgt i64 %i.ca, 1
  %or.cond.i.us52 = and i1 %i.ci, %i.cj
  br i1 %or.cond.i.us52, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

.lr.ph.i.us54:                                    ; preds = %bb.d, %bb.e
  %i.ck = phi i8 [ %i.ct, %bb.e ], [ %i.ce, %bb.d ]
  %.017.i.us55 = phi i64 [ %i.cq, %bb.e ], [ %i.cb, %bb.d ] ; 4 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.017.i.us55
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !32
  %i.co = icmp eq i64 %i.cn, %i.cl
  br i1 %i.co, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

bb.e:                                             ; preds = %.lr.ph.i.us54
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %.017.i.us55
  store i8 0, ptr %i.cp, align 1, !tbaa !28
  %i.cq = add nsw i64 %.017.i.us55, -1            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %i.cq ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = add i8 %i.cs, 1                         ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !28
  %i.cu = icmp sgt i64 %.017.i.us55, 1
  br i1 %i.cu, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, !llvm.loop !1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57: ; preds = %.lr.ph.i.us54, %bb.e, %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %.02540.us47, i64 8
  %i.cw = add nsw i64 %.02041.us46, -1
  %i.cx = icmp sgt i64 %.02041.us46, 1
  br i1 %i.cx, label %.lr.ph.split.split.us, label %._crit_edge.thread, !llvm.loop !209

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.032.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.cy = ptrtoint ptr %.sroa.032.0 to i64
  %i.cz = sub i64 %.sroa.17.0, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0, i64 noundef %i.cz) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i30 = icmp eq ptr %.sroa.032.0, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIhSaIhEED2Ev.exit31, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01842 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split.split.preheader ] ; 3 uses
  %.02041 = phi i64 [ %i.du, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.v, %.lr.ph.split.split.preheader ] ; 2 uses
  %.02540 = phi ptr [ %i.dt, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split.split.preheader ] ; 2 uses
  %i.db = load i64, ptr %.02540, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dc = getelementptr inbounds nuw i8, ptr %.01842, i64 8
  store i64 %i.db, ptr %.01842, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit ], [ %.01842, %.lr.ph.split.split ]
  %i.dd = load i8, ptr %i.bo, align 1, !tbaa !28
  %i.de = add i8 %i.dd, 1                         ; 3 uses
  store i8 %i.de, ptr %i.bo, align 1, !tbaa !28
  %i.df = zext i8 %i.de to i64
  %i.dg = load i64, ptr %i.bp, align 8, !tbaa !32
  %i.dh = icmp eq i64 %i.dg, %i.df
  %or.cond.i = and i1 %i.dh, %i.bq
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.di = phi i8 [ %i.dr, %bb.h ], [ %i.de, %bb.g ]
  %.017.i = phi i64 [ %i.do, %bb.h ], [ %i.bn, %bb.g ] ; 4 uses
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.017.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !32
  %i.dm = icmp eq i64 %i.dl, %i.dj
  br i1 %i.dm, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %.017.i
  store i8 0, ptr %i.dn, align 1, !tbaa !28
  %i.do = add nsw i64 %.017.i, -1                 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !28
  %i.dr = add i8 %i.dq, 1                         ; 2 uses
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !28
  %i.ds = icmp sgt i64 %.017.i, 1
  br i1 %i.ds, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.dt = getelementptr inbounds nuw i8, ptr %.02540, i64 8
  %i.du = add nsw i64 %.02041, -1
  %i.dv = icmp sgt i64 %.02041, 1
  br i1 %i.dv, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !209

bb.i:                                             ; preds = %bb.f
  %i.dw = ptrtoint ptr %.sroa.032.0 to i64
  %i.dx = sub i64 %.sroa.17.0, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0, i64 noundef %i.dx) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit31

_ZNSt6vectorIhSaIhEED2Ev.exit31:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.da
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIthEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 3 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 6 uses
  %i.r = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc30

.noexc30:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 1                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !30
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc30, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc30 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc30 ] ; 18 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc30 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.033.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 2
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01839.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02038.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02537.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i8, ptr %.02537.us, align 1, !tbaa !28 ; 2 uses
  %.not.us = icmp eq i8 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %.040.us, ptr align 2 %.sroa.033.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01839.us, i64 1
  store i8 %i.ad, ptr %.01839.us, align 1, !tbaa !28
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.040.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01839.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.040.us, %.lr.ph.split.us ]
  %.val28.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val29.us to i64
  %i.ah = ptrtoint ptr %.val28.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !30
  %i.an = add i16 %i.am, 1                        ; 3 uses
  store i16 %i.an, ptr %i.al, align 2, !tbaa !30
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i16 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %.03.i.us
  store i16 0, ptr %i.ay, align 2, !tbaa !30
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !30
  %i.bc = add i16 %i.bb, 1                        ; 2 uses
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !30
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02537.us, i64 1
  %i.bf = add nsw i64 %.02038.us, -1
  %i.bg = icmp sgt i64 %.02038.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !210

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 2
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56
  %.040.us41 = phi ptr [ %.1.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %1, %.lr.ph.split ] ; 3 uses
  %.01839.us42 = phi ptr [ %.119.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038.us43 = phi i64 [ %i.cl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537.us44 = phi ptr [ %i.ck, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.bi = load i8, ptr %.02537.us44, align 1, !tbaa !28 ; 2 uses
  %.not.us45 = icmp eq i8 %i.bi, 0
  br i1 %.not.us45, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46: ; preds = %.lr.ph.split.split.us
  %i.bj = load i16, ptr %.sroa.033.0, align 2, !tbaa !30
  store i16 %i.bj, ptr %.040.us41, align 2, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.01839.us42, i64 1
  store i8 %i.bi, ptr %.01839.us42, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.040.us41, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46, %.lr.ph.split.split.us
  %.119.us47 = phi ptr [ %i.bk, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.01839.us42, %.lr.ph.split.split.us ]
  %.1.us48 = phi ptr [ %i.bl, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.040.us41, %.lr.ph.split.split.us ]
  %.val28.us49 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us50 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bm = ptrtoint ptr %.val29.us50 to i64
  %i.bn = ptrtoint ptr %.val28.us49 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = add nsw i64 %i.bp, -1                   ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !30
  %i.bt = add i16 %i.bs, 1                        ; 3 uses
  store i16 %i.bt, ptr %i.br, align 2, !tbaa !30
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !32
  %i.bx = icmp eq i64 %i.bw, %i.bu
  %i.by = icmp sgt i64 %i.bp, 1
  %or.cond.i.us51 = and i1 %i.bx, %i.by
  br i1 %or.cond.i.us51, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

.lr.ph.i.us53:                                    ; preds = %bb.d, %bb.e
  %i.bz = phi i16 [ %i.ci, %bb.e ], [ %i.bt, %bb.d ]
  %.03.i.us54 = phi i64 [ %i.cf, %bb.e ], [ %i.bq, %bb.d ] ; 4 uses
  %i.ca = zext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i.us54
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

bb.e:                                             ; preds = %.lr.ph.i.us53
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %.03.i.us54
  store i16 0, ptr %i.ce, align 2, !tbaa !30
  %i.cf = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !30
  %i.ci = add i16 %i.ch, 1                        ; 2 uses
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !30
  %i.cj = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.cj, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56: ; preds = %.lr.ph.i.us53, %bb.e, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %.02537.us44, i64 1
  %i.cl = add nsw i64 %.02038.us43, -1
  %i.cm = icmp sgt i64 %.02038.us43, 1
  br i1 %i.cm, label %.lr.ph.split.split.us, label %._crit_edge.thread, !llvm.loop !210

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.cn = ptrtoint ptr %.sroa.033.0 to i64
  %i.co = sub i64 %.sroa.12.0, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.co) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i31 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorItSaItEED2Ev.exit32, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01839 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038 = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537 = phi ptr [ %i.dq, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.cq = load i8, ptr %.02537, align 1, !tbaa !28 ; 2 uses
  %.not = icmp eq i8 %i.cq, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.cr = getelementptr inbounds nuw i8, ptr %.01839, i64 1
  store i8 %i.cq, ptr %.01839, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.cr, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit ], [ %.01839, %.lr.ph.split.split ]
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.cs = ptrtoint ptr %.val29 to i64
  %i.ct = ptrtoint ptr %.val28 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3                 ; 2 uses
  %i.cw = add nsw i64 %i.cv, -1                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.cw ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !30
  %i.cz = add i16 %i.cy, 1                        ; 3 uses
  store i16 %i.cz, ptr %i.cx, align 2, !tbaa !30
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val28, i64 %i.cw
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = icmp eq i64 %i.dc, %i.da
  %i.de = icmp sgt i64 %i.cv, 1
  %or.cond.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.df = phi i16 [ %i.do, %bb.h ], [ %i.cz, %bb.g ]
  %.03.i = phi i64 [ %i.dl, %bb.h ], [ %i.cw, %bb.g ] ; 4 uses
  %i.dg = zext i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val28, i64 %.03.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.dj = icmp eq i64 %i.di, %i.dg
  br i1 %i.dj, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %.03.i
  store i16 0, ptr %i.dk, align 2, !tbaa !30
  %i.dl = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.dl ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !30
  %i.do = add i16 %i.dn, 1                        ; 2 uses
  store i16 %i.do, ptr %i.dm, align 2, !tbaa !30
  %i.dp = icmp sgt i64 %.03.i, 1
  br i1 %i.dp, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %.02537, i64 1
  %i.dr = add nsw i64 %.02038, -1
  %i.ds = icmp sgt i64 %.02038, 1
  br i1 %i.ds, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !210

bb.i:                                             ; preds = %bb.f
  %i.dt = ptrtoint ptr %.sroa.033.0 to i64
  %i.du = sub i64 %.sroa.12.0, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.du) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit32

_ZNSt6vectorItSaItEED2Ev.exit32:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.cp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIttEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc30

.noexc30:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 1                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !30
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc30, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc30 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc30 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc30 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.033.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 2
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01839.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02038.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02537.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i16, ptr %.02537.us, align 2, !tbaa !30 ; 2 uses
  %.not.us = icmp eq i16 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %.040.us, ptr align 2 %.sroa.033.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01839.us, i64 2
  store i16 %i.ad, ptr %.01839.us, align 2, !tbaa !30
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.040.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01839.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.040.us, %.lr.ph.split.us ]
  %.val28.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val29.us to i64
  %i.ah = ptrtoint ptr %.val28.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !30
  %i.an = add i16 %i.am, 1                        ; 3 uses
  store i16 %i.an, ptr %i.al, align 2, !tbaa !30
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i16 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %.03.i.us
  store i16 0, ptr %i.ay, align 2, !tbaa !30
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !30
  %i.bc = add i16 %i.bb, 1                        ; 2 uses
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !30
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02537.us, i64 2
  %i.bf = add nsw i64 %.02038.us, -1
  %i.bg = icmp sgt i64 %.02038.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !211

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 2
  %.val28.us49 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val29.us50 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %.val29.us50 to i64
  %i.bj = ptrtoint ptr %.val28.us49 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.fr60 = freeze i64 %i.bk
  %i.bl = ashr i64 %.fr60, 3                      ; 2 uses
  %i.bm = add nsw i64 %i.bl, -1                   ; 4 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.bm ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = icmp sgt i64 %i.bl, 1                   ; 2 uses
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bq, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.br = load i16, ptr %i.n, align 2, !tbaa !30  ; 2 uses
  %.not.us45.us.prol = icmp eq i16 %i.br, 0
  br i1 %.not.us45.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.bs = load i16, ptr %.sroa.033.0, align 2, !tbaa !30
  store i16 %i.bs, ptr %1, align 2, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.br, ptr %2, align 2, !tbaa !30
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us47.us.prol = phi ptr [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us48.us.prol = phi ptr [ %i.bu, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bv = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bn, align 2, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.by = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.040.us41.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.01839.us42.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us47.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.02038.us43.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.by, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.02537.us44.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %i.bz = icmp eq i64 %i.y, 1
  br i1 %i.bz, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1
  %.040.us41.us = phi ptr [ %.1.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.040.us41.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01839.us42.us = phi ptr [ %.119.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.01839.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02038.us43.us = phi i64 [ %i.co, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.02038.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02537.us44.us = phi ptr [ %i.cn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.02537.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.ca = load i16, ptr %.02537.us44.us, align 2, !tbaa !30 ; 2 uses
  %.not.us45.us = icmp eq i16 %i.ca, 0
  br i1 %.not.us45.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.cb = load i16, ptr %.sroa.033.0, align 2, !tbaa !30
  store i16 %i.cb, ptr %.040.us41.us, align 2, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %.01839.us42.us, i64 2
  store i16 %i.ca, ptr %.01839.us42.us, align 2, !tbaa !30
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.040.us41.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us, %.lr.ph.split.split.us.split.us
  %.119.us47.us = phi ptr [ %i.cc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us ], [ %.01839.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us48.us = phi ptr [ %i.cd, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us ], [ %.040.us41.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.ce = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cf = add i16 %i.ce, 1
  store i16 %i.cf, ptr %i.bn, align 2, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %.02537.us44.us, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !30 ; 2 uses
  %.not.us45.us.1 = icmp eq i16 %i.ch, 0
  br i1 %.not.us45.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us
  %i.ci = load i16, ptr %.sroa.033.0, align 2, !tbaa !30
  store i16 %i.ci, ptr %.1.us48.us, align 2, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %.119.us47.us, i64 2
  store i16 %i.ch, ptr %.119.us47.us, align 2, !tbaa !30
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.1.us48.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us
  %.119.us47.us.1 = phi ptr [ %i.cj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.1 ], [ %.119.us47.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us ]
  %.1.us48.us.1 = phi ptr [ %i.ck, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46.us.1 ], [ %.1.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us ]
  %i.cl = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cm = add i16 %i.cl, 1
  store i16 %i.cm, ptr %i.bn, align 2, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.02537.us44.us, i64 4
  %i.co = add nsw i64 %.02038.us43.us, -2
  %i.cp = icmp sgt i64 %.02038.us43.us, 2
  br i1 %i.cp, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !211

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56
  %.040.us41 = phi ptr [ %.1.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01839.us42 = phi ptr [ %.119.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02038.us43 = phi i64 [ %i.dk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02537.us44 = phi ptr [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cq = load i16, ptr %.02537.us44, align 2, !tbaa !30 ; 2 uses
  %.not.us45 = icmp eq i16 %i.cq, 0
  br i1 %.not.us45, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46: ; preds = %.lr.ph.split.split.us.split
  %i.cr = load i16, ptr %.sroa.033.0, align 2, !tbaa !30
  store i16 %i.cr, ptr %.040.us41, align 2, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %.01839.us42, i64 2
  store i16 %i.cq, ptr %.01839.us42, align 2, !tbaa !30
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.040.us41, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46, %.lr.ph.split.split.us.split
  %.119.us47 = phi ptr [ %i.cs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.01839.us42, %.lr.ph.split.split.us.split ]
  %.1.us48 = phi ptr [ %i.ct, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.040.us41, %.lr.ph.split.split.us.split ]
  %i.cu = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cv = add i16 %i.cu, 1                        ; 3 uses
  store i16 %i.cv, ptr %i.bn, align 2, !tbaa !30
  %i.cw = zext i16 %i.cv to i64
  %i.cx = icmp eq i64 %i.bp, %i.cw
  br i1 %i.cx, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

.lr.ph.i.us53:                                    ; preds = %bb.d, %bb.e
  %i.cy = phi i16 [ %i.dh, %bb.e ], [ %i.cv, %bb.d ]
  %.03.i.us54 = phi i64 [ %i.de, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i.us54
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

bb.e:                                             ; preds = %.lr.ph.i.us53
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %.03.i.us54
  store i16 0, ptr %i.dd, align 2, !tbaa !30
  %i.de = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !30
  %i.dh = add i16 %i.dg, 1                        ; 2 uses
  store i16 %i.dh, ptr %i.df, align 2, !tbaa !30
  %i.di = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.di, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56: ; preds = %.lr.ph.i.us53, %bb.e, %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.02537.us44, i64 2
  %i.dk = add nsw i64 %.02038.us43, -1
  %i.dl = icmp sgt i64 %.02038.us43, 1
  br i1 %i.dl, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !211

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dm = ptrtoint ptr %.sroa.033.0 to i64
  %i.dn = sub i64 %.sroa.12.0, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i31 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorItSaItEED2Ev.exit32, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01839 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038 = phi i64 [ %i.eh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537 = phi ptr [ %i.eg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dp = load i16, ptr %.02537, align 2, !tbaa !30 ; 2 uses
  %.not = icmp eq i16 %i.dp, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dq = getelementptr inbounds nuw i8, ptr %.01839, i64 2
  store i16 %i.dp, ptr %.01839, align 2, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit ], [ %.01839, %.lr.ph.split.split ]
  %i.dr = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.ds = add i16 %i.dr, 1                        ; 3 uses
  store i16 %i.ds, ptr %i.bn, align 2, !tbaa !30
  %i.dt = zext i16 %i.ds to i64
  %i.du = icmp eq i64 %i.bp, %i.dt
  %or.cond.i = and i1 %i.du, %i.bq
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dv = phi i16 [ %i.ee, %bb.h ], [ %i.ds, %bb.g ]
  %.03.i = phi i64 [ %i.eb, %bb.h ], [ %i.bm, %bb.g ] ; 4 uses
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = icmp eq i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %.03.i
  store i16 0, ptr %i.ea, align 2, !tbaa !30
  %i.eb = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.sroa.033.0, i64 %i.eb ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !30
  %i.ee = add i16 %i.ed, 1                        ; 2 uses
  store i16 %i.ee, ptr %i.ec, align 2, !tbaa !30
  %i.ef = icmp sgt i64 %.03.i, 1
  br i1 %i.ef, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %.02537, i64 2
  %i.eh = add nsw i64 %.02038, -1
  %i.ei = icmp sgt i64 %.02038, 1
  br i1 %i.ei, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !211

bb.i:                                             ; preds = %bb.f
  %i.ej = ptrtoint ptr %.sroa.033.0 to i64
  %i.ek = sub i64 %.sroa.12.0, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.ek) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit32

_ZNSt6vectorItSaItEED2Ev.exit32:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.do
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorItjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc31

.noexc31:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 1                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !30
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc31, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc31 ] ; 2 uses
  %.sroa.034.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc31 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc31 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.034.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 2
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.041.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01840.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02039.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02538.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i32, ptr %.02538.us, align 4, !tbaa !27 ; 2 uses
  %.not.us = icmp eq i32 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %.041.us, ptr align 2 %.sroa.034.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01840.us, i64 4
  store i32 %i.ad, ptr %.01840.us, align 4, !tbaa !27
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.041.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01840.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.041.us, %.lr.ph.split.us ]
  %.val29.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val30.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val30.us to i64
  %i.ah = ptrtoint ptr %.val29.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !30
  %i.an = add i16 %i.am, 1                        ; 3 uses
  store i16 %i.an, ptr %i.al, align 2, !tbaa !30
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i16 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %.03.i.us
  store i16 0, ptr %i.ay, align 2, !tbaa !30
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !30
  %i.bc = add i16 %i.bb, 1                        ; 2 uses
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !30
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02538.us, i64 4
  %i.bf = add nsw i64 %.02039.us, -1
  %i.bg = icmp sgt i64 %.02039.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !212

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 2
  %.val29.us50 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val30.us51 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %.val30.us51 to i64
  %i.bj = ptrtoint ptr %.val29.us50 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.fr61 = freeze i64 %i.bk
  %i.bl = ashr i64 %.fr61, 3                      ; 2 uses
  %i.bm = add nsw i64 %i.bl, -1                   ; 4 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.bm ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = icmp sgt i64 %i.bl, 1                   ; 2 uses
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bq, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.br = load i32, ptr %i.n, align 4, !tbaa !27  ; 2 uses
  %.not.us46.us.prol = icmp eq i32 %i.br, 0
  br i1 %.not.us46.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.bs = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.bs, ptr %1, align 2, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.br, ptr %2, align 4, !tbaa !27
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us48.us.prol = phi ptr [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us49.us.prol = phi ptr [ %i.bu, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bv = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bn, align 2, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.by = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.041.us42.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us49.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.01840.us43.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02039.us44.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.by, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02538.us45.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %i.bz = icmp eq i64 %i.y, 1
  br i1 %i.bz, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1
  %.041.us42.us = phi ptr [ %.1.us49.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.041.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01840.us43.us = phi ptr [ %.119.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.01840.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02039.us44.us = phi i64 [ %i.co, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02039.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02538.us45.us = phi ptr [ %i.cn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02538.us45.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.ca = load i32, ptr %.02538.us45.us, align 4, !tbaa !27 ; 2 uses
  %.not.us46.us = icmp eq i32 %i.ca, 0
  br i1 %.not.us46.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.cb = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.cb, ptr %.041.us42.us, align 2, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %.01840.us43.us, i64 4
  store i32 %i.ca, ptr %.01840.us43.us, align 4, !tbaa !27
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.041.us42.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us, %.lr.ph.split.split.us.split.us
  %.119.us48.us = phi ptr [ %i.cc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.01840.us43.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us49.us = phi ptr [ %i.cd, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.041.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.ce = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cf = add i16 %i.ce, 1
  store i16 %i.cf, ptr %i.bn, align 2, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !27 ; 2 uses
  %.not.us46.us.1 = icmp eq i32 %i.ch, 0
  br i1 %.not.us46.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %i.ci = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.ci, ptr %.1.us49.us, align 2, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %.119.us48.us, i64 4
  store i32 %i.ch, ptr %.119.us48.us, align 4, !tbaa !27
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.1.us49.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %.119.us48.us.1 = phi ptr [ %i.cj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.119.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %.1.us49.us.1 = phi ptr [ %i.ck, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.1.us49.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %i.cl = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cm = add i16 %i.cl, 1
  store i16 %i.cm, ptr %i.bn, align 2, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 8
  %i.co = add nsw i64 %.02039.us44.us, -2
  %i.cp = icmp sgt i64 %.02039.us44.us, 2
  br i1 %i.cp, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !212

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57
  %.041.us42 = phi ptr [ %.1.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01840.us43 = phi ptr [ %.119.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02039.us44 = phi i64 [ %i.dk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02538.us45 = phi ptr [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cq = load i32, ptr %.02538.us45, align 4, !tbaa !27 ; 2 uses
  %.not.us46 = icmp eq i32 %i.cq, 0
  br i1 %.not.us46, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47: ; preds = %.lr.ph.split.split.us.split
  %i.cr = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.cr, ptr %.041.us42, align 2, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %.01840.us43, i64 4
  store i32 %i.cq, ptr %.01840.us43, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.041.us42, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47, %.lr.ph.split.split.us.split
  %.119.us48 = phi ptr [ %i.cs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.01840.us43, %.lr.ph.split.split.us.split ]
  %.1.us49 = phi ptr [ %i.ct, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.041.us42, %.lr.ph.split.split.us.split ]
  %i.cu = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cv = add i16 %i.cu, 1                        ; 3 uses
  store i16 %i.cv, ptr %i.bn, align 2, !tbaa !30
  %i.cw = zext i16 %i.cv to i64
  %i.cx = icmp eq i64 %i.bp, %i.cw
  br i1 %i.cx, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

.lr.ph.i.us54:                                    ; preds = %bb.d, %bb.e
  %i.cy = phi i16 [ %i.dh, %bb.e ], [ %i.cv, %bb.d ]
  %.03.i.us55 = phi i64 [ %i.de, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i.us55
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

bb.e:                                             ; preds = %.lr.ph.i.us54
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %.03.i.us55
  store i16 0, ptr %i.dd, align 2, !tbaa !30
  %i.de = add nsw i64 %.03.i.us55, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !30
  %i.dh = add i16 %i.dg, 1                        ; 2 uses
  store i16 %i.dh, ptr %i.df, align 2, !tbaa !30
  %i.di = icmp sgt i64 %.03.i.us55, 1
  br i1 %i.di, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57: ; preds = %.lr.ph.i.us54, %bb.e, %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.02538.us45, i64 4
  %i.dk = add nsw i64 %.02039.us44, -1
  %i.dl = icmp sgt i64 %.02039.us44, 1
  br i1 %i.dl, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !212

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dm = ptrtoint ptr %.sroa.034.0 to i64
  %i.dn = sub i64 %.sroa.12.0, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i32 = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorItSaItEED2Ev.exit33, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01840 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02039 = phi i64 [ %i.eh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02538 = phi ptr [ %i.eg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dp = load i32, ptr %.02538, align 4, !tbaa !27 ; 2 uses
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dq = getelementptr inbounds nuw i8, ptr %.01840, i64 4
  store i32 %i.dp, ptr %.01840, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit ], [ %.01840, %.lr.ph.split.split ]
  %i.dr = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.ds = add i16 %i.dr, 1                        ; 3 uses
  store i16 %i.ds, ptr %i.bn, align 2, !tbaa !30
  %i.dt = zext i16 %i.ds to i64
  %i.du = icmp eq i64 %i.bp, %i.dt
  %or.cond.i = and i1 %i.du, %i.bq
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dv = phi i16 [ %i.ee, %bb.h ], [ %i.ds, %bb.g ]
  %.03.i = phi i64 [ %i.eb, %bb.h ], [ %i.bm, %bb.g ] ; 4 uses
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = icmp eq i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %.03.i
  store i16 0, ptr %i.ea, align 2, !tbaa !30
  %i.eb = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.eb ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !30
  %i.ee = add i16 %i.ed, 1                        ; 2 uses
  store i16 %i.ee, ptr %i.ec, align 2, !tbaa !30
  %i.ef = icmp sgt i64 %.03.i, 1
  br i1 %i.ef, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %.02538, i64 4
  %i.eh = add nsw i64 %.02039, -1
  %i.ei = icmp sgt i64 %.02039, 1
  br i1 %i.ei, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !212

bb.i:                                             ; preds = %bb.f
  %i.ej = ptrtoint ptr %.sroa.034.0 to i64
  %i.ek = sub i64 %.sroa.12.0, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.ek) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit33

_ZNSt6vectorItSaItEED2Ev.exit33:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.do
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorItmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc31

.noexc31:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 1                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !30
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc31, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc31 ] ; 2 uses
  %.sroa.034.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc31 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc31 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.034.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 2
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.041.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01840.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02039.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02538.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i64, ptr %.02538.us, align 8, !tbaa !32 ; 2 uses
  %.not.us = icmp eq i64 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %.041.us, ptr align 2 %.sroa.034.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01840.us, i64 8
  store i64 %i.ad, ptr %.01840.us, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.041.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01840.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us ], [ %.041.us, %.lr.ph.split.us ]
  %.val29.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val30.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val30.us to i64
  %i.ah = ptrtoint ptr %.val29.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !30
  %i.an = add i16 %i.am, 1                        ; 3 uses
  store i16 %i.an, ptr %i.al, align 2, !tbaa !30
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i16 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %.03.i.us
  store i16 0, ptr %i.ay, align 2, !tbaa !30
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !30
  %i.bc = add i16 %i.bb, 1                        ; 2 uses
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !30
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02538.us, i64 8
  %i.bf = add nsw i64 %.02039.us, -1
  %i.bg = icmp sgt i64 %.02039.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !213

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 2
  %.val29.us50 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val30.us51 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %.val30.us51 to i64
  %i.bj = ptrtoint ptr %.val29.us50 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.fr61 = freeze i64 %i.bk
  %i.bl = ashr i64 %.fr61, 3                      ; 2 uses
  %i.bm = add nsw i64 %i.bl, -1                   ; 4 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.bm ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %i.bm ; 2 uses
  %i.bp = icmp sgt i64 %i.bl, 1                   ; 2 uses
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bp, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.bq = load i64, ptr %i.n, align 8, !tbaa !32  ; 2 uses
  %.not.us46.us.prol = icmp eq i64 %i.bq, 0
  br i1 %.not.us46.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.br = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.br, ptr %1, align 2, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bq, ptr %2, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us48.us.prol = phi ptr [ %i.bs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us49.us.prol = phi ptr [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bu = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.bv = add i16 %i.bu, 1
  store i16 %i.bv, ptr %i.bn, align 2, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bx = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.041.us42.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us49.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.01840.us43.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02039.us44.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02538.us45.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %i.by = icmp eq i64 %i.y, 1
  br i1 %i.by, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1
  %.041.us42.us = phi ptr [ %.1.us49.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.041.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01840.us43.us = phi ptr [ %.119.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.01840.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02039.us44.us = phi i64 [ %i.cn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02039.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02538.us45.us = phi ptr [ %i.cm, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02538.us45.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.bz = load i64, ptr %.02538.us45.us, align 8, !tbaa !32 ; 2 uses
  %.not.us46.us = icmp eq i64 %i.bz, 0
  br i1 %.not.us46.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.ca = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.ca, ptr %.041.us42.us, align 2, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %.01840.us43.us, i64 8
  store i64 %i.bz, ptr %.01840.us43.us, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.041.us42.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us, %.lr.ph.split.split.us.split.us
  %.119.us48.us = phi ptr [ %i.cb, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.01840.us43.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us49.us = phi ptr [ %i.cc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.041.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.cd = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.ce = add i16 %i.cd, 1
  store i16 %i.ce, ptr %i.bn, align 2, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %.not.us46.us.1 = icmp eq i64 %i.cg, 0
  br i1 %.not.us46.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %i.ch = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.ch, ptr %.1.us49.us, align 2, !tbaa !30
  %i.ci = getelementptr inbounds nuw i8, ptr %.119.us48.us, i64 8
  store i64 %i.cg, ptr %.119.us48.us, align 8, !tbaa !32
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.1.us49.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %.119.us48.us.1 = phi ptr [ %i.ci, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.119.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %.1.us49.us.1 = phi ptr [ %i.cj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.1.us49.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %i.ck = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.bn, align 2, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 16
  %i.cn = add nsw i64 %.02039.us44.us, -2
  %i.co = icmp sgt i64 %.02039.us44.us, 2
  br i1 %i.co, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !213

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57
  %.041.us42 = phi ptr [ %.1.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01840.us43 = phi ptr [ %.119.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02039.us44 = phi i64 [ %i.dk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02538.us45 = phi ptr [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cp = load i64, ptr %.02538.us45, align 8, !tbaa !32 ; 2 uses
  %.not.us46 = icmp eq i64 %i.cp, 0
  br i1 %.not.us46, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47: ; preds = %.lr.ph.split.split.us.split
  %i.cq = load i16, ptr %.sroa.034.0, align 2, !tbaa !30
  store i16 %i.cq, ptr %.041.us42, align 2, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %.01840.us43, i64 8
  store i64 %i.cp, ptr %.01840.us43, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.041.us42, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47, %.lr.ph.split.split.us.split
  %.119.us48 = phi ptr [ %i.cr, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.01840.us43, %.lr.ph.split.split.us.split ]
  %.1.us49 = phi ptr [ %i.cs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.041.us42, %.lr.ph.split.split.us.split ]
  %i.ct = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.cu = add i16 %i.ct, 1                        ; 3 uses
  store i16 %i.cu, ptr %i.bn, align 2, !tbaa !30
  %i.cv = zext i16 %i.cu to i64
  %i.cw = load i64, ptr %i.bo, align 8, !tbaa !32
  %i.cx = icmp eq i64 %i.cw, %i.cv
  br i1 %i.cx, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

.lr.ph.i.us54:                                    ; preds = %bb.d, %bb.e
  %i.cy = phi i16 [ %i.dh, %bb.e ], [ %i.cu, %bb.d ]
  %.03.i.us55 = phi i64 [ %i.de, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i.us55
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

bb.e:                                             ; preds = %.lr.ph.i.us54
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %.03.i.us55
  store i16 0, ptr %i.dd, align 2, !tbaa !30
  %i.de = add nsw i64 %.03.i.us55, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !30
  %i.dh = add i16 %i.dg, 1                        ; 2 uses
  store i16 %i.dh, ptr %i.df, align 2, !tbaa !30
  %i.di = icmp sgt i64 %.03.i.us55, 1
  br i1 %i.di, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57: ; preds = %.lr.ph.i.us54, %bb.e, %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.02538.us45, i64 8
  %i.dk = add nsw i64 %.02039.us44, -1
  %i.dl = icmp sgt i64 %.02039.us44, 1
  br i1 %i.dl, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !213

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dm = ptrtoint ptr %.sroa.034.0 to i64
  %i.dn = sub i64 %.sroa.12.0, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i32 = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorItSaItEED2Ev.exit33, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01840 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02039 = phi i64 [ %i.ei, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02538 = phi ptr [ %i.eh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dp = load i64, ptr %.02538, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dq = getelementptr inbounds nuw i8, ptr %.01840, i64 8
  store i64 %i.dp, ptr %.01840, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEES2_ET0_T_S8_S7_.exit ], [ %.01840, %.lr.ph.split.split ]
  %i.dr = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.ds = add i16 %i.dr, 1                        ; 3 uses
  store i16 %i.ds, ptr %i.bn, align 2, !tbaa !30
  %i.dt = zext i16 %i.ds to i64
  %i.du = load i64, ptr %i.bo, align 8, !tbaa !32
  %i.dv = icmp eq i64 %i.du, %i.dt
  %or.cond.i = and i1 %i.dv, %i.bp
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dw = phi i16 [ %i.ef, %bb.h ], [ %i.ds, %bb.g ]
  %.03.i = phi i64 [ %i.ec, %bb.h ], [ %i.bm, %bb.g ] ; 4 uses
  %i.dx = zext i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.ea = icmp eq i64 %i.dz, %i.dx
  br i1 %i.ea, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %.03.i
  store i16 0, ptr %i.eb, align 2, !tbaa !30
  %i.ec = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.ec ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !30
  %i.ef = add i16 %i.ee, 1                        ; 2 uses
  store i16 %i.ef, ptr %i.ed, align 2, !tbaa !30
  %i.eg = icmp sgt i64 %.03.i, 1
  br i1 %i.eg, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !2

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexItEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eh = getelementptr inbounds nuw i8, ptr %.02538, i64 8
  %i.ei = add nsw i64 %.02039, -1
  %i.ej = icmp sgt i64 %.02039, 1
  br i1 %i.ej, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !213

bb.i:                                             ; preds = %bb.f
  %i.ek = ptrtoint ptr %.sroa.034.0 to i64
  %i.el = sub i64 %.sroa.12.0, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.el) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit33

_ZNSt6vectorItSaItEED2Ev.exit33:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.do
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 3 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 6 uses
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc30

.noexc30:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !27
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc30, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc30 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc30 ] ; 18 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc30 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.033.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01839.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02038.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02537.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i8, ptr %.02537.us, align 1, !tbaa !28 ; 2 uses
  %.not.us = icmp eq i8 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.040.us, ptr align 4 %.sroa.033.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01839.us, i64 1
  store i8 %i.ad, ptr %.01839.us, align 1, !tbaa !28
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.040.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01839.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.040.us, %.lr.ph.split.us ]
  %.val28.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val29.us to i64
  %i.ah = ptrtoint ptr %.val28.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  %i.an = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !27
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i32 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %.03.i.us
  store i32 0, ptr %i.ay, align 4, !tbaa !27
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !27
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02537.us, i64 1
  %i.bf = add nsw i64 %.02038.us, -1
  %i.bg = icmp sgt i64 %.02038.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !214

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 4
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56
  %.040.us41 = phi ptr [ %.1.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %1, %.lr.ph.split ] ; 3 uses
  %.01839.us42 = phi ptr [ %.119.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038.us43 = phi i64 [ %i.cl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537.us44 = phi ptr [ %i.ck, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.bi = load i8, ptr %.02537.us44, align 1, !tbaa !28 ; 2 uses
  %.not.us45 = icmp eq i8 %i.bi, 0
  br i1 %.not.us45, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46: ; preds = %.lr.ph.split.split.us
  %i.bj = load i32, ptr %.sroa.033.0, align 4, !tbaa !27
  store i32 %i.bj, ptr %.040.us41, align 4, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %.01839.us42, i64 1
  store i8 %i.bi, ptr %.01839.us42, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.040.us41, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46, %.lr.ph.split.split.us
  %.119.us47 = phi ptr [ %i.bk, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.01839.us42, %.lr.ph.split.split.us ]
  %.1.us48 = phi ptr [ %i.bl, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.040.us41, %.lr.ph.split.split.us ]
  %.val28.us49 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us50 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bm = ptrtoint ptr %.val29.us50 to i64
  %i.bn = ptrtoint ptr %.val28.us49 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = add nsw i64 %i.bp, -1                   ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !27
  %i.bt = add i32 %i.bs, 1                        ; 3 uses
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !27
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !32
  %i.bx = icmp eq i64 %i.bw, %i.bu
  %i.by = icmp sgt i64 %i.bp, 1
  %or.cond.i.us51 = and i1 %i.bx, %i.by
  br i1 %or.cond.i.us51, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

.lr.ph.i.us53:                                    ; preds = %bb.d, %bb.e
  %i.bz = phi i32 [ %i.ci, %bb.e ], [ %i.bt, %bb.d ]
  %.03.i.us54 = phi i64 [ %i.cf, %bb.e ], [ %i.bq, %bb.d ] ; 4 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i.us54
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

bb.e:                                             ; preds = %.lr.ph.i.us53
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %.03.i.us54
  store i32 0, ptr %i.ce, align 4, !tbaa !27
  %i.cf = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !27
  %i.ci = add i32 %i.ch, 1                        ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !27
  %i.cj = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.cj, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56: ; preds = %.lr.ph.i.us53, %bb.e, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %.02537.us44, i64 1
  %i.cl = add nsw i64 %.02038.us43, -1
  %i.cm = icmp sgt i64 %.02038.us43, 1
  br i1 %i.cm, label %.lr.ph.split.split.us, label %._crit_edge.thread, !llvm.loop !214

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.cn = ptrtoint ptr %.sroa.033.0 to i64
  %i.co = sub i64 %.sroa.12.0, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.co) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i31 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIjSaIjEED2Ev.exit32, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01839 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038 = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537 = phi ptr [ %i.dq, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.cq = load i8, ptr %.02537, align 1, !tbaa !28 ; 2 uses
  %.not = icmp eq i8 %i.cq, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.cr = getelementptr inbounds nuw i8, ptr %.01839, i64 1
  store i8 %i.cq, ptr %.01839, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.cr, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit ], [ %.01839, %.lr.ph.split.split ]
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.cs = ptrtoint ptr %.val29 to i64
  %i.ct = ptrtoint ptr %.val28 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3                 ; 2 uses
  %i.cw = add nsw i64 %i.cv, -1                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  %i.cz = add i32 %i.cy, 1                        ; 3 uses
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !27
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val28, i64 %i.cw
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = icmp eq i64 %i.dc, %i.da
  %i.de = icmp sgt i64 %i.cv, 1
  %or.cond.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.df = phi i32 [ %i.do, %bb.h ], [ %i.cz, %bb.g ]
  %.03.i = phi i64 [ %i.dl, %bb.h ], [ %i.cw, %bb.g ] ; 4 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val28, i64 %.03.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.dj = icmp eq i64 %i.di, %i.dg
  br i1 %i.dj, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %.03.i
  store i32 0, ptr %i.dk, align 4, !tbaa !27
  %i.dl = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !27
  %i.do = add i32 %i.dn, 1                        ; 2 uses
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !27
  %i.dp = icmp sgt i64 %.03.i, 1
  br i1 %i.dp, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %.02537, i64 1
  %i.dr = add nsw i64 %.02038, -1
  %i.ds = icmp sgt i64 %.02038, 1
  br i1 %i.ds, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !214

bb.i:                                             ; preds = %bb.f
  %i.dt = ptrtoint ptr %.sroa.033.0 to i64
  %i.du = sub i64 %.sroa.12.0, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.du) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit32

_ZNSt6vectorIjSaIjEED2Ev.exit32:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.cp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc30

.noexc30:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !27
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc30, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc30 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc30 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc30 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.033.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01839.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02038.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02537.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i16, ptr %.02537.us, align 2, !tbaa !30 ; 2 uses
  %.not.us = icmp eq i16 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.040.us, ptr align 4 %.sroa.033.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01839.us, i64 2
  store i16 %i.ad, ptr %.01839.us, align 2, !tbaa !30
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.040.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01839.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.040.us, %.lr.ph.split.us ]
  %.val28.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val29.us to i64
  %i.ah = ptrtoint ptr %.val28.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  %i.an = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !27
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i32 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %.03.i.us
  store i32 0, ptr %i.ay, align 4, !tbaa !27
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !27
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02537.us, i64 2
  %i.bf = add nsw i64 %.02038.us, -1
  %i.bg = icmp sgt i64 %.02038.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !215

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 4
  %.val28.us49 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val29.us50 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %.val29.us50 to i64
  %i.bj = ptrtoint ptr %.val28.us49 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.fr60 = freeze i64 %i.bk
  %i.bl = ashr i64 %.fr60, 3                      ; 2 uses
  %i.bm = add nsw i64 %i.bl, -1                   ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.bm ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = icmp sgt i64 %i.bl, 1                   ; 2 uses
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bq, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.br = load i16, ptr %i.n, align 2, !tbaa !30  ; 2 uses
  %.not.us45.us.prol = icmp eq i16 %i.br, 0
  br i1 %.not.us45.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.bs = load i32, ptr %.sroa.033.0, align 4, !tbaa !27
  store i32 %i.bs, ptr %1, align 4, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.br, ptr %2, align 2, !tbaa !30
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us47.us.prol = phi ptr [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us48.us.prol = phi ptr [ %i.bu, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bv = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bn, align 4, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.by = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.040.us41.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.01839.us42.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us47.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.02038.us43.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.by, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.02537.us44.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %i.bz = icmp eq i64 %i.y, 1
  br i1 %i.bz, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1
  %.040.us41.us = phi ptr [ %.1.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.040.us41.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01839.us42.us = phi ptr [ %.119.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.01839.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02038.us43.us = phi i64 [ %i.co, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.02038.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02537.us44.us = phi ptr [ %i.cn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.02537.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.ca = load i16, ptr %.02537.us44.us, align 2, !tbaa !30 ; 2 uses
  %.not.us45.us = icmp eq i16 %i.ca, 0
  br i1 %.not.us45.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.cb = load i32, ptr %.sroa.033.0, align 4, !tbaa !27
  store i32 %i.cb, ptr %.040.us41.us, align 4, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.01839.us42.us, i64 2
  store i16 %i.ca, ptr %.01839.us42.us, align 2, !tbaa !30
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.040.us41.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us, %.lr.ph.split.split.us.split.us
  %.119.us47.us = phi ptr [ %i.cc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us ], [ %.01839.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us48.us = phi ptr [ %i.cd, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us ], [ %.040.us41.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.ce = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bn, align 4, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %.02537.us44.us, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !30 ; 2 uses
  %.not.us45.us.1 = icmp eq i16 %i.ch, 0
  br i1 %.not.us45.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us
  %i.ci = load i32, ptr %.sroa.033.0, align 4, !tbaa !27
  store i32 %i.ci, ptr %.1.us48.us, align 4, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.119.us47.us, i64 2
  store i16 %i.ch, ptr %.119.us47.us, align 2, !tbaa !30
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.1.us48.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us
  %.119.us47.us.1 = phi ptr [ %i.cj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.1 ], [ %.119.us47.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us ]
  %.1.us48.us.1 = phi ptr [ %i.ck, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46.us.1 ], [ %.1.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us ]
  %i.cl = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.bn, align 4, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %.02537.us44.us, i64 4
  %i.co = add nsw i64 %.02038.us43.us, -2
  %i.cp = icmp sgt i64 %.02038.us43.us, 2
  br i1 %i.cp, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !215

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56
  %.040.us41 = phi ptr [ %.1.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01839.us42 = phi ptr [ %.119.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02038.us43 = phi i64 [ %i.dk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02537.us44 = phi ptr [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cq = load i16, ptr %.02537.us44, align 2, !tbaa !30 ; 2 uses
  %.not.us45 = icmp eq i16 %i.cq, 0
  br i1 %.not.us45, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46: ; preds = %.lr.ph.split.split.us.split
  %i.cr = load i32, ptr %.sroa.033.0, align 4, !tbaa !27
  store i32 %i.cr, ptr %.040.us41, align 4, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %.01839.us42, i64 2
  store i16 %i.cq, ptr %.01839.us42, align 2, !tbaa !30
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.040.us41, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46, %.lr.ph.split.split.us.split
  %.119.us47 = phi ptr [ %i.cs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.01839.us42, %.lr.ph.split.split.us.split ]
  %.1.us48 = phi ptr [ %i.ct, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.040.us41, %.lr.ph.split.split.us.split ]
  %i.cu = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cv = add i32 %i.cu, 1                        ; 3 uses
  store i32 %i.cv, ptr %i.bn, align 4, !tbaa !27
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp eq i64 %i.bp, %i.cw
  br i1 %i.cx, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

.lr.ph.i.us53:                                    ; preds = %bb.d, %bb.e
  %i.cy = phi i32 [ %i.dh, %bb.e ], [ %i.cv, %bb.d ]
  %.03.i.us54 = phi i64 [ %i.de, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i.us54
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

bb.e:                                             ; preds = %.lr.ph.i.us53
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %.03.i.us54
  store i32 0, ptr %i.dd, align 4, !tbaa !27
  %i.de = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !27
  %i.dh = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !27
  %i.di = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.di, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56: ; preds = %.lr.ph.i.us53, %bb.e, %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.02537.us44, i64 2
  %i.dk = add nsw i64 %.02038.us43, -1
  %i.dl = icmp sgt i64 %.02038.us43, 1
  br i1 %i.dl, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !215

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dm = ptrtoint ptr %.sroa.033.0 to i64
  %i.dn = sub i64 %.sroa.12.0, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i31 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIjSaIjEED2Ev.exit32, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01839 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038 = phi i64 [ %i.eh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537 = phi ptr [ %i.eg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dp = load i16, ptr %.02537, align 2, !tbaa !30 ; 2 uses
  %.not = icmp eq i16 %i.dp, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dq = getelementptr inbounds nuw i8, ptr %.01839, i64 2
  store i16 %i.dp, ptr %.01839, align 2, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit ], [ %.01839, %.lr.ph.split.split ]
  %i.dr = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.ds = add i32 %i.dr, 1                        ; 3 uses
  store i32 %i.ds, ptr %i.bn, align 4, !tbaa !27
  %i.dt = zext i32 %i.ds to i64
  %i.du = icmp eq i64 %i.bp, %i.dt
  %or.cond.i = and i1 %i.du, %i.bq
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dv = phi i32 [ %i.ee, %bb.h ], [ %i.ds, %bb.g ]
  %.03.i = phi i64 [ %i.eb, %bb.h ], [ %i.bm, %bb.g ] ; 4 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = icmp eq i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %.03.i
  store i32 0, ptr %i.ea, align 4, !tbaa !27
  %i.eb = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !27
  %i.ee = add i32 %i.ed, 1                        ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !27
  %i.ef = icmp sgt i64 %.03.i, 1
  br i1 %i.ef, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %.02537, i64 2
  %i.eh = add nsw i64 %.02038, -1
  %i.ei = icmp sgt i64 %.02038, 1
  br i1 %i.ei, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !215

bb.i:                                             ; preds = %bb.f
  %i.ej = ptrtoint ptr %.sroa.033.0 to i64
  %i.ek = sub i64 %.sroa.12.0, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.ek) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit32

_ZNSt6vectorIjSaIjEED2Ev.exit32:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.do
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc31

.noexc31:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !27
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc31, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc31 ] ; 2 uses
  %.sroa.034.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc31 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc31 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.034.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.041.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01840.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02039.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02538.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i32, ptr %.02538.us, align 4, !tbaa !27 ; 2 uses
  %.not.us = icmp eq i32 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.041.us, ptr align 4 %.sroa.034.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01840.us, i64 4
  store i32 %i.ad, ptr %.01840.us, align 4, !tbaa !27
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.041.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01840.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.041.us, %.lr.ph.split.us ]
  %.val29.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val30.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val30.us to i64
  %i.ah = ptrtoint ptr %.val29.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  %i.an = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !27
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i32 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %.03.i.us
  store i32 0, ptr %i.ay, align 4, !tbaa !27
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !27
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02538.us, i64 4
  %i.bf = add nsw i64 %.02039.us, -1
  %i.bg = icmp sgt i64 %.02039.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !216

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 4
  %.val29.us50 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val30.us51 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %.val30.us51 to i64
  %i.bj = ptrtoint ptr %.val29.us50 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.fr61 = freeze i64 %i.bk
  %i.bl = ashr i64 %.fr61, 3                      ; 2 uses
  %i.bm = add nsw i64 %i.bl, -1                   ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.bm ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = icmp sgt i64 %i.bl, 1                   ; 2 uses
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bq, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.br = load i32, ptr %i.n, align 4, !tbaa !27  ; 2 uses
  %.not.us46.us.prol = icmp eq i32 %i.br, 0
  br i1 %.not.us46.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.bs = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.bs, ptr %1, align 4, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.br, ptr %2, align 4, !tbaa !27
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us48.us.prol = phi ptr [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us49.us.prol = phi ptr [ %i.bu, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bv = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bn, align 4, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.by = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.041.us42.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us49.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.01840.us43.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02039.us44.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.by, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02538.us45.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %i.bz = icmp eq i64 %i.y, 1
  br i1 %i.bz, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1
  %.041.us42.us = phi ptr [ %.1.us49.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.041.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01840.us43.us = phi ptr [ %.119.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.01840.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02039.us44.us = phi i64 [ %i.co, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02039.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02538.us45.us = phi ptr [ %i.cn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02538.us45.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.ca = load i32, ptr %.02538.us45.us, align 4, !tbaa !27 ; 2 uses
  %.not.us46.us = icmp eq i32 %i.ca, 0
  br i1 %.not.us46.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.cb = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.cb, ptr %.041.us42.us, align 4, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.01840.us43.us, i64 4
  store i32 %i.ca, ptr %.01840.us43.us, align 4, !tbaa !27
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.041.us42.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us, %.lr.ph.split.split.us.split.us
  %.119.us48.us = phi ptr [ %i.cc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.01840.us43.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us49.us = phi ptr [ %i.cd, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.041.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.ce = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bn, align 4, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !27 ; 2 uses
  %.not.us46.us.1 = icmp eq i32 %i.ch, 0
  br i1 %.not.us46.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %i.ci = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.ci, ptr %.1.us49.us, align 4, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.119.us48.us, i64 4
  store i32 %i.ch, ptr %.119.us48.us, align 4, !tbaa !27
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.1.us49.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %.119.us48.us.1 = phi ptr [ %i.cj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.119.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %.1.us49.us.1 = phi ptr [ %i.ck, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.1.us49.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %i.cl = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.bn, align 4, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 8
  %i.co = add nsw i64 %.02039.us44.us, -2
  %i.cp = icmp sgt i64 %.02039.us44.us, 2
  br i1 %i.cp, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !216

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57
  %.041.us42 = phi ptr [ %.1.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01840.us43 = phi ptr [ %.119.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02039.us44 = phi i64 [ %i.dk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02538.us45 = phi ptr [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cq = load i32, ptr %.02538.us45, align 4, !tbaa !27 ; 2 uses
  %.not.us46 = icmp eq i32 %i.cq, 0
  br i1 %.not.us46, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47: ; preds = %.lr.ph.split.split.us.split
  %i.cr = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.cr, ptr %.041.us42, align 4, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %.01840.us43, i64 4
  store i32 %i.cq, ptr %.01840.us43, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.041.us42, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47, %.lr.ph.split.split.us.split
  %.119.us48 = phi ptr [ %i.cs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.01840.us43, %.lr.ph.split.split.us.split ]
  %.1.us49 = phi ptr [ %i.ct, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.041.us42, %.lr.ph.split.split.us.split ]
  %i.cu = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cv = add i32 %i.cu, 1                        ; 3 uses
  store i32 %i.cv, ptr %i.bn, align 4, !tbaa !27
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp eq i64 %i.bp, %i.cw
  br i1 %i.cx, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

.lr.ph.i.us54:                                    ; preds = %bb.d, %bb.e
  %i.cy = phi i32 [ %i.dh, %bb.e ], [ %i.cv, %bb.d ]
  %.03.i.us55 = phi i64 [ %i.de, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i.us55
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

bb.e:                                             ; preds = %.lr.ph.i.us54
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %.03.i.us55
  store i32 0, ptr %i.dd, align 4, !tbaa !27
  %i.de = add nsw i64 %.03.i.us55, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !27
  %i.dh = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !27
  %i.di = icmp sgt i64 %.03.i.us55, 1
  br i1 %i.di, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57: ; preds = %.lr.ph.i.us54, %bb.e, %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.02538.us45, i64 4
  %i.dk = add nsw i64 %.02039.us44, -1
  %i.dl = icmp sgt i64 %.02039.us44, 1
  br i1 %i.dl, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !216

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dm = ptrtoint ptr %.sroa.034.0 to i64
  %i.dn = sub i64 %.sroa.12.0, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i32 = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIjSaIjEED2Ev.exit33, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01840 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02039 = phi i64 [ %i.eh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02538 = phi ptr [ %i.eg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dp = load i32, ptr %.02538, align 4, !tbaa !27 ; 2 uses
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dq = getelementptr inbounds nuw i8, ptr %.01840, i64 4
  store i32 %i.dp, ptr %.01840, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit ], [ %.01840, %.lr.ph.split.split ]
  %i.dr = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.ds = add i32 %i.dr, 1                        ; 3 uses
  store i32 %i.ds, ptr %i.bn, align 4, !tbaa !27
  %i.dt = zext i32 %i.ds to i64
  %i.du = icmp eq i64 %i.bp, %i.dt
  %or.cond.i = and i1 %i.du, %i.bq
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dv = phi i32 [ %i.ee, %bb.h ], [ %i.ds, %bb.g ]
  %.03.i = phi i64 [ %i.eb, %bb.h ], [ %i.bm, %bb.g ] ; 4 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = icmp eq i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %.03.i
  store i32 0, ptr %i.ea, align 4, !tbaa !27
  %i.eb = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !27
  %i.ee = add i32 %i.ed, 1                        ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !27
  %i.ef = icmp sgt i64 %.03.i, 1
  br i1 %i.ef, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %.02538, i64 4
  %i.eh = add nsw i64 %.02039, -1
  %i.ei = icmp sgt i64 %.02039, 1
  br i1 %i.ei, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !216

bb.i:                                             ; preds = %bb.f
  %i.ej = ptrtoint ptr %.sroa.034.0 to i64
  %i.ek = sub i64 %.sroa.12.0, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.ek) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit33

_ZNSt6vectorIjSaIjEED2Ev.exit33:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.do
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIjmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc31

.noexc31:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !27
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc31, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc31 ] ; 2 uses
  %.sroa.034.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc31 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc31 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.034.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.041.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01840.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02039.us = phi i64 [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02538.us = phi ptr [ %i.be, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i64, ptr %.02538.us, align 8, !tbaa !32 ; 2 uses
  %.not.us = icmp eq i64 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.041.us, ptr align 4 %.sroa.034.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01840.us, i64 8
  store i64 %i.ad, ptr %.01840.us, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.041.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01840.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us ], [ %.041.us, %.lr.ph.split.us ]
  %.val29.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val30.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val30.us to i64
  %i.ah = ptrtoint ptr %.val29.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  %i.an = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !27
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.ar, %i.as
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.at = phi i32 [ %i.bc, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.az, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %.03.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %.03.i.us
  store i32 0, ptr %i.ay, align 4, !tbaa !27
  %i.az = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !27
  %i.bd = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bd, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02538.us, i64 8
  %i.bf = add nsw i64 %.02039.us, -1
  %i.bg = icmp sgt i64 %.02039.us, 1
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !217

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.ab, 4
  %.val29.us50 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val30.us51 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %.val30.us51 to i64
  %i.bj = ptrtoint ptr %.val29.us50 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.fr61 = freeze i64 %i.bk
  %i.bl = ashr i64 %.fr61, 3                      ; 2 uses
  %i.bm = add nsw i64 %i.bl, -1                   ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.bm ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %i.bm ; 2 uses
  %i.bp = icmp sgt i64 %i.bl, 1                   ; 2 uses
  br i1 %i.bh, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bp, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.bq = load i64, ptr %i.n, align 8, !tbaa !32  ; 2 uses
  %.not.us46.us.prol = icmp eq i64 %i.bq, 0
  br i1 %.not.us46.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.br = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.br, ptr %1, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bq, ptr %2, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us48.us.prol = phi ptr [ %i.bs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us49.us.prol = phi ptr [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bu = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bn, align 4, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bx = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.041.us42.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us49.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.01840.us43.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02039.us44.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02538.us45.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %i.by = icmp eq i64 %i.y, 1
  br i1 %i.by, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1
  %.041.us42.us = phi ptr [ %.1.us49.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.041.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01840.us43.us = phi ptr [ %.119.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.01840.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02039.us44.us = phi i64 [ %i.cn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02039.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02538.us45.us = phi ptr [ %i.cm, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02538.us45.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.bz = load i64, ptr %.02538.us45.us, align 8, !tbaa !32 ; 2 uses
  %.not.us46.us = icmp eq i64 %i.bz, 0
  br i1 %.not.us46.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.ca = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.ca, ptr %.041.us42.us, align 4, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %.01840.us43.us, i64 8
  store i64 %i.bz, ptr %.01840.us43.us, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.041.us42.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us, %.lr.ph.split.split.us.split.us
  %.119.us48.us = phi ptr [ %i.cb, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.01840.us43.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us49.us = phi ptr [ %i.cc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.041.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.cd = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bn, align 4, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %.not.us46.us.1 = icmp eq i64 %i.cg, 0
  br i1 %.not.us46.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %i.ch = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.ch, ptr %.1.us49.us, align 4, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %.119.us48.us, i64 8
  store i64 %i.cg, ptr %.119.us48.us, align 8, !tbaa !32
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.1.us49.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %.119.us48.us.1 = phi ptr [ %i.ci, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.119.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %.1.us49.us.1 = phi ptr [ %i.cj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.1.us49.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %i.ck = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.bn, align 4, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 16
  %i.cn = add nsw i64 %.02039.us44.us, -2
  %i.co = icmp sgt i64 %.02039.us44.us, 2
  br i1 %i.co, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !217

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57
  %.041.us42 = phi ptr [ %.1.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01840.us43 = phi ptr [ %.119.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02039.us44 = phi i64 [ %i.dk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02538.us45 = phi ptr [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cp = load i64, ptr %.02538.us45, align 8, !tbaa !32 ; 2 uses
  %.not.us46 = icmp eq i64 %i.cp, 0
  br i1 %.not.us46, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47: ; preds = %.lr.ph.split.split.us.split
  %i.cq = load i32, ptr %.sroa.034.0, align 4, !tbaa !27
  store i32 %i.cq, ptr %.041.us42, align 4, !tbaa !27
  %i.cr = getelementptr inbounds nuw i8, ptr %.01840.us43, i64 8
  store i64 %i.cp, ptr %.01840.us43, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.041.us42, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47, %.lr.ph.split.split.us.split
  %.119.us48 = phi ptr [ %i.cr, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.01840.us43, %.lr.ph.split.split.us.split ]
  %.1.us49 = phi ptr [ %i.cs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.041.us42, %.lr.ph.split.split.us.split ]
  %i.ct = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.cu = add i32 %i.ct, 1                        ; 3 uses
  store i32 %i.cu, ptr %i.bn, align 4, !tbaa !27
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i64, ptr %i.bo, align 8, !tbaa !32
  %i.cx = icmp eq i64 %i.cw, %i.cv
  br i1 %i.cx, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

.lr.ph.i.us54:                                    ; preds = %bb.d, %bb.e
  %i.cy = phi i32 [ %i.dh, %bb.e ], [ %i.cu, %bb.d ]
  %.03.i.us55 = phi i64 [ %i.de, %bb.e ], [ %i.bm, %bb.d ] ; 4 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i.us55
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

bb.e:                                             ; preds = %.lr.ph.i.us54
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %.03.i.us55
  store i32 0, ptr %i.dd, align 4, !tbaa !27
  %i.de = add nsw i64 %.03.i.us55, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !27
  %i.dh = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !27
  %i.di = icmp sgt i64 %.03.i.us55, 1
  br i1 %i.di, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57: ; preds = %.lr.ph.i.us54, %bb.e, %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.02538.us45, i64 8
  %i.dk = add nsw i64 %.02039.us44, -1
  %i.dl = icmp sgt i64 %.02039.us44, 1
  br i1 %i.dl, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !217

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dm = ptrtoint ptr %.sroa.034.0 to i64
  %i.dn = sub i64 %.sroa.12.0, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i32 = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIjSaIjEED2Ev.exit33, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01840 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02039 = phi i64 [ %i.ei, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02538 = phi ptr [ %i.eh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dp = load i64, ptr %.02538, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dq = getelementptr inbounds nuw i8, ptr %.01840, i64 8
  store i64 %i.dp, ptr %.01840, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit ], [ %.01840, %.lr.ph.split.split ]
  %i.dr = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.ds = add i32 %i.dr, 1                        ; 3 uses
  store i32 %i.ds, ptr %i.bn, align 4, !tbaa !27
  %i.dt = zext i32 %i.ds to i64
  %i.du = load i64, ptr %i.bo, align 8, !tbaa !32
  %i.dv = icmp eq i64 %i.du, %i.dt
  %or.cond.i = and i1 %i.dv, %i.bp
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dw = phi i32 [ %i.ef, %bb.h ], [ %i.ds, %bb.g ]
  %.03.i = phi i64 [ %i.ec, %bb.h ], [ %i.bm, %bb.g ] ; 4 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.ea = icmp eq i64 %i.dz, %i.dx
  br i1 %i.ea, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %.03.i
  store i32 0, ptr %i.eb, align 4, !tbaa !27
  %i.ec = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.034.0, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !27
  %i.ef = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !27
  %i.eg = icmp sgt i64 %.03.i, 1
  br i1 %i.eg, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !3

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIjEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eh = getelementptr inbounds nuw i8, ptr %.02538, i64 8
  %i.ei = add nsw i64 %.02039, -1
  %i.ej = icmp sgt i64 %.02039, 1
  br i1 %i.ej, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !217

bb.i:                                             ; preds = %bb.f
  %i.ek = ptrtoint ptr %.sroa.034.0 to i64
  %i.el = sub i64 %.sroa.12.0, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.el) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit33

_ZNSt6vectorIjSaIjEED2Ev.exit33:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.do
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIlhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 3 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 6 uses
  %i.r = icmp ugt i64 %i.q, 1152921504606846975
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc30

.noexc30:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !32
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc30, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc30 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc30 ] ; 18 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc30 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.033.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 8
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01839.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02038.us = phi i64 [ %i.bd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02537.us = phi ptr [ %i.bc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i8, ptr %.02537.us, align 1, !tbaa !28 ; 2 uses
  %.not.us = icmp eq i8 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.040.us, ptr align 8 %.sroa.033.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01839.us, i64 1
  store i8 %i.ad, ptr %.01839.us, align 1, !tbaa !28
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.040.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01839.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.040.us, %.lr.ph.split.us ]
  %.val28.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val29.us to i64
  %i.ah = ptrtoint ptr %.val28.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !32
  %i.an = add nsw i64 %i.am, 1                    ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %i.ak
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.aq = icmp eq i64 %i.an, %i.ap
  %i.ar = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.aq, %i.ar
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.as = phi i64 [ %i.ba, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.ax, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %.03.i.us
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %.03.i.us
  store i64 0, ptr %i.aw, align 8, !tbaa !32
  %i.ax = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32
  %i.ba = add nsw i64 %i.az, 1                    ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !32
  %i.bb = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bb, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.02537.us, i64 1
  %i.bd = add nsw i64 %.02038.us, -1
  %i.be = icmp sgt i64 %.02038.us, 1
  br i1 %i.be, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !218

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = icmp eq i64 %i.ab, 8
  br i1 %i.bf, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56
  %.040.us41 = phi ptr [ %.1.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %1, %.lr.ph.split ] ; 3 uses
  %.01839.us42 = phi ptr [ %.119.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038.us43 = phi i64 [ %i.ch, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537.us44 = phi ptr [ %i.cg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.bg = load i8, ptr %.02537.us44, align 1, !tbaa !28 ; 2 uses
  %.not.us45 = icmp eq i8 %i.bg, 0
  br i1 %.not.us45, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46: ; preds = %.lr.ph.split.split.us
  %i.bh = load i64, ptr %.sroa.033.0, align 8, !tbaa !32
  store i64 %i.bh, ptr %.040.us41, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.01839.us42, i64 1
  store i8 %i.bg, ptr %.01839.us42, align 1, !tbaa !28
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.040.us41, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46, %.lr.ph.split.split.us
  %.119.us47 = phi ptr [ %i.bi, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.01839.us42, %.lr.ph.split.split.us ]
  %.1.us48 = phi ptr [ %i.bj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.040.us41, %.lr.ph.split.split.us ]
  %.val28.us49 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us50 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bk = ptrtoint ptr %.val29.us50 to i64
  %i.bl = ptrtoint ptr %.val28.us49 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3                 ; 2 uses
  %i.bo = add nsw i64 %i.bn, -1                   ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !32
  %i.br = add nsw i64 %i.bq, 1                    ; 3 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %i.bo
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !32
  %i.bu = icmp eq i64 %i.br, %i.bt
  %i.bv = icmp sgt i64 %i.bn, 1
  %or.cond.i.us51 = and i1 %i.bu, %i.bv
  br i1 %or.cond.i.us51, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

.lr.ph.i.us53:                                    ; preds = %bb.d, %bb.e
  %i.bw = phi i64 [ %i.ce, %bb.e ], [ %i.br, %bb.d ]
  %.03.i.us54 = phi i64 [ %i.cb, %bb.e ], [ %i.bo, %bb.d ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i.us54
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !32
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

bb.e:                                             ; preds = %.lr.ph.i.us53
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %.03.i.us54
  store i64 0, ptr %i.ca, align 8, !tbaa !32
  %i.cb = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.cb ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !32
  %i.ce = add nsw i64 %i.cd, 1                    ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !32
  %i.cf = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.cf, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56: ; preds = %.lr.ph.i.us53, %bb.e, %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %.02537.us44, i64 1
  %i.ch = add nsw i64 %.02038.us43, -1
  %i.ci = icmp sgt i64 %.02038.us43, 1
  br i1 %i.ci, label %.lr.ph.split.split.us, label %._crit_edge.thread, !llvm.loop !218

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.cj = ptrtoint ptr %.sroa.033.0 to i64
  %i.ck = sub i64 %.sroa.12.0, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.ck) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i31 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIlSaIlEED2Ev.exit32, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01839 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038 = phi i64 [ %i.dl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537 = phi ptr [ %i.dk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.cm = load i8, ptr %.02537, align 1, !tbaa !28 ; 2 uses
  %.not = icmp eq i8 %i.cm, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.cn = getelementptr inbounds nuw i8, ptr %.01839, i64 1
  store i8 %i.cm, ptr %.01839, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.cn, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit ], [ %.01839, %.lr.ph.split.split ]
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.co = ptrtoint ptr %.val29 to i64
  %i.cp = ptrtoint ptr %.val28 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3                 ; 2 uses
  %i.cs = add nsw i64 %i.cr, -1                   ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.cv = add nsw i64 %i.cu, 1                    ; 3 uses
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !32
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val28, i64 %i.cs
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !32
  %i.cy = icmp eq i64 %i.cv, %i.cx
  %i.cz = icmp sgt i64 %i.cr, 1
  %or.cond.i = and i1 %i.cy, %i.cz
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.da = phi i64 [ %i.di, %bb.h ], [ %i.cv, %bb.g ]
  %.03.i = phi i64 [ %i.df, %bb.h ], [ %i.cs, %bb.g ] ; 4 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val28, i64 %.03.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %.03.i
  store i64 0, ptr %i.de, align 8, !tbaa !32
  %i.df = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !32
  %i.di = add nsw i64 %i.dh, 1                    ; 2 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !32
  %i.dj = icmp sgt i64 %.03.i, 1
  br i1 %i.dj, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %.02537, i64 1
  %i.dl = add nsw i64 %.02038, -1
  %i.dm = icmp sgt i64 %.02038, 1
  br i1 %i.dm, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !218

bb.i:                                             ; preds = %bb.f
  %i.dn = ptrtoint ptr %.sroa.033.0 to i64
  %i.do = sub i64 %.sroa.12.0, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.do) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit32

_ZNSt6vectorIlSaIlEED2Ev.exit32:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.cl
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIltEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 1152921504606846975
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc30

.noexc30:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !32
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc30, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc30 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc30 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc30 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.033.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 8
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01839.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02038.us = phi i64 [ %i.bd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02537.us = phi ptr [ %i.bc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i16, ptr %.02537.us, align 2, !tbaa !30 ; 2 uses
  %.not.us = icmp eq i16 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.040.us, ptr align 8 %.sroa.033.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01839.us, i64 2
  store i16 %i.ad, ptr %.01839.us, align 2, !tbaa !30
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.040.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01839.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.040.us, %.lr.ph.split.us ]
  %.val28.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val29.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val29.us to i64
  %i.ah = ptrtoint ptr %.val28.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !32
  %i.an = add nsw i64 %i.am, 1                    ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %i.ak
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.aq = icmp eq i64 %i.an, %i.ap
  %i.ar = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.aq, %i.ar
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.as = phi i64 [ %i.ba, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.ax, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val28.us, i64 %.03.i.us
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %.03.i.us
  store i64 0, ptr %i.aw, align 8, !tbaa !32
  %i.ax = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32
  %i.ba = add nsw i64 %i.az, 1                    ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !32
  %i.bb = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bb, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.02537.us, i64 2
  %i.bd = add nsw i64 %.02038.us, -1
  %i.be = icmp sgt i64 %.02038.us, 1
  br i1 %i.be, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !219

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = icmp eq i64 %i.ab, 8
  %.val28.us49 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val29.us50 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bg = ptrtoint ptr %.val29.us50 to i64
  %i.bh = ptrtoint ptr %.val28.us49 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.fr60 = freeze i64 %i.bi
  %i.bj = ashr i64 %.fr60, 3                      ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.bk ; 10 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %i.bk ; 2 uses
  %i.bn = icmp sgt i64 %i.bj, 1                   ; 2 uses
  br i1 %i.bf, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bn, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.bo = load i16, ptr %i.n, align 2, !tbaa !30  ; 2 uses
  %.not.us45.us.prol = icmp eq i16 %i.bo, 0
  br i1 %.not.us45.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.bp = load i64, ptr %.sroa.033.0, align 8, !tbaa !32
  store i64 %i.bp, ptr %1, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.bo, ptr %2, align 2, !tbaa !30
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us47.us.prol = phi ptr [ %i.bq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us48.us.prol = phi ptr [ %i.br, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.bv = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.040.us41.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.01839.us42.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us47.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.02038.us43.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bv, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %.02537.us44.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bu, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.prol ]
  %i.bw = icmp eq i64 %i.y, 1
  br i1 %i.bw, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1
  %.040.us41.us = phi ptr [ %.1.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.040.us41.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01839.us42.us = phi ptr [ %.119.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.01839.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02038.us43.us = phi i64 [ %i.cl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.02038.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02537.us44.us = phi ptr [ %i.ck, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1 ], [ %.02537.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.bx = load i16, ptr %.02537.us44.us, align 2, !tbaa !30 ; 2 uses
  %.not.us45.us = icmp eq i16 %i.bx, 0
  br i1 %.not.us45.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.by = load i64, ptr %.sroa.033.0, align 8, !tbaa !32
  store i64 %i.by, ptr %.040.us41.us, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %.01839.us42.us, i64 2
  store i16 %i.bx, ptr %.01839.us42.us, align 2, !tbaa !30
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.040.us41.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us, %.lr.ph.split.split.us.split.us
  %.119.us47.us = phi ptr [ %i.bz, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us ], [ %.01839.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us48.us = phi ptr [ %i.ca, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us ], [ %.040.us41.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.cb = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.bl, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %.02537.us44.us, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !30 ; 2 uses
  %.not.us45.us.1 = icmp eq i16 %i.ce, 0
  br i1 %.not.us45.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us
  %i.cf = load i64, ptr %.sroa.033.0, align 8, !tbaa !32
  store i64 %i.cf, ptr %.1.us48.us, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %.119.us47.us, i64 2
  store i16 %i.ce, ptr %.119.us47.us, align 2, !tbaa !30
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.1.us48.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us
  %.119.us47.us.1 = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.1 ], [ %.119.us47.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us ]
  %.1.us48.us.1 = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46.us.1 ], [ %.1.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us ]
  %i.ci = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cj = add nsw i64 %i.ci, 1
  store i64 %i.cj, ptr %i.bl, align 8, !tbaa !32
  %i.ck = getelementptr inbounds nuw i8, ptr %.02537.us44.us, i64 4
  %i.cl = add nsw i64 %.02038.us43.us, -2
  %i.cm = icmp sgt i64 %.02038.us43.us, 2
  br i1 %i.cm, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !219

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56
  %.040.us41 = phi ptr [ %.1.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01839.us42 = phi ptr [ %.119.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02038.us43 = phi i64 [ %i.dg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02537.us44 = phi ptr [ %i.df, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cn = load i16, ptr %.02537.us44, align 2, !tbaa !30 ; 2 uses
  %.not.us45 = icmp eq i16 %i.cn, 0
  br i1 %.not.us45, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46: ; preds = %.lr.ph.split.split.us.split
  %i.co = load i64, ptr %.sroa.033.0, align 8, !tbaa !32
  store i64 %i.co, ptr %.040.us41, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %.01839.us42, i64 2
  store i16 %i.cn, ptr %.01839.us42, align 2, !tbaa !30
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.040.us41, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46, %.lr.ph.split.split.us.split
  %.119.us47 = phi ptr [ %i.cp, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.01839.us42, %.lr.ph.split.split.us.split ]
  %.1.us48 = phi ptr [ %i.cq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us46 ], [ %.040.us41, %.lr.ph.split.split.us.split ]
  %i.cr = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cs = add nsw i64 %i.cr, 1                    ; 3 uses
  store i64 %i.cs, ptr %i.bl, align 8, !tbaa !32
  %i.ct = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

.lr.ph.i.us53:                                    ; preds = %bb.d, %bb.e
  %i.cv = phi i64 [ %i.dd, %bb.e ], [ %i.cs, %bb.d ]
  %.03.i.us54 = phi i64 [ %i.da, %bb.e ], [ %i.bk, %bb.d ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i.us54
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !32
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56

bb.e:                                             ; preds = %.lr.ph.i.us53
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %.03.i.us54
  store i64 0, ptr %i.cz, align 8, !tbaa !32
  %i.da = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = add nsw i64 %i.dc, 1                    ; 2 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !32
  %i.de = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.de, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56: ; preds = %.lr.ph.i.us53, %bb.e, %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %.02537.us44, i64 2
  %i.dg = add nsw i64 %.02038.us43, -1
  %i.dh = icmp sgt i64 %.02038.us43, 1
  br i1 %i.dh, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !219

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us56, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.di = ptrtoint ptr %.sroa.033.0 to i64
  %i.dj = sub i64 %.sroa.12.0, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.dj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i31 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIlSaIlEED2Ev.exit32, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01839 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02038 = phi i64 [ %i.ec, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02537 = phi ptr [ %i.eb, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dl = load i16, ptr %.02537, align 2, !tbaa !30 ; 2 uses
  %.not = icmp eq i16 %i.dl, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dm = getelementptr inbounds nuw i8, ptr %.01839, i64 2
  store i16 %i.dl, ptr %.01839, align 2, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dm, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit ], [ %.01839, %.lr.ph.split.split ]
  %i.dn = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.do = add nsw i64 %i.dn, 1                    ; 3 uses
  store i64 %i.do, ptr %i.bl, align 8, !tbaa !32
  %i.dp = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.dq = icmp eq i64 %i.do, %i.dp
  %or.cond.i = and i1 %i.dq, %i.bn
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dr = phi i64 [ %i.dz, %bb.h ], [ %i.do, %bb.g ]
  %.03.i = phi i64 [ %i.dw, %bb.h ], [ %i.bk, %bb.g ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val28.us49, i64 %.03.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !32
  %i.du = icmp eq i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %.03.i
  store i64 0, ptr %i.dv, align 8, !tbaa !32
  %i.dw = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.033.0, i64 %i.dw ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = add nsw i64 %i.dy, 1                    ; 2 uses
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !32
  %i.ea = icmp sgt i64 %.03.i, 1
  br i1 %i.ea, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %.02537, i64 2
  %i.ec = add nsw i64 %.02038, -1
  %i.ed = icmp sgt i64 %.02038, 1
  br i1 %i.ed, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !219

bb.i:                                             ; preds = %bb.f
  %i.ee = ptrtoint ptr %.sroa.033.0 to i64
  %i.ef = sub i64 %.sroa.12.0, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.ef) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit32

_ZNSt6vectorIlSaIlEED2Ev.exit32:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.dk
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIljEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 1152921504606846975
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc31

.noexc31:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !32
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc31, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc31 ] ; 2 uses
  %.sroa.034.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc31 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc31 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.034.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 8
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.041.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01840.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02039.us = phi i64 [ %i.bd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02538.us = phi ptr [ %i.bc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i32, ptr %.02538.us, align 4, !tbaa !27 ; 2 uses
  %.not.us = icmp eq i32 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.041.us, ptr align 8 %.sroa.034.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01840.us, i64 4
  store i32 %i.ad, ptr %.01840.us, align 4, !tbaa !27
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.041.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01840.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.041.us, %.lr.ph.split.us ]
  %.val29.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val30.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val30.us to i64
  %i.ah = ptrtoint ptr %.val29.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !32
  %i.an = add nsw i64 %i.am, 1                    ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %i.ak
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.aq = icmp eq i64 %i.an, %i.ap
  %i.ar = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.aq, %i.ar
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.as = phi i64 [ %i.ba, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.ax, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %.03.i.us
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %.03.i.us
  store i64 0, ptr %i.aw, align 8, !tbaa !32
  %i.ax = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32
  %i.ba = add nsw i64 %i.az, 1                    ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !32
  %i.bb = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bb, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.02538.us, i64 4
  %i.bd = add nsw i64 %.02039.us, -1
  %i.be = icmp sgt i64 %.02039.us, 1
  br i1 %i.be, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !220

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = icmp eq i64 %i.ab, 8
  %.val29.us50 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val30.us51 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bg = ptrtoint ptr %.val30.us51 to i64
  %i.bh = ptrtoint ptr %.val29.us50 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.fr61 = freeze i64 %i.bi
  %i.bj = ashr i64 %.fr61, 3                      ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.bk ; 10 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %i.bk ; 2 uses
  %i.bn = icmp sgt i64 %i.bj, 1                   ; 2 uses
  br i1 %i.bf, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bn, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.bo = load i32, ptr %i.n, align 4, !tbaa !27  ; 2 uses
  %.not.us46.us.prol = icmp eq i32 %i.bo, 0
  br i1 %.not.us46.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.bp = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.bp, ptr %1, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bo, ptr %2, align 4, !tbaa !27
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us48.us.prol = phi ptr [ %i.bq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us49.us.prol = phi ptr [ %i.br, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bv = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.041.us42.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us49.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.01840.us43.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02039.us44.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bv, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02538.us45.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bu, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %i.bw = icmp eq i64 %i.y, 1
  br i1 %i.bw, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1
  %.041.us42.us = phi ptr [ %.1.us49.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.041.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01840.us43.us = phi ptr [ %.119.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.01840.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02039.us44.us = phi i64 [ %i.cl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02039.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02538.us45.us = phi ptr [ %i.ck, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02538.us45.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.bx = load i32, ptr %.02538.us45.us, align 4, !tbaa !27 ; 2 uses
  %.not.us46.us = icmp eq i32 %i.bx, 0
  br i1 %.not.us46.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.by = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.by, ptr %.041.us42.us, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %.01840.us43.us, i64 4
  store i32 %i.bx, ptr %.01840.us43.us, align 4, !tbaa !27
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.041.us42.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us, %.lr.ph.split.split.us.split.us
  %.119.us48.us = phi ptr [ %i.bz, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.01840.us43.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us49.us = phi ptr [ %i.ca, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.041.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.cb = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.bl, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !27 ; 2 uses
  %.not.us46.us.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.us46.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %i.cf = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.cf, ptr %.1.us49.us, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %.119.us48.us, i64 4
  store i32 %i.ce, ptr %.119.us48.us, align 4, !tbaa !27
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.1.us49.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %.119.us48.us.1 = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.119.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %.1.us49.us.1 = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.1.us49.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %i.ci = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cj = add nsw i64 %i.ci, 1
  store i64 %i.cj, ptr %i.bl, align 8, !tbaa !32
  %i.ck = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 8
  %i.cl = add nsw i64 %.02039.us44.us, -2
  %i.cm = icmp sgt i64 %.02039.us44.us, 2
  br i1 %i.cm, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !220

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57
  %.041.us42 = phi ptr [ %.1.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01840.us43 = phi ptr [ %.119.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02039.us44 = phi i64 [ %i.dg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02538.us45 = phi ptr [ %i.df, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cn = load i32, ptr %.02538.us45, align 4, !tbaa !27 ; 2 uses
  %.not.us46 = icmp eq i32 %i.cn, 0
  br i1 %.not.us46, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47: ; preds = %.lr.ph.split.split.us.split
  %i.co = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.co, ptr %.041.us42, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %.01840.us43, i64 4
  store i32 %i.cn, ptr %.01840.us43, align 4, !tbaa !27
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.041.us42, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47, %.lr.ph.split.split.us.split
  %.119.us48 = phi ptr [ %i.cp, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.01840.us43, %.lr.ph.split.split.us.split ]
  %.1.us49 = phi ptr [ %i.cq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47 ], [ %.041.us42, %.lr.ph.split.split.us.split ]
  %i.cr = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cs = add nsw i64 %i.cr, 1                    ; 3 uses
  store i64 %i.cs, ptr %i.bl, align 8, !tbaa !32
  %i.ct = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

.lr.ph.i.us54:                                    ; preds = %bb.d, %bb.e
  %i.cv = phi i64 [ %i.dd, %bb.e ], [ %i.cs, %bb.d ]
  %.03.i.us55 = phi i64 [ %i.da, %bb.e ], [ %i.bk, %bb.d ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i.us55
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !32
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57

bb.e:                                             ; preds = %.lr.ph.i.us54
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %.03.i.us55
  store i64 0, ptr %i.cz, align 8, !tbaa !32
  %i.da = add nsw i64 %.03.i.us55, -1             ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = add nsw i64 %i.dc, 1                    ; 2 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !32
  %i.de = icmp sgt i64 %.03.i.us55, 1
  br i1 %i.de, label %.lr.ph.i.us54, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57: ; preds = %.lr.ph.i.us54, %bb.e, %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %.02538.us45, i64 4
  %i.dg = add nsw i64 %.02039.us44, -1
  %i.dh = icmp sgt i64 %.02039.us44, 1
  br i1 %i.dh, label %.lr.ph.split.split.us.split, label %._crit_edge.thread, !llvm.loop !220

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.di = ptrtoint ptr %.sroa.034.0 to i64
  %i.dj = sub i64 %.sroa.12.0, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.dj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i32 = icmp eq ptr %.sroa.034.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIlSaIlEED2Ev.exit33, label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.01840 = phi ptr [ %.119, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02039 = phi i64 [ %i.ec, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %.02538 = phi ptr [ %i.eb, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %i.dl = load i32, ptr %.02538, align 4, !tbaa !27 ; 2 uses
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.split.split
  %i.dm = getelementptr inbounds nuw i8, ptr %.01840, i64 4
  store i32 %i.dl, ptr %.01840, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, %.lr.ph.split.split
  %.119 = phi ptr [ %i.dm, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit ], [ %.01840, %.lr.ph.split.split ]
  %i.dn = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.do = add nsw i64 %i.dn, 1                    ; 3 uses
  store i64 %i.do, ptr %i.bl, align 8, !tbaa !32
  %i.dp = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.dq = icmp eq i64 %i.do, %i.dp
  %or.cond.i = and i1 %i.dq, %i.bn
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.dr = phi i64 [ %i.dz, %bb.h ], [ %i.do, %bb.g ]
  %.03.i = phi i64 [ %i.dw, %bb.h ], [ %i.bk, %bb.g ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %.03.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !32
  %i.du = icmp eq i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %.03.i
  store i64 0, ptr %i.dv, align 8, !tbaa !32
  %i.dw = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.dw ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = add nsw i64 %i.dy, 1                    ; 2 uses
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !32
  %i.ea = icmp sgt i64 %.03.i, 1
  br i1 %i.ea, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %.02538, i64 4
  %i.ec = add nsw i64 %.02039, -1
  %i.ed = icmp sgt i64 %.02039, 1
  br i1 %i.ed, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !220

bb.i:                                             ; preds = %bb.f
  %i.ee = ptrtoint ptr %.sroa.034.0 to i64
  %i.ef = sub i64 %.sroa.12.0, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0, i64 noundef %i.ef) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit33

_ZNSt6vectorIlSaIlEED2Ev.exit33:                  ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %i.dk
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIlmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !57 ; 5 uses
  %i.p = shl i64 %i.g, 29
  %i.q = ashr i64 %i.p, 32                        ; 9 uses
  %i.r = icmp ugt i64 %i.q, 1152921504606846975
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc31

.noexc31:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !32
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc31, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %.noexc31 ] ; 2 uses
  %.sroa.034.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc31 ] ; 20 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc31 ]
  %i.y = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 8 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ptrtoint ptr %.sroa.034.0 to i64
  %i.ab = sub i64 %.0.i.i.i.i.i.i.i, %i.aa        ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 8
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split, !prof !57

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.041.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01840.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02039.us = phi i64 [ %i.bd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.y, %.lr.ph ] ; 2 uses
  %.02538.us = phi ptr [ %i.bc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.ad = load i64, ptr %.02538.us, align 8, !tbaa !32 ; 2 uses
  %.not.us = icmp eq i64 %i.ad, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.041.us, ptr align 8 %.sroa.034.0, i64 %i.ab, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01840.us, i64 8
  store i64 %i.ad, ptr %.01840.us, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.041.us, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01840.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us ], [ %.041.us, %.lr.ph.split.us ]
  %.val29.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val30.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ag = ptrtoint ptr %.val30.us to i64
  %i.ah = ptrtoint ptr %.val29.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !32
  %i.an = add nsw i64 %i.am, 1                    ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %i.ak
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.aq = icmp eq i64 %i.an, %i.ap
  %i.ar = icmp sgt i64 %i.aj, 1
  %or.cond.i.us = and i1 %i.aq, %i.ar
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.as = phi i64 [ %i.ba, %bb.c ], [ %i.an, %bb.b ]
  %.03.i.us = phi i64 [ %i.ax, %bb.c ], [ %i.ak, %bb.b ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val29.us, i64 %.03.i.us
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %.03.i.us
  store i64 0, ptr %i.aw, align 8, !tbaa !32
  %i.ax = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32
  %i.ba = add nsw i64 %i.az, 1                    ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !32
  %i.bb = icmp sgt i64 %.03.i.us, 1
  br i1 %i.bb, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.02538.us, i64 8
  %i.bd = add nsw i64 %.02039.us, -1
  %i.be = icmp sgt i64 %.02039.us, 1
  br i1 %i.be, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !221

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = icmp eq i64 %i.ab, 8
  %.val29.us50 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val30.us51 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bg = ptrtoint ptr %.val30.us51 to i64
  %i.bh = ptrtoint ptr %.val29.us50 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.fr61 = freeze i64 %i.bi
  %i.bj = ashr i64 %.fr61, 3                      ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.034.0, i64 %i.bk ; 10 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val29.us50, i64 %i.bk ; 2 uses
  %i.bn = icmp sgt i64 %i.bj, 1                   ; 2 uses
  br i1 %i.bf, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bn, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.bo = load i64, ptr %i.n, align 8, !tbaa !32  ; 2 uses
  %.not.us46.us.prol = icmp eq i64 %i.bo, 0
  br i1 %.not.us46.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol: ; preds = %.lr.ph.split.split.us.split.us.prol
  %i.bp = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.bp, ptr %1, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bo, ptr %2, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol, %.lr.ph.split.split.us.split.us.prol
  %.119.us48.us.prol = phi ptr [ %i.bq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %2, %.lr.ph.split.split.us.split.us.prol ]
  %.1.us49.us.prol = phi ptr [ %i.br, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.prol ], [ %1, %.lr.ph.split.split.us.split.us.prol ]
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bv = add nsw i64 %i.y, -1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol, %.lr.ph.split.split.us.split.us.preheader
  %.041.us42.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us49.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.01840.us43.us.unr = phi ptr [ %2, %.lr.ph.split.split.us.split.us.preheader ], [ %.119.us48.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02039.us44.us.unr = phi i64 [ %i.y, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bv, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %.02538.us45.us.unr = phi ptr [ %i.o, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bu, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.prol ]
  %i.bw = icmp eq i64 %i.y, 1
  br i1 %i.bw, label %._crit_edge.thread, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1
  %.041.us42.us = phi ptr [ %.1.us49.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.041.us42.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.01840.us43.us = phi ptr [ %.119.us48.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.01840.us43.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %.02039.us44.us = phi i64 [ %i.cl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02039.us44.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 2 uses
  %.02538.us45.us = phi ptr [ %i.ck, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1 ], [ %.02538.us45.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 3 uses
  %i.bx = load i64, ptr %.02538.us45.us, align 8, !tbaa !32 ; 2 uses
  %.not.us46.us = icmp eq i64 %i.bx, 0
  br i1 %.not.us46.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.by = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.by, ptr %.041.us42.us, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %.01840.us43.us, i64 8
  store i64 %i.bx, ptr %.01840.us43.us, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.041.us42.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us, %.lr.ph.split.split.us.split.us
  %.119.us48.us = phi ptr [ %i.bz, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.01840.us43.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.1.us49.us = phi ptr [ %i.ca, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us ], [ %.041.us42.us, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %i.cb = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.bl, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !32 ; 2 uses
  %.not.us46.us.1 = icmp eq i64 %i.ce, 0
  br i1 %.not.us46.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %i.cf = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.cf, ptr %.1.us49.us, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %.119.us48.us, i64 8
  store i64 %i.ce, ptr %.119.us48.us, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.1.us49.us, i64 %i.q
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us.1: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us
  %.119.us48.us.1 = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.119.us48.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %.1.us49.us.1 = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47.us.1 ], [ %.1.us49.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57.us ]
  %i.ci = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.cj = add nsw i64 %i.ci, 1
  store i64 %i.cj, ptr %i.bl, align 8, !tbaa !32
  %i.ck = getelementptr inbounds nuw i8, ptr %.02538.us45.us, i64 16
  %i.cl = add nsw i64 %.02039.us44.us, -2
  %i.cm = icmp sgt i64 %.02039.us44.us, 2
  br i1 %i.cm, label %.lr.ph.split.split.us.split.us, label %._crit_edge.thread, !llvm.loop !221

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57
  %.041.us42 = phi ptr [ %.1.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.01840.us43 = phi ptr [ %.119.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %2, %.lr.ph.split.split.us ] ; 3 uses
  %.02039.us44 = phi i64 [ %i.dg, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.y, %.lr.ph.split.split.us ] ; 2 uses
  %.02538.us45 = phi ptr [ %i.df, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us57 ], [ %i.o, %.lr.ph.split.split.us ] ; 2 uses
  %i.cn = load i64, ptr %.02538.us45, align 8, !tbaa !32 ; 2 uses
  %.not.us46 = icmp eq i64 %i.cn, 0
  br i1 %.not.us46, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47, !prof !57

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit.us47: ; preds = %.lr.ph.split.split.us.split
  %i.co = load i64, ptr %.sroa.034.0, align 8, !tbaa !32
  store i64 %i.co, ptr %.041.us42, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %.01840.us43, i64 8
  store i64 %i.cn, ptr %.01840.us43, align 8, !tbaa !32
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.041.us42, i64 %i.q
  br label %bb.d
end_hunk_0
