Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/bfbs_gen_nim?download=true
inline.NumInlined: 3308
inline.NumDeleted: 842
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt17_Function_handlerIFvPKN10reflection4EnumEEZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator18GenerateFromSchemaEPKNS0_6SchemaERKNS5_14CodeGenOptionsEEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_:bb.a
  br i1 %i.cj, label %.invoke.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #29
          to label %.cont.i.i.i.i.i.i unwind label %bb.h

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i.i
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.bx, i64 noundef %i.bz)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %10, align 8, !tbaa !44, !alias.scope !326 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ca
  br i1 %i.cn, label %.body.i.i.i.i, label %.body.i.i.i.i.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.co = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN11flatbuffers12_GLOBAL__N_16ExportB5cxx11E, i64 8), align 8, !tbaa !24, !noalias !327 ; 2 uses
  %i.cp = load i64, ptr %i.cb, align 8, !tbaa !24, !noalias !327
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #29
          to label %.noexc40.i.i.i.i unwind label %bb.ab

.noexc40.i.i.i.i:                                 ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i.i
  %i.cs = load ptr, ptr @_ZN11flatbuffers12_GLOBAL__N_16ExportB5cxx11E, align 8, !tbaa !44, !noalias !327
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cs, i64 noundef %i.co)
          to label %.noexc41.i.i.i.i unwind label %bb.ab ; 6 uses

.noexc41.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.cu, ptr %9, align 8, !tbaa !22, !alias.scope !327
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !44 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i

bb.j:                                             ; preds = %.noexc41.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !24 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i: ; preds = %.noexc41.i.i.i.i
  store ptr %i.cv, ptr %9, align 8, !tbaa !44, !alias.scope !327
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !25
  store i64 %i.dc, ptr %i.cu, align 8, !tbaa !25, !alias.scope !327
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i, %bb.j
  %i.dd = phi i64 [ %i.cz, %bb.j ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !24, !alias.scope !327
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !44
  store i64 0, ptr %i.de, align 8, !tbaa !24
  store i8 0, ptr %i.cw, align 8, !tbaa !25
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !24, !noalias !328
  %i.dh = and i64 %i.dg, -16
  %i.di = icmp eq i64 %i.dh, 4611686018427387888
  br i1 %i.di, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #29
          to label %.noexc45.i.i.i.i unwind label %bb.ac

.noexc45.i.i.i.i:                                 ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i: ; preds = %bb.k
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.99, i64 noundef 16)
          to label %.noexc46.i.i.i.i unwind label %bb.ac ; 6 uses

.noexc46.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.dk, ptr %8, align 8, !tbaa !22, !alias.scope !328
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !44 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i.i.i

bb.m:                                             ; preds = %.noexc46.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !24 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i.i.i: ; preds = %.noexc46.i.i.i.i
  store ptr %i.dl, ptr %8, align 8, !tbaa !44, !alias.scope !328
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !25
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !25, !alias.scope !328
  %.phi.trans.insert.i43.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.pre.i44.i.i.i.i = load i64, ptr %.phi.trans.insert.i43.i.i.i.i, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i.i.i, %bb.m
  %i.dt = phi i64 [ %i.dp, %bb.m ], [ %.pre.i44.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !24, !alias.scope !328
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !44
  store i64 0, ptr %i.du, align 8, !tbaa !24
  store i8 0, ptr %i.dm, align 8, !tbaa !25
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !24 ; 2 uses
  %i.dx = load i64, ptr %i.o, align 8, !tbaa !24
  %i.dy = sub i64 4611686018427387903, %i.dx
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i47.i.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #29
          to label %.noexc48.i.i.i.i unwind label %bb.ad

.noexc48.i.i.i.i:                                 ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i47.i.i.i.i: ; preds = %bb.n
  %i.ea = load ptr, ptr %8, align 8, !tbaa !44
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ea, i64 noundef %i.dw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i47.i.i.i.i
  %i.ec = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dk
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i
  %i.ee = load i64, ptr %i.dk, align 8, !tbaa !25
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i
  %i.eg = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cu
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i.i
  %i.ei = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i.i.i
  %i.ek = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ca
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i.i
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.eq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.p unwind label %bb.ae      ; 4 uses

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i.i
  store ptr %.val, ptr %i.eq, align 16, !tbaa !72
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %6, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !tbaa !93
  store ptr %i.eq, ptr %11, align 8, !tbaa !119
  store ptr @_ZNSt17_Function_handlerIFvPKN10reflection7EnumValEEZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator12GenerateEnumEPKNS0_4EnumEEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.ep, align 8, !tbaa !330
  store ptr @_ZNSt17_Function_handlerIFvPKN10reflection7EnumValEEZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator12GenerateEnumEPKNS0_4EnumEEUlS3_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.eo, align 8, !tbaa !74
  %i.er = load i32, ptr %.val2, align 4, !tbaa !66 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds i8, ptr %.val2, i64 %i.et ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !68
  %i.ew = icmp ugt i16 %i.ev, 6                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 6
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !68 ; 4 uses
  br i1 %i.ew, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i, label %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i.i

._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i.i: ; preds = %bb.p
  %.phi.trans.insert12.i.i.i.i.i = zext i16 %i.ey to i64 ; 2 uses
  %.phi.trans.insert13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 %.phi.trans.insert12.i.i.i.i.i
  %.pre14.i.i.i.i.i = load i32, ptr %.phi.trans.insert13.i.i.i.i.i, align 4, !tbaa !66
  br label %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i
  %i.ez = zext i16 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !66 ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc
  br label %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i

_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i:    ; preds = %bb.q, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i.i
  %.pre-phi121.i.i.i.i = phi i64 [ %.phi.trans.insert12.i.i.i.i.i, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i.i ], [ %i.ez, %bb.q ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i ]
  %13 = phi i32 [ %.pre14.i.i.i.i.i, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i.i ], [ %i.fb, %bb.q ], [ %i.er, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i ]
  %i.fe = phi ptr [ null, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i.i ], [ %i.fd, %bb.q ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i.i ]
  %.sroa.05.08.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  call void @llvm.assume(i1 %i.ew)
  %.not.i.i.i39.i.i.i.i.i = icmp ne i16 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i39.i.i.i.i.i)
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2, i64 %.pre-phi121.i.i.i.i
  %i.fg = zext i32 %13 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !109, !noalias !331
  %i.fk = shl i32 %i.fj, 2
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fl
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.05.08.i.i.i.i.i, %i.fm
  br i1 %.not10.i.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i, %.noexc62.i.i.i.i
  %.sroa.05.011.i.i.i.i.i = phi ptr [ %.sroa.05.0.i.i.i.i.i, %.noexc62.i.i.i.i ], [ %.sroa.05.08.i.i.i.i.i, %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i ] ; 3 uses
  %i.fn = load i32, ptr %.sroa.05.011.i.i.i.i.i, align 4, !tbaa !66
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i.i.i.i, i64 %i.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !121
  %i.fq = load ptr, ptr %i.eo, align 8, !tbaa !74
  %.not.i.i.i60.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i60.i.i.i.i, label %bb.r, label %_ZNKSt8functionIFvPKN10reflection7EnumValEEEclES3_.exit.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc61.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc61.i.i.i.i:                                 ; preds = %bb.r
  unreachable

_ZNKSt8functionIFvPKN10reflection7EnumValEEEclES3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fr = load ptr, ptr %i.ep, align 8, !tbaa !330
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc62.i.i.i.i unwind label %.loopexit.i.i.i.i, !inline_history !317

.noexc62.i.i.i.i:                                 ; preds = %_ZNKSt8functionIFvPKN10reflection7EnumValEEEclES3_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.05.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i.i.i.i, i64 4 ; 2 uses
  %i.fs = load i32, ptr %.val2, align 4, !tbaa !66
  %i.ft = sext i32 %i.fs to i64
  %i.fu = sub nsw i64 0, %i.ft                    ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.val2, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !68 ; 2 uses
  %.not.i.i.i3.i.i.i.i.i = icmp ne i16 %i.fx, 0
  call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i.i)
  %i.fy = zext i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !66
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !109, !noalias !331
  %i.gf = shl i32 %i.ge, 2
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i.i.i, %i.gh
  br i1 %.not.i.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !318

_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i.i: ; preds = %.noexc62.i.i.i.i
  %.pre115.i.i.i.i = load ptr, ptr %i.eo, align 8, !tbaa !74 ; 2 uses
  %.not.i63.i.i.i.i = icmp eq ptr %.pre115.i.i.i.i, null
  br i1 %.not.i63.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i.i

_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i.i, %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i
  %i.gi = phi ptr [ %.pre115.i.i.i.i, %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i.i ], [ @_ZNSt17_Function_handlerIFvPKN10reflection7EnumValEEZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator12GenerateEnumEPKNS0_4EnumEEUlS3_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i.i ]
  %i.gj = invoke noundef zeroext i1 %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i.i.i unwind label %bb.s ; 0 uses

._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i.i
  %.pre116.i.i.i.i = load i32, ptr %.val2, align 4, !tbaa !66
  %.pre1.i.i.i = sext i32 %.pre116.i.i.i.i to i64
  %.pre2.i.i.i = sub nsw i64 0, %.pre1.i.i.i
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i

bb.s:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i.i
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i:           ; preds = %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i.i.i, %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i.i
  %.pre-phi3.i.i.i = phi i64 [ %.pre2.i.i.i, %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i.i.i ], [ %i.fu, %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.gm = getelementptr inbounds i8, ptr %.val2, i64 %.pre-phi3.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !68 ; 2 uses
  %.not.i.i.i65.i.i.i.i = icmp ne i16 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i65.i.i.i.i)
  %i.gp = zext i16 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !66
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !98, !noalias !332 ; 3 uses
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.gx, ptr %12, align 8, !tbaa !22, !alias.scope !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !332
  store i64 %i.gw, ptr %i.a, align 8, !tbaa !45, !noalias !332
  %i.gy = icmp ugt i32 %i.gv, 15
  br i1 %i.gy, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i
  %i.gz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc66.i.i.i.i unwind label %bb.ai ; 2 uses

.noexc66.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.gz, ptr %12, align 8, !tbaa !44, !alias.scope !332
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !332
  store i64 %i.ha, ptr %i.gx, align 8, !tbaa !25, !alias.scope !332
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc66.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i
  %i.hb = phi ptr [ %i.gz, %.noexc66.i.i.i.i ], [ %i.gx, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i ] ; 2 uses
  switch i32 %i.gv, label %bb.u [
    i32 1, label %bb.t
    i32 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.hc = load i8, ptr %i.gu, align 4, !tbaa !25, !noalias !332
  store i8 %i.hc, ptr %i.hb, align 1, !tbaa !25
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hb, ptr nonnull align 4 %i.gu, i64 %i.gw, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i.i.i.i.i
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !332 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !24, !alias.scope !332
  %i.hf = load ptr, ptr %12, align 8, !tbaa !44, !alias.scope !332
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hd
  store i8 0, ptr %i.hg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !332
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator13EmitCodeBlockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(640) %.val, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.w unwind label %bb.aj

bb.w:                                             ; preds = %bb.v
  %i.hh = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gx
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i.i: ; preds = %bb.w
  %i.hj = load i64, ptr %i.gx, align 8, !tbaa !25
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.hl = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !25
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.hq = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !25
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.hv = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.p
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i
  %i.hx = load i64, ptr %i.p, align 8, !tbaa !25
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.hz = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.n
  br i1 %i.ia, label %_ZSt10__invoke_rIvRZN11flatbuffers12_GLOBAL__N_116NimBfbsGenerator18GenerateFromSchemaEPKN10reflection6SchemaERKNS0_14CodeGenOptionsEEUlPKNS3_4EnumEE_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i.i.i
  %i.ib = load i64, ptr %i.n, align 8, !tbaa !25
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #27
end_hunk_0
