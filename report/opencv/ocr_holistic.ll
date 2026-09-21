Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ocr_holistic?download=true
inline.NumInlined: 478
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv4text29OCRHolisticWordRecognizerImpl3runERNS_3MatERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS_5Rect_IiEESaISD_EEPSB_IS9_SaIS9_EEPSB_IfSaIfEEi:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %9, align 8, !tbaa !29     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !40
  store i32 16842752, ptr %12, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !43
  call void @_ZN2cv4text29OCRHolisticWordRecognizerImpl8classifyB5cxx11ERKNS_11_InputArrayERd(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.m = load ptr, ptr %2, align 8, !tbaa !29     ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %11, align 8, !tbaa !29    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.r, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.r, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  switch i64 %i.t, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.p, align 1, !tbaa !19
  store i8 %i.v, ptr %i.m, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.w = load i64, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !33
  %i.y = load ptr, ptr %2, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.p, ptr %2, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !19
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !19
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !19
  store ptr %i.p, ptr %2, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !19
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %11, align 8, !tbaa !29
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %11, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ah = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.m, %bb.k ], [ %i.q, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !33
  store i8 0, ptr %i.ah, align 1, !tbaa !19
  %i.aj = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.v, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 3 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !47    ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4                 ; 2 uses
  %i.av = icmp eq ptr %i.ap, %i.aq
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = sub nuw nsw i64 1, %i.au
  call void @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.aw)
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.m
  %i.ax = icmp ugt i64 %i.au, 1
  br i1 %i.ax, label %bb.p, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.ay
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.p
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !46
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit: ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !37 ; 6 uses
  %i.bb = icmp slt i32 %i.ba, 3
  br i1 %i.bb, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #21
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !19
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit
  %i.bi = icmp sgt i32 %i.ba, 0
  br i1 %i.bi, label %bb.u, label %.thread.i36

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.bk = icmp eq i32 %i.ba, 2
  %i.bl = zext i1 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !20 ; 2 uses
  %.not.i32 = icmp eq i32 %i.ba, 1
  br i1 %.not.i32, label %.thread59, label %13

.thread.i36:                                      ; preds = %bb.t
  %i.bo = icmp eq i32 %i.ba, 0
  %.sroa.0.0.insert.ext.i = zext i1 %i.bo to i32
  br label %.thread59

13:                                               ; preds = %bb.u
  %14 = load i32, ptr %i.bj, align 4, !tbaa !20
  br label %_ZNK2cv8MatShapeclEv.exit42

.thread59:                                        ; preds = %bb.u, %.thread.i36
  %.sroa.01.0.extract.trunc51 = phi i32 [ %.sroa.0.0.insert.ext.i, %.thread.i36 ], [ %i.bn, %bb.u ]
  %15 = icmp sgt i32 %i.ba, -1
  %16 = zext i1 %15 to i32
  br label %_ZNK2cv8MatShapeclEv.exit42

_ZNK2cv8MatShapeclEv.exit42:                      ; preds = %13, %.thread59
  %.sroa.01.0.extract.trunc50 = phi i32 [ %i.bn, %13 ], [ %.sroa.01.0.extract.trunc51, %.thread59 ]
  %17 = phi i32 [ %14, %13 ], [ %16, %.thread59 ]
  %i.bp = load ptr, ptr %3, align 8, !tbaa !47    ; 4 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %.sroa.01.0.extract.trunc50, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !20
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 %17, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.not26 = icmp eq ptr %4, null
  br i1 %.not26, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24 ; 4 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !23    ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 5                 ; 2 uses
  %i.bx = icmp eq ptr %i.br, %i.bs
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = sub nuw nsw i64 1, %i.bw
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.by)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.y:                                             ; preds = %bb.w
  %i.bz = icmp ugt i64 %i.bw, 1
  br i1 %i.bz, label %bb.z, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.br, %i.ca
  br i1 %.not.i.i43, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ca, %bb.z ] ; 3 uses
  %i.cb = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, %i.br
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.ca, ptr %i.bq, align 8, !tbaa !24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.x, %bb.y, %bb.z, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ch = load ptr, ptr %4, align 8, !tbaa !23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %bb.v
  %.not27 = icmp eq ptr %5, null
  br i1 %.not27, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50 ; 3 uses
  %i.ck = load ptr, ptr %5, align 8, !tbaa !51    ; 6 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 2                 ; 2 uses
  %i.cp = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nuw nsw i64 1, %i.co
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.cq)
  %.pre = load ptr, ptr %5, align 8, !tbaa !51
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cr = icmp ugt i64 %i.co, 1
  br i1 %i.cr, label %bb.ae, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cj, %i.cs
  br i1 %.not.i.i44, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ae
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !50
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.ac, %bb.ad, %bb.ae, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.ct = phi ptr [ %.pre, %bb.ac ], [ %i.ck, %bb.ad ], [ %i.ck, %bb.ae ], [ %i.ck, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  %i.cu = load double, ptr %i.a, align 8, !tbaa !104
  %i.cv = fptrunc double %i.cu to float
  store float %i.cv, ptr %i.ct, align 4, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4text29OCRHolisticWordRecognizerImpl3runERNS_3MatES3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS_5Rect_IiEESaISD_EEPSB_IS9_SaIS9_EEPSB_IfSaIfEEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !106
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv4text29OCRHolisticWordRecognizerImpl3runERNS_3MatERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS_5Rect_IiEESaISD_EEPSB_IS9_SaIS9_EEPSB_IfSaIfEEi, ptr noundef nonnull @.str.2, i32 noundef 59) #21
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %8, align 8, !tbaa !29     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN2cv4text29OCRHolisticWordRecognizerImpl3runERNS_3MatERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS_5Rect_IiEESaISD_EEPSB_IS9_SaIS9_EEPSB_IfSaIfEEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
end_hunk_0
