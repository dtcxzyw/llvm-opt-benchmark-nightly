begin_hunk_0_@_ZNK16DeformationModel9Component23ExponentialTimeFunction10evaluateAtEd:bb.a
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_defmodel(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z37pj_projection_specific_setup_defmodelP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.105, ptr %i.d, align 8, !tbaa !218
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL12des_defmodel, ptr %i.e, align 8, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !243
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !244
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !245
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z37pj_projection_specific_setup_defmodelP8PJconsts(ptr noundef %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::unique_ptr.109", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::unique_ptr.89", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !246
  %i.b = tail call ptr @proj_create(ptr noundef %i.a, ptr noundef nonnull @.str.106) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.cd

bb.c:                                             ; preds = %bb.a
  tail call void @_Z24pj_inherit_ellipsoid_defPK8PJconstsPS_(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !246    ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !247
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !250
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.b, ptr %i.h, align 8, !tbaa !252
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.e, ptr %i.i, align 8, !tbaa !253
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL10destructorP8PJconstsi, ptr %i.j, align 8, !tbaa !254
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @_ZL16reassign_contextP8PJconstsP6pj_ctx, ptr %i.k, align 8, !tbaa !255
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !256
  %i.n = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.f, ptr noundef %i.m, ptr noundef nonnull @.str.107) ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.108)
  %i.p = tail call noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %bb.cd

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.q = load ptr, ptr %0, align 8, !tbaa !246
  call void @_ZN5osgeo4proj11FileManager18open_resource_fileEP6pj_ctxPKcPcm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.89") align 8 %8, ptr noundef %i.q, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0)
  %i.r = load ptr, ptr %8, align 8, !tbaa !257    ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.109, ptr noundef nonnull %i.o)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1029)
          to label %bb.cb unwind label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.i:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(73) %i.r, i64 noundef 0, i32 noundef 2)
          to label %bb.j unwind label %bb.h       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %8, align 8, !tbaa !257    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(73) %i.y)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp ugt i64 %i.ac, 10485760
  br i1 %i.ad, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.110, ptr noundef nonnull %i.o)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1029)
          to label %bb.cb unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.o:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %8, align 8, !tbaa !257   ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(73) %i.ag, i64 noundef 0, i32 noundef 0)
          to label %bb.p unwind label %bb.n       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.al, ptr %9, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.am, align 8, !tbaa !17
  store i8 0, ptr %i.al, align 8, !tbaa !16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ac, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.p
  %i.an = load ptr, ptr %8, align 8, !tbaa !257   ; 2 uses
  %i.ao = load ptr, ptr %9, align 8, !tbaa !8
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !17
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(73) %i.an, ptr noundef nonnull %i.ao, i64 noundef %i.ap)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.au = load i64, ptr %i.am, align 8, !tbaa !17
  %.not64 = icmp eq i64 %i.at, %i.au
  br i1 %.not64, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.o)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1029)
          to label %bb.bz unwind label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.u:                                             ; preds = %bb.q
  %i.ax = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %bb.v unwind label %bb.bq      ; 15 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN16DeformationModel10MasterFile5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %bb.br

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val = load ptr, ptr %i.g, align 8
  %i.az = load i64, ptr %10, align 8, !tbaa !27   ; 2 uses
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !27
  store ptr null, ptr %10, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load <2 x double>, ptr %i.ay, align 8, !tbaa !66 ; 5 uses
  store <2 x double> %i.bb, ptr %i.ba, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %foldExtExtBinop = fmul <2 x double> %i.bb, %i.bb
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 1
  %foldExtExtBinop127 = fmul <2 x double> %i.bb, %i.bb
  %i.be = extractelement <2 x double> %foldExtExtBinop127, i64 0
  %i.bf = fdiv double %i.bd, %i.be
  %i.bg = fsub double 1.000000e+00, %i.bf
  store double %i.bg, ptr %i.bc, align 8, !tbaa !259
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.bi = inttoptr i64 %i.az to ptr               ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 536
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 544
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !17 ; 3 uses
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, i64 8), align 8, !tbaa !17
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = load ptr, ptr @_ZN16DeformationModelL10STR_DEGREEB5cxx11E, align 8, !tbaa !8
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !8
  %bcmp.i.i = call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bl)
  %i.br = icmp eq i32 %bcmp.i.i, 0
  %i.bs = zext i1 %i.br to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.bt = phi i8 [ 0, %bb.w ], [ %i.bs, %bb.y ], [ 1, %bb.x ]
  store i8 %i.bt, ptr %i.bh, align 8, !tbaa !272
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 33 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 728
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 736
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !17 ; 3 uses
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, i64 8), align 8, !tbaa !17
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i

bb.z:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = load ptr, ptr @_ZN16DeformationModelL12STR_ADDITIONB5cxx11E, align 8, !tbaa !8
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !8
  %bcmp.i42.i = call i32 @bcmp(ptr %i.cc, ptr %i.cb, i64 %i.bx)
  %i.cd = icmp eq i32 %bcmp.i42.i, 0
  %i.ce = zext i1 %i.cd to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i: ; preds = %bb.aa, %bb.z, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.cf = phi i8 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.ce, %bb.aa ], [ 1, %bb.z ]
  store i8 %i.cf, ptr %i.bu, align 1, !tbaa !273
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 34 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 440
  %.val39.i = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.ci = invoke ptr @proj_create(ptr noundef %.val, ptr noundef %.val39.i)
          to label %.noexc.i unwind label %bb.ag  ; 3 uses

.noexc.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %bb.ab

_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %.noexc.i
  store i8 1, ptr %i.cg, align 2, !tbaa !274
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  br label %.thread.i

bb.ab:                                            ; preds = %.noexc.i
  %i.cl = invoke i32 @proj_get_type(ptr noundef nonnull %i.ci)
          to label %.noexc44.i unwind label %bb.ag

.noexc44.i:                                       ; preds = %bb.ab
  %i.cm = invoke ptr @proj_destroy(ptr noundef nonnull %i.ci)
          to label %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.ag ; 0 uses

_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc44.i
  %i.cn = and i32 %i.cl, -2
  %i.co = icmp eq i32 %i.cn, 12                   ; 2 uses
  %i.cp = zext i1 %i.co to i8
  store i8 %i.cp, ptr %i.cg, align 2, !tbaa !274
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  br i1 %i.co, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN12_GLOBAL__N_114EvaluatorIface15isGeographicCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cr = load i8, ptr %i.bh, align 8, !tbaa !272, !range !135, !noundef !136
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.247, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN16DeformationModel18EvaluatorExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN16DeformationModel18EvaluatorExceptionE, ptr nonnull @_ZN16DeformationModel18EvaluatorExceptionD2Ev) #36
          to label %bb.bo unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc44.i, %bb.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit43.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.027.i = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 4 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.027.i, label %bb.ai, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.027.i, label %bb.ai, label %bb.bn

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn8.i = phi { ptr, i32 } [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ct) #37
  br label %bb.bn

bb.aj:                                            ; preds = %bb.ac
  %i.dc = load i8, ptr %i.bu, align 1, !tbaa !273, !range !135, !noundef !136
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.de = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.248, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN16DeformationModel18EvaluatorExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN16DeformationModel18EvaluatorExceptionE, ptr nonnull @_ZN16DeformationModel18EvaluatorExceptionD2Ev) #36
          to label %bb.bo unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i: ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %.025.i = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 4 uses
  %i.dh = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %bb.an
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !16
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.025.i, label %bb.ao, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.025.i, label %bb.ao, label %bb.bn

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i
  %.pn3012.i = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ]
  call void @__cxa_free_exception(ptr %i.de) #37
  br label %bb.bn

end_hunk_0
