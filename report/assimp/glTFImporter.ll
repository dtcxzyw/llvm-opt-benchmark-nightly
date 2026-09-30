Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE:bb.a
  %.pre1186 = load ptr, ptr %i.t, align 8
  br label %._crit_edge916

._crit_edge916:                                   ; preds = %._crit_edge916.loopexit, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.ag = phi ptr [ %i.v, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.pre1186, %._crit_edge916.loopexit ] ; 3 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.sroa.10.1.lcssa, %._crit_edge916.loopexit ] ; 3 uses
  %.sroa.16.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.sroa.16.1.lcssa, %._crit_edge916.loopexit ] ; 2 uses
  %.0556.lcssa = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %i.fd, %._crit_edge916.loopexit ] ; 2 uses
  %.sroa.0545.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.sroa.0545.1.lcssa, %._crit_edge916.loopexit ] ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge916
  store i32 %.0556.lcssa, ptr %i.ag, align 4
  %i.aj = load ptr, ptr %i.t, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.t, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %._crit_edge916
  %i.al = load ptr, ptr %i.r, align 8             ; 4 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
          to label %.noexc unwind label %bb.fx

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #32
          to label %.noexc307 unwind label %bb.fx ; 4 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i32 %.0556.lcssa, ptr %i.ax, align 4
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %.noexc307
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %.noexc307
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ba = load ptr, ptr %i.ah, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bc) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.r, align 8
  store ptr %i.az, ptr %i.t, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bd, ptr %i.ah, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %.lr.ph915, %._crit_edge907
  %indvars.iv1177 = phi i64 [ 0, %.lr.ph915 ], [ %indvars.iv.next1178, %._crit_edge907 ] ; 2 uses
  %i.be = phi ptr [ %i.z, %.lr.ph915 ], [ %i.fh, %._crit_edge907 ]
  %.sroa.0545.0913 = phi ptr [ null, %.lr.ph915 ], [ %.sroa.0545.1.lcssa, %._crit_edge907 ] ; 12 uses
  %.0556912 = phi i32 [ 0, %.lr.ph915 ], [ %i.fd, %._crit_edge907 ] ; 3 uses
  %.sroa.16.0911 = phi ptr [ null, %.lr.ph915 ], [ %.sroa.16.1.lcssa, %._crit_edge907 ] ; 12 uses
  %.sroa.10.0910 = phi ptr [ null, %.lr.ph915 ], [ %.sroa.10.1.lcssa, %._crit_edge907 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv1177
  %i.bg = load ptr, ptr %i.bf, align 8            ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bj = load i64, ptr %i.bi, align 8
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %.loopexit602, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.sroa.0538.0861 = load ptr, ptr %i.bh, align 8 ; 2 uses
  %.not565862 = icmp eq ptr %.sroa.0538.0861, %i.bh
  br i1 %.not565862, label %.loopexit602, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  br label %bb.h

.loopexit609:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i312
  %lpad.loopexit611 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp610:                            ; preds = %bb.z
  %lpad.loopexit.split-lp612 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.lr.ph, %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.0538.0863 = phi ptr [ %.sroa.0538.0861, %.lr.ph ], [ %.sroa.0538.0, %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0538.0863, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.bl, align 8
  %i.bu = load ptr, ptr %i.bk, align 8
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 208
  %i.bz = icmp ugt i64 %i.by, 2
  br i1 %i.bz, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull @.str.9)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.fz unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ca) #28
  br label %.body

bb.m:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke { ptr, i32 } @_ZN4glTF8LazyDictINS_6BufferEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef %i.ce)
          to label %_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit603 ; 2 uses

_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cf, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cf, 1
  %i.cg = zext i32 %.fca.1.extract to i64
  %i.ch = load ptr, ptr %.fca.0.extract, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 88 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %.not.i309 = icmp eq ptr %i.cl, null
  br i1 %.not.i309, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i, label %bb.o

bb.o:                                             ; preds = %_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = load i64, ptr %i.bn, align 8
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.p
  %i.cs = load ptr, ptr %i.bm, align 8
  %i.ct = load ptr, ptr %i.cm, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ct, ptr %i.cs, i64 %i.co)
  %i.cu = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cu, label %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.o, %_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 128 ; 4 uses
  %.sroa.014.021.i = load ptr, ptr %i.cv, align 8 ; 3 uses
  %.not2022.i = icmp eq ptr %.sroa.014.021.i, %i.cv
  br i1 %.not2022.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i
  %i.cw = load i64, ptr %i.bn, align 8
  %.fr922 = freeze i64 %i.cw                      ; 3 uses
  %9 = load ptr, ptr %i.bm, align 8
  %i.cx = icmp eq i64 %.fr922, 0
  br i1 %i.cx, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.critedge.i.us
  %.sroa.014.023.i.us = phi ptr [ %.sroa.014.0.i.us, %.critedge.i.us ], [ %.sroa.014.021.i, %.lr.ph.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.us, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.thread.i, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.lr.ph.i.split.us
  %.sroa.014.0.i.us = load ptr, ptr %.sroa.014.023.i.us, align 8 ; 2 uses
  %.not20.i.us = icmp eq ptr %.sroa.014.0.i.us, %i.cv
  br i1 %.not20.i.us, label %._crit_edge.i, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.critedge.i
  %.sroa.014.023.i = phi ptr [ %.sroa.014.0.i, %.critedge.i ], [ %.sroa.014.021.i, %.lr.ph.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 16
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = icmp eq i64 %i.dg, %.fr922
  br i1 %i.dh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.i: ; preds = %.lr.ph.i.split
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %bcmp.i12.i = tail call i32 @bcmp(ptr %i.dj, ptr %9, i64 %.fr922)
  %i.dk = icmp eq i32 %bcmp.i12.i, 0
  br i1 %i.dk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.thread.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.i, %.lr.ph.i.split
  %.sroa.014.0.i = load ptr, ptr %.sroa.014.023.i, align 8 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.014.0.i, %i.cv
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.i, %.lr.ph.i.split.us
  %.us-phi = phi ptr [ %i.cz, %.lr.ph.i.split.us ], [ %i.de, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.i ]
  store ptr %.us-phi, ptr %i.ck, align 8
  br label %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i, %.critedge.i, %.critedge.i.us
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 1 dereferenceable(31) @.str.253, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 1 dereferenceable(13) @.str.254)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %._crit_edge.i
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %.noexc310 unwind label %.loopexit.split-lp604

.noexc310:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %._crit_edge.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dl) #28
  br label %.body

_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.p
  %.sroa.0538.0 = load ptr, ptr %.sroa.0538.0863, align 8 ; 2 uses
  %.not565 = icmp eq ptr %.sroa.0538.0, %i.bh
  br i1 %.not565, label %.loopexit602, label %bb.h

.loopexit603:                                     ; preds = %bb.n
  %lpad.loopexit605 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp604:                            ; preds = %bb.q
  %lpad.loopexit.split-lp606 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.do = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.dp = load i32, ptr %i.dn, align 8
  invoke void @_Z12ai_to_stringIN4glTF4Mesh10SExtension5ETypeEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i32 noundef %i.dp)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN17DeadlyImportErrorC2IJRA59_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 1 dereferenceable(59) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(32) @.str.11)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.fz unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.s
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0246 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ds = load ptr, ptr %8, align 8               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.dv = load i64, ptr %i.dt, align 8
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.0246, label %bb.w, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.0246, label %bb.w, label %.body

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn301559 = phi { ptr, i32 } [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.do) #28
  br label %.body

.loopexit602:                                     ; preds = %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.preheader, %bb.g
  %i.dx = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.dy = load ptr, ptr %i.af, align 8
  %.not.i311 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i311, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit602
  store i32 %.0556912, ptr %i.dx, align 4
  %i.dz = load ptr, ptr %i.t, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store ptr %i.ea, ptr %i.t, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit320

bb.y:                                             ; preds = %.loopexit602
  %i.eb = load ptr, ptr %i.r, align 8             ; 4 uses
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 5 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775804
  br i1 %i.ef, label %bb.z, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i312

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
          to label %.noexc318 unwind label %.loopexit.split-lp610

.noexc318:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i312: ; preds = %bb.y
  %i.eg = ashr exact i64 %i.ee, 2                 ; 3 uses
  %.sroa.speculated.i.i.i313 = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i.i313, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 2305843009213693951)
  %i.ek = select i1 %i.ei, i64 2305843009213693951, i64 %i.ej ; 3 uses
  %.not.i.i.i314 = icmp ne i64 %i.ek, 0
  tail call void @llvm.assume(i1 %.not.i.i.i314)
  %i.el = shl nuw nsw i64 %i.ek, 2
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #32
          to label %.noexc319 unwind label %.loopexit609 ; 4 uses

.noexc319:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i312
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.ee ; 2 uses
  store i32 %.0556912, ptr %i.en, align 4
  %i.eo = icmp sgt i64 %i.ee, 0
  br i1 %i.eo, label %bb.aa, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i315

bb.aa:                                            ; preds = %.noexc319
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.em, ptr align 4 %i.eb, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i315

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i315: ; preds = %bb.aa, %.noexc319
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.not.i17.i.i316 = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i316, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i317, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i315
  %i.eq = load ptr, ptr %i.af, align 8
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.er, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.es) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i317

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i317: ; preds = %bb.ab, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i315
  store ptr %i.em, ptr %i.r, align 8
  store ptr %i.ep, ptr %i.t, align 8
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.et, ptr %i.af, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit320

_ZNSt6vectorIjSaIjEE9push_backERKj.exit320:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i317, %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 72 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bg, i64 80 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = load ptr, ptr %i.eu, align 8            ; 3 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 208
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = add i32 %.0556912, %i.fc                ; 2 uses
  %.not923 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not923, label %._crit_edge907, label %.lr.ph906

.lr.ph906:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit320
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %bb.ac

._crit_edge907:                                   ; preds = %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit320
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0910, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit320 ], [ %.sroa.10.2, %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread ] ; 2 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0911, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit320 ], [ %.sroa.16.4, %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread ] ; 2 uses
  %.sroa.0545.1.lcssa = phi ptr [ %.sroa.0545.0913, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit320 ], [ %.sroa.0545.4, %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread ] ; 2 uses
  %indvars.iv.next1178 = add nuw nsw i64 %indvars.iv1177, 1 ; 2 uses
  %i.fg = load ptr, ptr %i.x, align 8
  %i.fh = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = lshr exact i64 %i.fk, 3
  %i.fm = and i64 %i.fl, 4294967295
  %i.fn = icmp samesign ult i64 %indvars.iv.next1178, %i.fm
  br i1 %i.fn, label %bb.g, label %._crit_edge916.loopexit, !llvm.loop !45

bb.ac:                                            ; preds = %.lr.ph906, %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread
end_hunk_0
