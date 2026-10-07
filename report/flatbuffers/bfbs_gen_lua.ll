Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/bfbs_gen_lua?download=true
inline.NumInlined: 2788
inline.NumDeleted: 765
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt17_Function_handlerIFvPKN10reflection4EnumEEZN11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator13GenerateEnumsEPKNS5_6VectorINS5_6OffsetIS1_EEjEEEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_:bb.a
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %.val2, i64 %i.ae ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !62
  %i.ah = icmp ugt i16 %i.ag, 14
  br i1 %i.ah, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, label %_ZNK10reflection4Enum13documentationEv.exit.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !62 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK10reflection4Enum13documentationEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !60
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  br label %_ZNK10reflection4Enum13documentationEv.exit.i.i.i

_ZNK10reflection4Enum13documentationEv.exit.i.i.i: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ap = phi ptr [ %i.ao, %bb.d ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !16
  store i8 0, ptr %i.aq, align 8, !tbaa !17
  invoke fastcc void @_ZNK11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator21GenerateDocumentationEPKNS_6VectorINS_6OffsetINS_6StringEEEjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSE_(ptr noundef %i.ap, ptr nofreeobj noundef align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %_ZNK10reflection4Enum13documentationEv.exit.i.i.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.aq
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.aw = load ptr, ptr %4, align 8, !tbaa !40, !noalias !316
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16, !noalias !316 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !13, !alias.scope !317
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !16, !alias.scope !317
  store i8 0, ptr %i.az, align 8, !tbaa !17, !alias.scope !317
  %i.bb = add i64 %i.ay, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bb)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !16, !alias.scope !317
  %i.bd = add i64 %i.bc, -4611686018427387898
  %i.be = icmp ult i64 %i.bd, 6
  br i1 %i.be, label %.invoke.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.34, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !16, !alias.scope !317
  %i.bh = sub i64 4611686018427387903, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.ay
  br i1 %i.bi, label %.invoke.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.cont.i.i.i.i.i unwind label %bb.g

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.aw, i64 noundef %i.ay)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i, %.invoke.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %8, align 8, !tbaa !40, !alias.scope !317 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.az
  br i1 %i.bm, label %.body.i.i.i, label %.body.i.i.i.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bn = load i64, ptr %i.ba, align 8, !tbaa !16, !noalias !318
  %i.bo = add i64 %i.bn, -4611686018427387899
  %i.bp = icmp ult i64 %i.bo, 5
  br i1 %i.bp, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.noexc28.i.i.i unwind label %bb.w

.noexc28.i.i.i:                                   ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i.i
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.35, i64 noundef 5)
          to label %.noexc29.i.i.i unwind label %bb.w ; 6 uses

.noexc29.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.br, ptr %7, align 8, !tbaa !13, !alias.scope !318
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i

bb.i:                                             ; preds = %.noexc29.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !16 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i: ; preds = %.noexc29.i.i.i
  store ptr %i.bs, ptr %7, align 8, !tbaa !40, !alias.scope !318
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !17
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !17, !alias.scope !318
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i, %bb.i
  %i.ca = phi i64 [ %i.bw, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !16, !alias.scope !318
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !40
  store i64 0, ptr %i.cb, align 8, !tbaa !16
  store i8 0, ptr %i.bt, align 8, !tbaa !17
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !16
  %i.cf = sub i64 4611686018427387903, %i.ce
  %i.cg = icmp ult i64 %i.cf, %i.cd
  br i1 %i.cg, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.noexc30.i.i.i unwind label %bb.x

.noexc30.i.i.i:                                   ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i.i: ; preds = %bb.j
  %i.ch = load ptr, ptr %7, align 8, !tbaa !40
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ch, i64 noundef %i.cd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i.i
  %i.cj = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.br
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i
  %i.cl = load i64, ptr %i.br, align 8, !tbaa !17
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i
  %i.cn = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.az
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i
  %i.cp = load i64, ptr %i.az, align 8, !tbaa !17
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %.val, ptr %9, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !93
  store ptr @_ZNSt17_Function_handlerIFvPKN10reflection7EnumValEEZZN11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator13GenerateEnumsEPKNS5_6VectorINS5_6OffsetINS0_4EnumEEEjEEENKUlPKSA_E_clESG_EUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.cs, align 8, !tbaa !320
  store ptr @_ZNSt17_Function_handlerIFvPKN10reflection7EnumValEEZZN11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator13GenerateEnumsEPKNS5_6VectorINS5_6OffsetINS0_4EnumEEEjEEENKUlPKSA_E_clESG_EUlS3_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr %i.cr, align 8, !tbaa !68
  %i.ct = load i32, ptr %.val2, align 4, !tbaa !60 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %.val2, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !62
  %i.cy = icmp ugt i16 %i.cx, 6                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !62 ; 5 uses
  br i1 %i.cy, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i, label %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i

._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i.i.i
  %.phi.trans.insert12.i.i.i.i = zext i16 %i.da to i64
  %.phi.trans.insert13.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 %.phi.trans.insert12.i.i.i.i
  %.pre14.i.i.i.i = load i32, ptr %.phi.trans.insert13.i.i.i.i, align 4, !tbaa !60
  br label %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !60 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de
  br label %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i

_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i, %bb.l, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i
  %11 = phi i32 [ %i.dd, %bb.l ], [ %.pre14.i.i.i.i, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i ], [ %i.ct, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i ]
  %12 = phi i16 [ %i.da, %bb.l ], [ %i.da, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.dg = phi ptr [ %i.df, %bb.l ], [ null, %._ZNK10reflection4Enum6valuesEv.exit_crit_edge.i.i.i.i ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i.i ]
  %.sroa.05.08.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  call void @llvm.assume(i1 %i.cy)
  %.not.i.i.i39.i.i.i.i = icmp ne i16 %12, 0
  call void @llvm.assume(i1 %.not.i.i.i39.i.i.i.i)
  %13 = zext i16 %12 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2, i64 %13
  %i.di = zext i32 %11 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !108, !noalias !321
  %i.dm = shl i32 %i.dl, 2
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %.not10.i.i.i.i = icmp eq ptr %.sroa.05.08.i.i.i.i, %i.do
  br i1 %.not10.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i, %.noexc40.i.i.i
  %.sroa.05.011.i.i.i.i = phi ptr [ %.sroa.05.0.i.i.i.i, %.noexc40.i.i.i ], [ %.sroa.05.08.i.i.i.i, %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i ] ; 3 uses
  %i.dp = load i32, ptr %.sroa.05.011.i.i.i.i, align 4, !tbaa !60
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i.i.i, i64 %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !119
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !68
  %.not.i.i.i38.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i38.i.i.i, label %bb.m, label %_ZNKSt8functionIFvPKN10reflection7EnumValEEEclES3_.exit.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc39.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc39.i.i.i:                                   ; preds = %bb.m
  unreachable

_ZNKSt8functionIFvPKN10reflection7EnumValEEEclES3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dt = load ptr, ptr %i.cs, align 8, !tbaa !320
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc40.i.i.i unwind label %.loopexit.i.i.i, !inline_history !309

.noexc40.i.i.i:                                   ; preds = %_ZNKSt8functionIFvPKN10reflection7EnumValEEEclES3_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.05.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i.i.i, i64 4 ; 2 uses
  %i.du = load i32, ptr %.val2, align 4, !tbaa !60
  %i.dv = sext i32 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %.val2, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !62 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp ne i16 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i.i3.i.i.i.i)
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !60
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !108, !noalias !321
  %i.eh = shl i32 %i.eg, 2
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %.not.i.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i.i, %i.ej
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i: ; preds = %.noexc40.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !68 ; 2 uses
  %.not.i41.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i41.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i

_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i, %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i
  %i.ek = phi ptr [ %.pre.i.i.i, %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFvPKN10reflection7EnumValEEZZN11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator13GenerateEnumsEPKNS5_6VectorINS5_6OffsetINS0_4EnumEEEjEEENKUlPKSA_E_clESG_EUlS3_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, %_ZNK10reflection4Enum6valuesEv.exit.i.i.i.i ]
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.thread.i.i.i, %_ZN11flatbuffers12_GLOBAL__N_116ForAllEnumValuesEPKN10reflection4EnumESt8functionIFvPKNS1_7EnumValEEE.exit.i.i.i
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !16
  %i.ep = and i64 %i.eo, -2
  %i.eq = icmp eq i64 %i.ep, 4611686018427387902
  br i1 %i.eq, label %.invoke.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.er = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.36, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42.i.i.i
  %i.es = load i64, ptr %i.d, align 8, !tbaa !16
  %i.et = icmp eq i64 %i.es, 4611686018427387903
  br i1 %i.et, label %.invoke.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
          to label %.cont.i.i.i unwind label %bb.u

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.i.i.i unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ev = load i32, ptr %.val2, align 4, !tbaa !60
  %i.ew = sext i32 %i.ev to i64
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds i8, ptr %.val2, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !62 ; 2 uses
  %.not.i.i.i50.i.i.i = icmp ne i16 %i.fa, 0
  call void @llvm.assume(i1 %.not.i.i.i50.i.i.i)
  %i.fb = zext i16 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !60
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !97, !noalias !322 ; 3 uses
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.fj, ptr %10, align 8, !tbaa !13, !alias.scope !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !322
  store i64 %i.fi, ptr %i.a, align 8, !tbaa !41, !noalias !322
  %i.fk = icmp ugt i32 %i.fh, 15
  br i1 %i.fk, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.i.i.i
  %i.fl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc51.i.i.i unwind label %bb.ab ; 2 uses

.noexc51.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i
  store ptr %i.fl, ptr %10, align 8, !tbaa !40, !alias.scope !322
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !322
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !17, !alias.scope !322
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc51.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.i.i.i
  %i.fn = phi ptr [ %i.fl, %.noexc51.i.i.i ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit48.i.i.i ] ; 2 uses
  switch i32 %i.fh, label %bb.p [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fo = load i8, ptr %i.fg, align 4, !tbaa !17, !noalias !322
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !17
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr nonnull align 4 %i.fg, i64 %i.fi, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i.i
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !322 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !16, !alias.scope !322
  %i.fr = load ptr, ptr %10, align 8, !tbaa !40, !alias.scope !322
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i8 0, ptr %i.fs, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !322
  invoke fastcc void @_ZNK11flatbuffers12_GLOBAL__N_116LuaBfbsGenerator13EmitCodeBlockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(640) %.val, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.ft = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fj
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i: ; preds = %bb.r
  %i.fv = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.fx = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !17
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.gc = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.p
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i
  %i.ge = load i64, ptr %i.p, align 8, !tbaa !17
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i.i
end_hunk_0
