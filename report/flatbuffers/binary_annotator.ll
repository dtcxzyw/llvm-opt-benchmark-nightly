Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN11flatbuffers15BinaryAnnotator10BuildTableEmNS_17BinarySectionTypeEPKN10reflection6ObjectE:bb.a
  store i32 0, ptr %i.aai, align 8, !tbaa !94, !alias.scope !326
  store i64 %i.acj, ptr %i.zu, align 8, !tbaa !100, !alias.scope !326
  store i64 0, ptr %i.aaj, align 8, !tbaa !101, !alias.scope !326
  %i.aix = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.zx, ptr noundef nonnull align 8 dereferenceable(120) %28) #30 ; 0 uses
  %i.aiy = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(160) %27)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit491 unwind label %bb.ck ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit491: ; preds = %bb.ci
  %i.aiz = load ptr, ptr %i.aad, align 8, !tbaa !95 ; 2 uses
  %i.aja = icmp eq ptr %i.aiz, %i.aae
  br i1 %i.aja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i493, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i492: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit491
  %i.ajb = load i64, ptr %i.aae, align 8, !tbaa !86
  %i.ajc = add i64 %i.ajb, 1
  call void @_ZdlPvm(ptr noundef %i.aiz, i64 noundef %i.ajc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i493

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i493: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i492
  %i.ajd = load ptr, ptr %i.aaa, align 8, !tbaa !95 ; 2 uses
  %i.aje = icmp eq ptr %i.ajd, %i.aab
  br i1 %i.aje, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i494

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i494: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i493
  %i.ajf = load i64, ptr %i.aab, align 8, !tbaa !86
  %i.ajg = add i64 %i.ajf, 1
  call void @_ZdlPvm(ptr noundef %i.ajd, i64 noundef %i.ajg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i493, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i494
  %i.ajh = load ptr, ptr %i.zv, align 8, !tbaa !95 ; 2 uses
  %i.aji = icmp eq ptr %i.ajh, %i.zw
  br i1 %i.aji, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i496: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i495
  %i.ajj = load i64, ptr %i.zw, align 8, !tbaa !86
  %i.ajk = add i64 %i.ajj, 1
  call void @_ZdlPvm(ptr noundef %i.ajh, i64 noundef %i.ajk) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit500

_ZN11flatbuffers12BinaryRegionD2Ev.exit500:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i496
  %i.ajl = load ptr, ptr %i.aak, align 8, !tbaa !95 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajl, %i.aal
  br i1 %i.ajm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit500
  %i.ajn = load i64, ptr %i.aal, align 8, !tbaa !86
  %i.ajo = add i64 %i.ajn, 1
  call void @_ZdlPvm(ptr noundef %i.ajl, i64 noundef %i.ajo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit500, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501
  %i.ajp = load ptr, ptr %i.aam, align 8, !tbaa !95 ; 2 uses
  %i.ajq = icmp eq ptr %i.ajp, %i.aan
  br i1 %i.ajq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i503

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i503: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502
  %i.ajr = load i64, ptr %i.aan, align 8, !tbaa !86
  %i.ajs = add i64 %i.ajr, 1
  call void @_ZdlPvm(ptr noundef %i.ajp, i64 noundef %i.ajs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i503
  %i.ajt = load ptr, ptr %i.aao, align 8, !tbaa !95 ; 2 uses
  %i.aju = icmp eq ptr %i.ajt, %i.aap
  br i1 %i.aju, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i505: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504
  %i.ajv = load i64, ptr %i.aap, align 8, !tbaa !86
  %i.ajw = add i64 %i.ajv, 1
  call void @_ZdlPvm(ptr noundef %i.ajt, i64 noundef %i.ajw) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit509

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit509: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i505
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.cm

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %27) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %28) #30
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn337 = phi { ptr, i32 } [ %i.ajy, %bb.ck ], [ %i.ajx, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488

bb.cm:                                            ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit509, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit485
  %i.ajz = load ptr, ptr %i.xz, align 8, !tbaa !95 ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.ya
  br i1 %i.aka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510: ; preds = %bb.cm
  %i.akb = load i64, ptr %i.ya, align 8, !tbaa !86
  %i.akc = add i64 %i.akb, 1
  call void @_ZdlPvm(ptr noundef %i.ajz, i64 noundef %i.akc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510
  %i.akd = load ptr, ptr %i.xw, align 8, !tbaa !95 ; 2 uses
  %i.ake = icmp eq ptr %i.akd, %i.xx
  br i1 %i.ake, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i512: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511
  %i.akf = load i64, ptr %i.xx, align 8, !tbaa !86
  %i.akg = add i64 %i.akf, 1
  call void @_ZdlPvm(ptr noundef %i.akd, i64 noundef %i.akg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i512
  %i.akh = load ptr, ptr %i.xs, align 8, !tbaa !95 ; 2 uses
  %i.aki = icmp eq ptr %i.akh, %i.xt
  br i1 %i.aki, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i514: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i513
  %i.akj = load i64, ptr %i.xt, align 8, !tbaa !86
  %i.akk = add i64 %i.akj, 1
  call void @_ZdlPvm(ptr noundef %i.akh, i64 noundef %i.akk) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit518

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit518: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i514
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.akl = load ptr, ptr %21, align 8, !tbaa !95  ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.xq
  br i1 %i.akm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit518
  %i.akn = load i64, ptr %i.xq, align 8, !tbaa !86
  %i.ako = add i64 %i.akn, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.ako) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit518, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.hv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486, %bb.cc, %bb.cg, %bb.cl
  %.pn337.pn = phi { ptr, i32 } [ %.pn337, %bb.cl ], [ %i.aip, %bb.cc ], [ %.pn334, %bb.cg ], [ %i.aiq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486 ], [ %i.aiq, %bb.cd ]
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit.split-lp1212.loopexit.split-lp.loopexit.split-lp, %.body444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488
  %.pn337.pn.pn = phi { ptr, i32 } [ %.pn337.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ], [ %.pn330, %.body444 ], [ %lpad.loopexit.split-lp2303, %.loopexit.split-lp1212.loopexit.split-lp.loopexit.split-lp ]
  %i.akp = load ptr, ptr %21, align 8, !tbaa !95  ; 2 uses
  %i.akq = icmp eq ptr %i.akp, %i.xq
  br i1 %i.akq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522: ; preds = %bb.cn
  %i.akr = load i64, ptr %i.xq, align 8, !tbaa !86
  %i.aks = add i64 %i.akr, 1
  call void @_ZdlPvm(ptr noundef %i.akp, i64 noundef %i.aks) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %.body

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i525: ; preds = %bb.ba
  %i.akt = load i32, ptr %i.abs, align 4, !tbaa !63
  %i.aku = sext i32 %i.akt to i64
  %i.akv = sub nsw i64 0, %i.aku
  %i.akw = getelementptr inbounds i8, ptr %i.abs, i64 %i.akv ; 3 uses
  %i.akx = load i16, ptr %i.akw, align 2, !tbaa !97 ; 2 uses
  %i.aky = icmp ugt i16 %i.akx, 6
  call void @llvm.assume(i1 %i.aky)
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akw, i64 6
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i526 = icmp ne i16 %i.ala, 0
  call void @llvm.assume(i1 %.not.i.i.i526)
  %i.alb = zext i16 %i.ala to i64
  %i.alc = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.alb ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !63
  %i.ale = zext i32 %i.ald to i64
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 %i.ale ; 3 uses
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !63
  %i.alh = sext i32 %i.alg to i64
  %i.ali = sub nsw i64 0, %i.alh
  %i.alj = getelementptr inbounds i8, ptr %i.alf, i64 %i.ali ; 2 uses
  %i.alk = load i16, ptr %i.alj, align 2, !tbaa !97
  %i.all = icmp ugt i16 %i.alk, 4
  br i1 %i.all, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection4Type9base_typeEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i525
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alj, i64 4
  %i.aln = load i16, ptr %i.alm, align 2, !tbaa !97 ; 2 uses
  %.not.i.i = icmp eq i16 %i.aln, 0
  br i1 %.not.i.i, label %_ZNK10reflection4Type9base_typeEv.exit.thread, label %_ZNK10reflection4Type9base_typeEv.exit

_ZNK10reflection4Type9base_typeEv.exit:           ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.alo = zext i16 %i.aln to i64
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alf, i64 %i.alo
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !86 ; 3 uses
  %79 = add i8 %i.alq, -1
  %i.alr = icmp ult i8 %79, 12
  br i1 %i.alr, label %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit, label %_ZNK10reflection4Type9base_typeEv.exit.thread

_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit: ; preds = %_ZNK10reflection4Type9base_typeEv.exit
  %80 = zext nneg i8 %i.alq to i64
  %81 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !64     ; 9 uses
  %83 = zext nneg i8 %i.alq to i64
  %84 = getelementptr i8, ptr @"switch.table._ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE.26", i64 %83
  %switch.gep = getelementptr i8, ptr %84, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  store i32 0, ptr %29, align 8, !tbaa !83
  store ptr %i.op, ptr %i.oo, align 8, !tbaa !84
  store i64 0, ptr %i.oq, align 8, !tbaa !85
  store i8 0, ptr %i.op, align 8, !tbaa !86
  store ptr %i.ot, ptr %i.os, align 8, !tbaa !84
  store i64 0, ptr %i.ou, align 8, !tbaa !85
  store i8 0, ptr %i.ot, align 8, !tbaa !86
  store ptr %i.ow, ptr %i.ov, align 8, !tbaa !84
  store i64 0, ptr %i.ox, align 8, !tbaa !85
  store i8 0, ptr %i.ow, align 8, !tbaa !86
  store i64 0, ptr %i.oy, align 8, !tbaa !87
  store i32 10, ptr %i.or, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.als = load i32, ptr %i.abs, align 4, !tbaa !63
  %i.alt = sext i32 %i.als to i64
  %i.alu = sub nsw i64 0, %i.alt
  %i.alv = getelementptr inbounds i8, ptr %i.abs, i64 %i.alu
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 4
  %i.alx = load i16, ptr %i.alw, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i541 = icmp ne i16 %i.alx, 0
  call void @llvm.assume(i1 %.not.i.i.i541)
  %i.aly = zext i16 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aly ; 2 uses
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !63
  %i.amb = zext i32 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 %i.amb
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 4 ; 3 uses
  store ptr %i.oz, ptr %33, align 8, !tbaa !84
  %i.ame = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amd) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.ame, ptr %i.c, align 8, !tbaa !64
  %i.amf = icmp ugt i64 %i.ame, 15
  br i1 %i.amf, label %.noexc.i543, label %._crit_edge.i.i542

.noexc.i543:                                      ; preds = %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit
  %i.amg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc544 unwind label %bb.dp ; 2 uses

.noexc544:                                        ; preds = %.noexc.i543
  store ptr %i.amg, ptr %33, align 8, !tbaa !95
  %i.amh = load i64, ptr %i.c, align 8, !tbaa !64
  store i64 %i.amh, ptr %i.oz, align 8, !tbaa !86
  br label %._crit_edge.i.i542

._crit_edge.i.i542:                               ; preds = %.noexc544, %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit
  %i.ami = phi ptr [ %i.amg, %.noexc544 ], [ %i.oz, %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit ] ; 2 uses
  switch i64 %i.ame, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %bb.cq
  ]

bb.co:                                            ; preds = %._crit_edge.i.i542
  %i.amj = load i8, ptr %i.amd, align 1, !tbaa !86
  store i8 %i.amj, ptr %i.ami, align 1, !tbaa !86
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge.i.i542
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ami, ptr nonnull align 1 %i.amd, i64 %i.ame, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i.i542
  %i.amk = load i64, ptr %i.c, align 8, !tbaa !64 ; 2 uses
  store i64 %i.amk, ptr %i.pa, align 8, !tbaa !85
  %i.aml = load ptr, ptr %33, align 8, !tbaa !95
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.amk
  store i8 0, ptr %i.amm, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.amn = load i64, ptr %i.pa, align 8, !tbaa !85, !noalias !327
  %i.amo = add i64 %i.amn, -4611686018427387901
  %i.amp = icmp ult i64 %i.amo, 3
  br i1 %i.amp, label %bb.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc549 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc549:                                        ; preds = %bb.cr
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546: ; preds = %bb.cq
  %i.amq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.6, i64 noundef 3)
          to label %.noexc550 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc550:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546
  store ptr %i.pb, ptr %32, align 8, !tbaa !84, !alias.scope !327
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !95 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 16 ; 5 uses
  %i.amt = icmp eq ptr %i.amr, %i.ams
  br i1 %i.amt, label %bb.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547

bb.cs:                                            ; preds = %.noexc550
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  %i.amv = load i64, ptr %i.amu, align 8, !tbaa !85 ; 3 uses
  %i.amw = icmp ult i64 %i.amv, 16
  call void @llvm.assume(i1 %i.amw)
  %i.amx = add nuw nsw i64 %i.amv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pb, ptr noundef nonnull align 8 dereferenceable(1) %i.ams, i64 %i.amx, i1 false)
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547: ; preds = %.noexc550
  store ptr %i.amr, ptr %32, align 8, !tbaa !95, !alias.scope !327
  %i.amy = load i64, ptr %i.ams, align 8, !tbaa !86
  store i64 %i.amy, ptr %i.pb, align 8, !tbaa !86, !alias.scope !327
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  %.pre.i548 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i551

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i551: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547, %bb.cs
  %i.amz = phi i64 [ %i.amv, %bb.cs ], [ %.pre.i548, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547 ]
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  store i64 %i.amz, ptr %i.pc, align 8, !tbaa !85, !alias.scope !327
  store ptr %i.ams, ptr %i.amq, align 8, !tbaa !95
  store i64 0, ptr %i.ana, align 8, !tbaa !85
  store i8 0, ptr %i.ams, align 8, !tbaa !86
  %i.anb = load i32, ptr %i.abs, align 4, !tbaa !63
  %i.anc = sext i32 %i.anb to i64
  %i.and = sub nsw i64 0, %i.anc
  %i.ane = getelementptr inbounds i8, ptr %i.abs, i64 %i.and
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 6
  %i.ang = load i16, ptr %i.anf, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i552 = icmp ne i16 %i.ang, 0
  call void @llvm.assume(i1 %.not.i.i.i552)
  %i.anh = zext i16 %i.ang to i64
  %i.ani = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.anh ; 2 uses
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !63
  %i.ank = zext i32 %i.anj to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.ank ; 3 uses
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !63
  %i.ann = sext i32 %i.anm to i64
  %i.ano = sub nsw i64 0, %i.ann
  %i.anp = getelementptr inbounds i8, ptr %i.anl, i64 %i.ano ; 2 uses
  %i.anq = load i16, ptr %i.anp, align 2, !tbaa !97
  %i.anr = icmp ugt i16 %i.anq, 4
  br i1 %i.anr, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i554, label %_ZNK10reflection4Type9base_typeEv.exit556.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i554: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i551
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anp, i64 4
  %i.ant = load i16, ptr %i.ans, align 2, !tbaa !97 ; 2 uses
  %.not.i.i555 = icmp eq i16 %i.ant, 0
  br i1 %.not.i.i555, label %_ZNK10reflection4Type9base_typeEv.exit556.thread, label %_ZNK10reflection4Type9base_typeEv.exit556

_ZNK10reflection4Type9base_typeEv.exit556:        ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i554
  %i.anu = zext i16 %i.ant to i64
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.anu
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !86 ; 2 uses
  %i.anx = zext nneg i8 %i.anw to i64
  %i.any = icmp ugt i8 %i.anw, 19
  br i1 %i.any, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit, label %_ZNK10reflection4Type9base_typeEv.exit556.thread

_ZNK10reflection4Type9base_typeEv.exit556.thread: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i551, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i554, %_ZNK10reflection4Type9base_typeEv.exit556
  %i.anz = phi i64 [ %i.anx, %_ZNK10reflection4Type9base_typeEv.exit556 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i554 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i551 ]
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN10reflection17EnumNamesBaseTypeEvE5names, i64 %i.anz
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !141
  br label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit

_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit: ; preds = %_ZNK10reflection4Type9base_typeEv.exit556.thread, %_ZNK10reflection4Type9base_typeEv.exit556
  %.0.i557 = phi ptr [ %i.aob, %_ZNK10reflection4Type9base_typeEv.exit556.thread ], [ @.str, %_ZNK10reflection4Type9base_typeEv.exit556 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.aoc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i557) #30, !noalias !328 ; 2 uses
  %i.aod = load i64, ptr %i.pc, align 8, !tbaa !85, !noalias !328
  %i.aoe = sub i64 4611686018427387903, %i.aod
  %i.aof = icmp ult i64 %i.aoe, %i.aoc
  br i1 %i.aof, label %bb.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i558

bb.ct:                                            ; preds = %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc562 unwind label %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp

.noexc562:                                        ; preds = %bb.ct
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i558: ; preds = %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit
  %i.aog = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull %.0.i557, i64 noundef %i.aoc)
          to label %.noexc563 unwind label %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc563:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i558
  store ptr %i.pd, ptr %31, align 8, !tbaa !84, !alias.scope !328
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !95 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aog, i64 16 ; 5 uses
  %i.aoj = icmp eq ptr %i.aoh, %i.aoi
  br i1 %i.aoj, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559

bb.cu:                                            ; preds = %.noexc563
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !85 ; 3 uses
  %i.aom = icmp ult i64 %i.aol, 16
  call void @llvm.assume(i1 %i.aom)
  %i.aon = add nuw nsw i64 %i.aol, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pd, ptr noundef nonnull align 8 dereferenceable(1) %i.aoi, i64 %i.aon, i1 false)
  br label %bb.cv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559: ; preds = %.noexc563
  store ptr %i.aoh, ptr %31, align 8, !tbaa !95, !alias.scope !328
  %i.aoo = load i64, ptr %i.aoi, align 8, !tbaa !86
  store i64 %i.aoo, ptr %i.pd, align 8, !tbaa !86, !alias.scope !328
  %.phi.trans.insert.i560 = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  %.pre.i561 = load i64, ptr %.phi.trans.insert.i560, align 8, !tbaa !85
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559, %bb.cu
  %i.aop = phi i64 [ %i.aol, %bb.cu ], [ %.pre.i561, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559 ]
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  store i64 %i.aop, ptr %i.pe, align 8, !tbaa !85, !alias.scope !328
  store ptr %i.aoi, ptr %i.aog, align 8, !tbaa !95
  store i64 0, ptr %i.aoq, align 8, !tbaa !85
  store i8 0, ptr %i.aoi, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.aor = load i64, ptr %i.pe, align 8, !tbaa !85, !noalias !329
  %i.aos = icmp eq i64 %i.aor, 4611686018427387903
  br i1 %i.aos, label %bb.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i565

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc569 unwind label %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp

.noexc569:                                        ; preds = %bb.cw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i565: ; preds = %bb.cv
  %i.aot = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc570 unwind label %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc570:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i565
  store ptr %i.pf, ptr %30, align 8, !tbaa !84, !alias.scope !329
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !95 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aot, i64 16 ; 5 uses
  %i.aow = icmp eq ptr %i.aou, %i.aov
  br i1 %i.aow, label %bb.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

bb.cx:                                            ; preds = %.noexc570
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.aoy = load i64, ptr %i.aox, align 8, !tbaa !85 ; 3 uses
  %i.aoz = icmp ult i64 %i.aoy, 16
  call void @llvm.assume(i1 %i.aoz)
  %i.apa = add nuw nsw i64 %i.aoy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pf, ptr noundef nonnull align 8 dereferenceable(1) %i.aov, i64 %i.apa, i1 false)
  br label %bb.cy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %.noexc570
  store ptr %i.aou, ptr %30, align 8, !tbaa !95, !alias.scope !329
  %i.apb = load i64, ptr %i.aov, align 8, !tbaa !86
  store i64 %i.apb, ptr %i.pf, align 8, !tbaa !86, !alias.scope !329
  %.phi.trans.insert.i567 = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %.pre.i568 = load i64, ptr %.phi.trans.insert.i567, align 8, !tbaa !85
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566, %bb.cx
  %i.apc = phi i64 [ %i.aoy, %bb.cx ], [ %.pre.i568, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566 ]
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  store i64 %i.apc, ptr %i.pg, align 8, !tbaa !85, !alias.scope !329
  store ptr %i.aov, ptr %i.aot, align 8, !tbaa !95
  store i64 0, ptr %i.apd, align 8, !tbaa !85
  store i8 0, ptr %i.aov, align 8, !tbaa !86
  %i.ape = load ptr, ptr %i.os, align 8, !tbaa !95 ; 6 uses
  %i.apf = icmp eq ptr %i.ape, %i.ot
  %i.apg = load ptr, ptr %30, align 8, !tbaa !95  ; 5 uses
  %i.aph = icmp eq ptr %i.apg, %i.pf              ; 2 uses
  br i1 %i.apf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.cy
  br i1 %i.aph, label %bb.cz, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.cy
  br i1 %i.aph, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.api = load i64, ptr %i.pg, align 8, !tbaa !85 ; 3 uses
  %i.apj = icmp ult i64 %i.api, 16
  call void @llvm.assume(i1 %i.apj)
  switch i64 %i.api, label %bb.db [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz
  %i.apk = load i8, ptr %i.apg, align 1, !tbaa !86
  store i8 %i.apk, ptr %i.ape, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.db:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ape, ptr align 1 %i.apg, i64 %i.api, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.db, %bb.da, %bb.cz
  %i.apl = load i64, ptr %i.pg, align 8, !tbaa !85 ; 2 uses
  store i64 %i.apl, ptr %i.ou, align 8, !tbaa !85
  %i.apm = load ptr, ptr %i.os, align 8, !tbaa !95
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 %i.apl
  store i8 0, ptr %i.apn, align 1, !tbaa !86
  %.pre.i573 = load ptr, ptr %30, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.apg, ptr %i.os, align 8, !tbaa !95
  %i.apo = load <2 x i64>, ptr %i.pg, align 8, !tbaa !86
  store <2 x i64> %i.apo, ptr %i.ou, align 8, !tbaa !86
  br label %bb.dd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.app = load i64, ptr %i.ot, align 8, !tbaa !86
  store ptr %i.apg, ptr %i.os, align 8, !tbaa !95
  %i.apq = load <2 x i64>, ptr %i.pg, align 8, !tbaa !86
  store <2 x i64> %i.apq, ptr %i.ou, align 8, !tbaa !86
  %.not.i572 = icmp eq ptr %i.ape, null
  br i1 %.not.i572, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ape, ptr %30, align 8, !tbaa !95
  store i64 %i.app, ptr %i.pf, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.pf, ptr %30, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.dc, %bb.dd
  %i.apr = phi ptr [ %.pre.i573, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ape, %bb.dc ], [ %i.pf, %bb.dd ]
  store i64 0, ptr %i.pg, align 8, !tbaa !85
  store i8 0, ptr %i.apr, align 1, !tbaa !86
  %i.aps = load ptr, ptr %30, align 8, !tbaa !95  ; 2 uses
  %i.apt = icmp eq ptr %i.aps, %i.pf
  br i1 %i.apt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.apu = load i64, ptr %i.pf, align 8, !tbaa !86
  %i.apv = add i64 %i.apu, 1
  call void @_ZdlPvm(ptr noundef %i.aps, i64 noundef %i.apv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
  %i.apw = load ptr, ptr %31, align 8, !tbaa !95  ; 2 uses
  %i.apx = icmp eq ptr %i.apw, %i.pd
  br i1 %i.apx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
  %i.apy = load i64, ptr %i.pd, align 8, !tbaa !86
  %i.apz = add i64 %i.apy, 1
  call void @_ZdlPvm(ptr noundef %i.apw, i64 noundef %i.apz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
  %i.aqa = load ptr, ptr %32, align 8, !tbaa !95  ; 2 uses
  %i.aqb = icmp eq ptr %i.aqa, %i.pb
  br i1 %i.aqb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  %i.aqc = load i64, ptr %i.pb, align 8, !tbaa !86
  %i.aqd = add i64 %i.aqc, 1
  call void @_ZdlPvm(ptr noundef %i.aqa, i64 noundef %i.aqd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
  %i.aqe = load ptr, ptr %33, align 8, !tbaa !95  ; 2 uses
  %i.aqf = icmp eq ptr %i.aqe, %i.oz
  br i1 %i.aqf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
  %i.aqg = load i64, ptr %i.oz, align 8, !tbaa !86
  %i.aqh = add i64 %i.aqg, 1
  call void @_ZdlPvm(ptr noundef %i.aqe, i64 noundef %i.aqh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  %i.aqi = load i64, ptr %i.an, align 8, !tbaa !71 ; 5 uses
  %i.aqj = icmp ult i64 %82, %i.aqi
  %i.aqk = add i64 %i.abx, -1
  %i.aql = add i64 %i.aqk, %82
  %i.aqm = icmp ult i64 %i.aql, %i.aqi
  %i.aqn = and i1 %i.aqj, %i.aqm
  br i1 %i.aqn, label %bb.du, label %bb.de

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585
  %spec.select.i586 = call noundef i64 @llvm.usub.sat.i64(i64 %i.aqi, i64 %i.abx) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.aqo = icmp ult i64 %82, 10
  br i1 %i.aqo, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590, label %.lr.ph.i.i587

.lr.ph.i.i587:                                    ; preds = %bb.de, %bb.dk
  %.029.i.i588 = phi i32 [ %i.aqw, %bb.dk ], [ 1, %bb.de ] ; 4 uses
  %.02328.i.i589 = phi i64 [ %i.aqv, %bb.dk ], [ %82, %bb.de ] ; 5 uses
  %i.aqp = icmp ult i64 %.02328.i.i589, 100
  br i1 %i.aqp, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %.lr.ph.i.i587
  %i.aqq = add i32 %.029.i.i588, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590

bb.dg:                                            ; preds = %.lr.ph.i.i587
  %i.aqr = icmp ult i64 %.02328.i.i589, 1000
  br i1 %i.aqr, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aqs = add i32 %.029.i.i588, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590

bb.di:                                            ; preds = %bb.dg
  %i.aqt = icmp ult i64 %.02328.i.i589, 10000
  br i1 %i.aqt, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aqu = add i32 %.029.i.i588, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590

bb.dk:                                            ; preds = %bb.di
  %i.aqv = udiv i64 %.02328.i.i589, 10000
  %i.aqw = add i32 %.029.i.i588, 4                ; 2 uses
  %i.aqx = icmp ult i64 %.02328.i.i589, 100000
  br i1 %i.aqx, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590, label %.lr.ph.i.i587, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590: ; preds = %bb.dk, %bb.dj, %bb.dh, %bb.df, %bb.de
  %.022.i.i591 = phi i32 [ %i.aqu, %bb.dj ], [ %i.aqq, %bb.df ], [ %i.aqs, %bb.dh ], [ 1, %bb.de ], [ %i.aqw, %bb.dk ]
  %i.aqy = zext i32 %.022.i.i591 to i64
  store ptr %i.ph, ptr %34, align 8, !tbaa !84, !alias.scope !330
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef %i.aqy, i8 noundef signext 0)
          to label %.noexc599 unwind label %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc599:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590
  %i.aqz = load ptr, ptr %34, align 8, !tbaa !95, !alias.scope !330 ; 4 uses
  %i.ara = icmp ugt i64 %82, 99
  br i1 %i.ara, label %.lr.ph.preheader.i.i595, label %._crit_edge.i.i592

.lr.ph.preheader.i.i595:                          ; preds = %.noexc599
  %i.arb = load i64, ptr %i.pi, align 8, !tbaa !85, !alias.scope !330
  %i.arc = trunc i64 %i.arb to i32
  %i.ard = add i32 %i.arc, -1
  br label %.lr.ph.i4.i596

.lr.ph.i4.i596:                                   ; preds = %.lr.ph.i4.i596, %.lr.ph.preheader.i.i595
  %.020.i.i597 = phi i64 [ %i.arg, %.lr.ph.i4.i596 ], [ %82, %.lr.ph.preheader.i.i595 ] ; 3 uses
  %.01819.i.i598 = phi i32 [ %i.arq, %.lr.ph.i4.i596 ], [ %i.ard, %.lr.ph.preheader.i.i595 ] ; 3 uses
  %i.are = urem i64 %.020.i.i597, 100
  %i.arf = shl nuw nsw i64 %i.are, 1
  %i.arg = udiv i64 %.020.i.i597, 100             ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.arf ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 1
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !86, !noalias !330
  %i.ark = zext i32 %.01819.i.i598 to i64
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.ark
  store i8 %i.arj, ptr %i.arl, align 1, !tbaa !86
  %i.arm = load i8, ptr %i.arh, align 2, !tbaa !86, !noalias !330
  %i.arn = add i32 %.01819.i.i598, -1
  %i.aro = zext i32 %i.arn to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.aro
  store i8 %i.arm, ptr %i.arp, align 1, !tbaa !86
  %i.arq = add i32 %.01819.i.i598, -2
  %i.arr = icmp ugt i64 %.020.i.i597, 9999
  br i1 %i.arr, label %.lr.ph.i4.i596, label %._crit_edge.i.i592, !llvm.loop !5

._crit_edge.i.i592:                               ; preds = %.lr.ph.i4.i596, %.noexc599
  %.0.lcssa.i.i593 = phi i64 [ %82, %.noexc599 ], [ %i.arg, %.lr.ph.i4.i596 ] ; 3 uses
  %i.ars = icmp samesign ugt i64 %.0.lcssa.i.i593, 9
  br i1 %i.ars, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %._crit_edge.i.i592
  %i.art = shl nuw nsw i64 %.0.lcssa.i.i593, 1
  %i.aru = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.art ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 1
  %i.arw = load i8, ptr %i.arv, align 1, !tbaa !86, !noalias !330
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqz, i64 1
  store i8 %i.arw, ptr %i.arx, align 1, !tbaa !86
  %i.ary = load i8, ptr %i.aru, align 2, !tbaa !86, !noalias !330
  br label %bb.dn

bb.dm:                                            ; preds = %._crit_edge.i.i592
  %i.arz = trunc nuw nsw i64 %.0.lcssa.i.i593 to i8
  %i.asa = or disjoint i8 %i.arz, 48
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %storemerge.i.i594 = phi i8 [ %i.asa, %bb.dm ], [ %i.ary, %bb.dl ]
  store i8 %storemerge.i.i594, ptr %i.aqz, align 1, !tbaa !86
  store i32 202, ptr %29, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.oo, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602 unwind label %bb.dq

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602: ; preds = %bb.dn
  %i.asb = load ptr, ptr %34, align 8, !tbaa !95  ; 2 uses
  %i.asc = icmp eq ptr %i.asb, %i.ph
  br i1 %i.asc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602
  %i.asd = load i64, ptr %i.ph, align 8, !tbaa !86
  %i.ase = add i64 %i.asd, 1
  call void @_ZdlPvm(ptr noundef %i.asb, i64 noundef %i.ase) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit602, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %36, ptr noundef nonnull align 8 dereferenceable(120) %29)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605
  store i32 0, ptr %i.pm, align 8, !alias.scope !331
  store ptr %i.pl, ptr %i.pk, align 8, !tbaa !84, !alias.scope !331
  store i64 0, ptr %i.pn, align 8, !tbaa !85, !alias.scope !331
  store i8 0, ptr %i.pl, align 8, !tbaa !86, !alias.scope !331
  store i32 0, ptr %i.po, align 8, !tbaa !88, !alias.scope !331
  store ptr %i.pq, ptr %i.pp, align 8, !tbaa !84, !alias.scope !331
  store i64 0, ptr %i.pr, align 8, !tbaa !85, !alias.scope !331
  store i8 0, ptr %i.pq, align 8, !tbaa !86, !alias.scope !331
  store ptr %i.pt, ptr %i.ps, align 8, !tbaa !84, !alias.scope !331
  store i64 0, ptr %i.pu, align 8, !tbaa !85, !alias.scope !331
  store i8 0, ptr %i.pt, align 8, !tbaa !86, !alias.scope !331
  store i64 0, ptr %i.pv, align 8, !tbaa !87, !alias.scope !331
  store i64 %i.abx, ptr %35, align 8, !tbaa !92, !alias.scope !331
  store i64 %spec.select.i586, ptr %i.pw, align 8, !tbaa !93, !alias.scope !331
  store i32 0, ptr %i.px, align 8, !tbaa !94, !alias.scope !331
  store i64 %spec.select.i586, ptr %i.pj, align 8, !tbaa !100, !alias.scope !331
  store i64 0, ptr %i.py, align 8, !tbaa !101, !alias.scope !331
  %i.asf = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.pm, ptr noundef nonnull align 8 dereferenceable(120) %36) #30 ; 0 uses
  %i.asg = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(160) %35)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit607 unwind label %bb.ds ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit607: ; preds = %bb.do
  %i.ash = load ptr, ptr %i.ps, align 8, !tbaa !95 ; 2 uses
  %i.asi = icmp eq ptr %i.ash, %i.pt
  br i1 %i.asi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i608: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit607
  %i.asj = load i64, ptr %i.pt, align 8, !tbaa !86
  %i.ask = add i64 %i.asj, 1
  call void @_ZdlPvm(ptr noundef %i.ash, i64 noundef %i.ask) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i609: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit607, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i608
  %i.asl = load ptr, ptr %i.pp, align 8, !tbaa !95 ; 2 uses
  %i.asm = icmp eq ptr %i.asl, %i.pq
  br i1 %i.asm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i611, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i610

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i610: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i609
  %i.asn = load i64, ptr %i.pq, align 8, !tbaa !86
  %i.aso = add i64 %i.asn, 1
  call void @_ZdlPvm(ptr noundef %i.asl, i64 noundef %i.aso) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i611

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i611: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i609, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i610
  %i.asp = load ptr, ptr %i.pk, align 8, !tbaa !95 ; 2 uses
  %i.asq = icmp eq ptr %i.asp, %i.pl
  br i1 %i.asq, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit616, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i612: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i611
  %i.asr = load i64, ptr %i.pl, align 8, !tbaa !86
  %i.ass = add i64 %i.asr, 1
  call void @_ZdlPvm(ptr noundef %i.asp, i64 noundef %i.ass) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit616

_ZN11flatbuffers12BinaryRegionD2Ev.exit616:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i612
  %i.ast = load ptr, ptr %i.pz, align 8, !tbaa !95 ; 2 uses
  %i.asu = icmp eq ptr %i.ast, %i.qa
  br i1 %i.asu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i617

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i617: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit616
  %i.asv = load i64, ptr %i.qa, align 8, !tbaa !86
  %i.asw = add i64 %i.asv, 1
  call void @_ZdlPvm(ptr noundef %i.ast, i64 noundef %i.asw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i618: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit616, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i617
  %i.asx = load ptr, ptr %i.qb, align 8, !tbaa !95 ; 2 uses
  %i.asy = icmp eq ptr %i.asx, %i.qc
  br i1 %i.asy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i620, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i619: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i618
  %i.asz = load i64, ptr %i.qc, align 8, !tbaa !86
  %i.ata = add i64 %i.asz, 1
  call void @_ZdlPvm(ptr noundef %i.asx, i64 noundef %i.ata) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i620

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i620: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i618, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i619
  %i.atb = load ptr, ptr %i.qd, align 8, !tbaa !95 ; 2 uses
  %i.atc = icmp eq ptr %i.atb, %i.qe
  br i1 %i.atc, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit625, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i621: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i620
  %i.atd = load i64, ptr %i.qe, align 8, !tbaa !86
  %i.ate = add i64 %i.atd, 1
  call void @_ZdlPvm(ptr noundef %i.atb, i64 noundef %i.ate) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit625

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit625: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i620, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i621
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %bb.ef

bb.dp:                                            ; preds = %.noexc.i543
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546, %bb.cr
  %lpad.loopexit.split-lp2290 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631

.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i558, %bb.ct
  %lpad.loopexit.split-lp2292 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628

.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i565, %bb.cw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atg = load ptr, ptr %31, align 8, !tbaa !95  ; 2 uses
  %i.ath = icmp eq ptr %i.atg, %i.pd
  br i1 %i.ath, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626: ; preds = %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp
  %i.ati = load i64, ptr %i.pd, align 8, !tbaa !86
  %i.atj = add i64 %i.ati, 1
  call void @_ZdlPvm(ptr noundef %i.atg, i64 noundef %i.atj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628: ; preds = %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626
  %.pn312 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i626 ], [ %lpad.loopexit.split-lp2292, %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.atk = load ptr, ptr %32, align 8, !tbaa !95  ; 2 uses
  %i.atl = icmp eq ptr %i.atk, %i.pb
  br i1 %i.atl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628
  %i.atm = load i64, ptr %i.pb, align 8, !tbaa !86
  %i.atn = add i64 %i.atm, 1
  call void @_ZdlPvm(ptr noundef %i.atk, i64 noundef %i.atn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629
  %.pn312.pn = phi { ptr, i32 } [ %.pn312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i629 ], [ %lpad.loopexit.split-lp2290, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628 ] ; 2 uses
  %i.ato = load ptr, ptr %33, align 8, !tbaa !95  ; 2 uses
  %i.atp = icmp eq ptr %i.ato, %i.oz
  br i1 %i.atp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631
  %i.atq = load i64, ptr %i.oz, align 8, !tbaa !86
  %i.atr = add i64 %i.atq, 1
  call void @_ZdlPvm(ptr noundef %i.ato, i64 noundef %i.atr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631, %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632
  %.pn312.pn.pn.pn = phi { ptr, i32 } [ %.pn312.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i632 ], [ %i.atf, %bb.dp ], [ %.pn312.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit631 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

bb.dq:                                            ; preds = %bb.dn
  %i.ats = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.att = load ptr, ptr %34, align 8, !tbaa !95  ; 2 uses
  %i.atu = icmp eq ptr %i.att, %i.ph
  br i1 %i.atu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635: ; preds = %bb.dq
  %i.atv = load i64, ptr %i.ph, align 8, !tbaa !86
  %i.atw = add i64 %i.atv, 1
  call void @_ZdlPvm(ptr noundef %i.att, i64 noundef %i.atw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605
  %i.atx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.aty = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %35) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %36) #30
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn317 = phi { ptr, i32 } [ %i.aty, %bb.ds ], [ %i.atx, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585
  %i.atz = load i32, ptr %i.abs, align 4, !tbaa !63
  %i.aua = sext i32 %i.atz to i64
  %i.aub = sub nsw i64 0, %i.aua
  %i.auc = getelementptr inbounds i8, ptr %i.abs, i64 %i.aub
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 6
  %i.aue = load i16, ptr %i.aud, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i.i638 = icmp ne i16 %i.aue, 0
  call void @llvm.assume(i1 %.not.i.i.i.i638)
  %i.auf = zext i16 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.auf ; 2 uses
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !63
  %i.aui = zext i32 %i.auh to i64
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aug, i64 %i.aui ; 4 uses
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !63
  %i.aul = sext i32 %i.auk to i64
  %i.aum = sub nsw i64 0, %i.aul
  %i.aun = getelementptr inbounds i8, ptr %i.auj, i64 %i.aum ; 3 uses
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !97 ; 2 uses
  %i.aup = icmp ugt i16 %i.auo, 4
  br i1 %i.aup, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i639, label %.critedge

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i639: ; preds = %bb.du
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aun, i64 4
  %i.aur = load i16, ptr %i.auq, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i640 = icmp eq i16 %i.aur, 0
  br i1 %.not.i.i.i640, label %.critedge, label %_ZNK10reflection4Type9base_typeEv.exit.i

_ZNK10reflection4Type9base_typeEv.exit.i:         ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i639
  %i.aus = zext i16 %i.aur to i64
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auj, i64 %i.aus
  %i.auu = load i8, ptr %i.aut, align 1, !tbaa !86 ; 2 uses
  switch i8 %i.auu, label %.critedge [
    i8 16, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i3.i
    i8 1, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i3.i
  ]

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i3.i: ; preds = %_ZNK10reflection4Type9base_typeEv.exit.i, %_ZNK10reflection4Type9base_typeEv.exit.i
  %i.auv = icmp ugt i16 %i.auo, 8
  br i1 %i.auv, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i6.i, label %.critedge

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i6.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i3.i
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aun, i64 8
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !97 ; 2 uses
  %.not.i.i7.i = icmp eq i16 %i.aux, 0
  br i1 %.not.i.i7.i, label %.critedge, label %_ZN11flatbuffers15BinaryAnnotator11IsUnionTypeEPKN10reflection5FieldE.exit

_ZN11flatbuffers15BinaryAnnotator11IsUnionTypeEPKN10reflection5FieldE.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i6.i
  %i.auy = zext i16 %i.aux to i64
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auj, i64 %i.auy
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !63 ; 3 uses
  %i.avb = icmp sgt i32 %i.ava, -1
  br i1 %i.avb, label %bb.dv, label %.critedge

bb.dv:                                            ; preds = %_ZN11flatbuffers15BinaryAnnotator11IsUnionTypeEPKN10reflection5FieldE.exit
  %i.avc = icmp ugt i64 %i.aqi, 1
  %i.avd = icmp ult i64 %i.abx, %i.aqi
  %i.ave = and i1 %i.avc, %i.avd
  br i1 %i.ave, label %_ZNK10reflection4Type9base_typeEv.exit.i.i, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIhEESt8optionalIT_Em.exit.thread

_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIhEESt8optionalIT_Em.exit.thread: ; preds = %bb.dv
  invoke void @_ZSt27__throw_bad_optional_accessv() #35
          to label %.noexc642 unwind label %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc642:                                        ; preds = %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIhEESt8optionalIT_Em.exit.thread
  unreachable

_ZNK10reflection4Type9base_typeEv.exit.i.i:       ; preds = %bb.dv
  %i.avf = load ptr, ptr %i.fs, align 8, !tbaa !89
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 %i.abx
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !86
  switch i8 %i.auu, label %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit.thread [
    i8 16, label %_ZNK10reflection4Type5indexEv.exit.i
    i8 1, label %_ZNK10reflection4Type5indexEv.exit.i
  ]

_ZNK10reflection4Type5indexEv.exit.i:             ; preds = %_ZNK10reflection4Type9base_typeEv.exit.i.i, %_ZNK10reflection4Type9base_typeEv.exit.i.i
  %i.avi = load ptr, ptr %i.qf, align 8, !tbaa !142 ; 3 uses
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !63
  %i.avk = sext i32 %i.avj to i64
  %i.avl = sub nsw i64 0, %i.avk
  %i.avm = getelementptr inbounds i8, ptr %i.avi, i64 %i.avl
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 6
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i.i5.i = icmp ne i16 %i.avo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i5.i)
  %i.avp = zext i16 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avi, i64 %i.avp ; 2 uses
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !63
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avq, i64 %i.avs ; 2 uses
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !144
  %.not.i.i645 = icmp ult i32 %i.ava, %i.avu
  br i1 %.not.i.i645, label %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit, label %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit.thread

_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit: ; preds = %_ZNK10reflection4Type5indexEv.exit.i
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %i.avw = shl i32 %i.ava, 2
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avv, i64 %i.avx ; 2 uses
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !63
  %i.awa = zext i32 %i.avz to i64
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.awa ; 3 uses
  %i.awc = zext i8 %i.avh to i32
  %i.awd = load i32, ptr %i.awb, align 4, !tbaa !63
  %i.awe = sext i32 %i.awd to i64
  %i.awf = sub nsw i64 0, %i.awe
  %i.awg = getelementptr inbounds i8, ptr %i.awb, i64 %i.awf
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 6
  %i.awi = load i16, ptr %i.awh, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i12.i.i = icmp ne i16 %i.awi, 0
  call void @llvm.assume(i1 %.not.i.i.i12.i.i)
  %i.awj = zext i16 %i.awi to i64
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.awj ; 2 uses
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !63
  %i.awm = zext i32 %i.awl to i64
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.awm
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !146
  %i.awp = icmp ugt i32 %i.awo, %i.awc
  br i1 %i.awp, label %.critedge, label %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit.thread

_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit.thread: ; preds = %_ZNK10reflection4Type9base_typeEv.exit.i.i, %_ZNK10reflection4Type5indexEv.exit.i, %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit
  store ptr %i.qg, ptr %37, align 8, !tbaa !84
  store i64 0, ptr %i.qh, align 8, !tbaa !85
  store i8 0, ptr %i.qg, align 8, !tbaa !86
  store i32 206, ptr %29, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.oo, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit651 unwind label %bb.dx

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit651: ; preds = %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit.thread
  %i.awq = load ptr, ptr %37, align 8, !tbaa !95  ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.qg
  br i1 %i.awr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit651
  %i.aws = load i64, ptr %i.qg, align 8, !tbaa !86
  %i.awt = add i64 %i.aws, 1
  call void @_ZdlPvm(ptr noundef %i.awq, i64 noundef %i.awt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit651, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %39, ptr noundef nonnull align 8 dereferenceable(120) %29)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  store i32 0, ptr %i.ql, align 8, !alias.scope !332
  store ptr %i.qk, ptr %i.qj, align 8, !tbaa !84, !alias.scope !332
  store i64 0, ptr %i.qm, align 8, !tbaa !85, !alias.scope !332
  store i8 0, ptr %i.qk, align 8, !tbaa !86, !alias.scope !332
  store i32 0, ptr %i.qn, align 8, !tbaa !88, !alias.scope !332
  store ptr %i.qp, ptr %i.qo, align 8, !tbaa !84, !alias.scope !332
  store i64 0, ptr %i.qq, align 8, !tbaa !85, !alias.scope !332
  store i8 0, ptr %i.qp, align 8, !tbaa !86, !alias.scope !332
  store ptr %i.qs, ptr %i.qr, align 8, !tbaa !84, !alias.scope !332
  store i64 0, ptr %i.qt, align 8, !tbaa !85, !alias.scope !332
  store i8 0, ptr %i.qs, align 8, !tbaa !86, !alias.scope !332
  store i64 0, ptr %i.qu, align 8, !tbaa !87, !alias.scope !332
  store i64 %i.abx, ptr %38, align 8, !tbaa !92, !alias.scope !332
  store i64 %82, ptr %i.qv, align 8, !tbaa !93, !alias.scope !332
  store i32 %switch.ext, ptr %i.qw, align 8, !tbaa !94, !alias.scope !332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qi, i8 0, i64 16, i1 false)
  %i.awu = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ql, ptr noundef nonnull align 8 dereferenceable(120) %39) #30 ; 0 uses
  %i.awv = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(160) %38)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit656 unwind label %bb.dz ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit656: ; preds = %bb.dw
  %i.aww = load ptr, ptr %i.qr, align 8, !tbaa !95 ; 2 uses
  %i.awx = icmp eq ptr %i.aww, %i.qs
  br i1 %i.awx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i657

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i657: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit656
  %i.awy = load i64, ptr %i.qs, align 8, !tbaa !86
  %i.awz = add i64 %i.awy, 1
  call void @_ZdlPvm(ptr noundef %i.aww, i64 noundef %i.awz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i658

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i658: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit656, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i657
  %i.axa = load ptr, ptr %i.qo, align 8, !tbaa !95 ; 2 uses
  %i.axb = icmp eq ptr %i.axa, %i.qp
  br i1 %i.axb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i659

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i659: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i658
  %i.axc = load i64, ptr %i.qp, align 8, !tbaa !86
  %i.axd = add i64 %i.axc, 1
  call void @_ZdlPvm(ptr noundef %i.axa, i64 noundef %i.axd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i660: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i658, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i659
  %i.axe = load ptr, ptr %i.qj, align 8, !tbaa !95 ; 2 uses
  %i.axf = icmp eq ptr %i.axe, %i.qk
  br i1 %i.axf, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit665, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i661

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i661: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i660
  %i.axg = load i64, ptr %i.qk, align 8, !tbaa !86
  %i.axh = add i64 %i.axg, 1
  call void @_ZdlPvm(ptr noundef %i.axe, i64 noundef %i.axh) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit665

_ZN11flatbuffers12BinaryRegionD2Ev.exit665:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i660, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i661
  %i.axi = load ptr, ptr %i.qx, align 8, !tbaa !95 ; 2 uses
  %i.axj = icmp eq ptr %i.axi, %i.qy
  br i1 %i.axj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i666

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i666: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit665
  %i.axk = load i64, ptr %i.qy, align 8, !tbaa !86
  %i.axl = add i64 %i.axk, 1
  call void @_ZdlPvm(ptr noundef %i.axi, i64 noundef %i.axl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit665, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i666
  %i.axm = load ptr, ptr %i.qz, align 8, !tbaa !95 ; 2 uses
  %i.axn = icmp eq ptr %i.axm, %i.ra
  br i1 %i.axn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i668: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667
  %i.axo = load i64, ptr %i.ra, align 8, !tbaa !86
  %i.axp = add i64 %i.axo, 1
  call void @_ZdlPvm(ptr noundef %i.axm, i64 noundef %i.axp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i669

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i669: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i668
  %i.axq = load ptr, ptr %i.rb, align 8, !tbaa !95 ; 2 uses
  %i.axr = icmp eq ptr %i.axq, %i.rc
  br i1 %i.axr, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit674, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i670

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i670: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i669
  %i.axs = load i64, ptr %i.rc, align 8, !tbaa !86
  %i.axt = add i64 %i.axs, 1
  call void @_ZdlPvm(ptr noundef %i.axq, i64 noundef %i.axt) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit674

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit674: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i669, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i670
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %bb.ef

.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i590, %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIhEESt8optionalIT_Em.exit.thread
  %lpad.loopexit.split-lp2297 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

bb.dx:                                            ; preds = %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit.thread
  %i.axu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axv = load ptr, ptr %37, align 8, !tbaa !95  ; 2 uses
  %i.axw = icmp eq ptr %i.axv, %i.qg
  br i1 %i.axw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675: ; preds = %bb.dx
  %i.axx = load i64, ptr %i.qg, align 8, !tbaa !86
  %i.axy = add i64 %i.axx, 1
  call void @_ZdlPvm(ptr noundef %i.axv, i64 noundef %i.axy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  %i.axz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dw
  %i.aya = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %38) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %39) #30
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn322 = phi { ptr, i32 } [ %i.aya, %bb.dz ], [ %i.axz, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

.critedge:                                        ; preds = %bb.du, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i639, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i3.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i6.i, %_ZNK10reflection4Type9base_typeEv.exit.i, %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEPKN10reflection5FieldEh.exit, %_ZN11flatbuffers15BinaryAnnotator11IsUnionTypeEPKN10reflection5FieldE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %41, ptr noundef nonnull align 8 dereferenceable(120) %29)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %.critedge
  store i32 0, ptr %i.rg, align 8, !alias.scope !333
  store ptr %i.rf, ptr %i.re, align 8, !tbaa !84, !alias.scope !333
  store i64 0, ptr %i.rh, align 8, !tbaa !85, !alias.scope !333
  store i8 0, ptr %i.rf, align 8, !tbaa !86, !alias.scope !333
  store i32 0, ptr %i.ri, align 8, !tbaa !88, !alias.scope !333
  store ptr %i.rk, ptr %i.rj, align 8, !tbaa !84, !alias.scope !333
  store i64 0, ptr %i.rl, align 8, !tbaa !85, !alias.scope !333
  store i8 0, ptr %i.rk, align 8, !tbaa !86, !alias.scope !333
  store ptr %i.rn, ptr %i.rm, align 8, !tbaa !84, !alias.scope !333
  store i64 0, ptr %i.ro, align 8, !tbaa !85, !alias.scope !333
  store i8 0, ptr %i.rn, align 8, !tbaa !86, !alias.scope !333
  store i64 0, ptr %i.rp, align 8, !tbaa !87, !alias.scope !333
  store i64 %i.abx, ptr %40, align 8, !tbaa !92, !alias.scope !333
  store i64 %82, ptr %i.rq, align 8, !tbaa !93, !alias.scope !333
  store i32 %switch.ext, ptr %i.rr, align 8, !tbaa !94, !alias.scope !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  %i.ayb = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.rg, ptr noundef nonnull align 8 dereferenceable(120) %41) #30 ; 0 uses
  %i.ayc = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(160) %40)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit679 unwind label %bb.ed ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit679: ; preds = %bb.eb
  %i.ayd = load ptr, ptr %i.rm, align 8, !tbaa !95 ; 2 uses
  %i.aye = icmp eq ptr %i.ayd, %i.rn
  br i1 %i.aye, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i681, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i680

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i680: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit679
  %i.ayf = load i64, ptr %i.rn, align 8, !tbaa !86
  %i.ayg = add i64 %i.ayf, 1
  call void @_ZdlPvm(ptr noundef %i.ayd, i64 noundef %i.ayg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i681

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i681: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit679, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i680
  %i.ayh = load ptr, ptr %i.rj, align 8, !tbaa !95 ; 2 uses
  %i.ayi = icmp eq ptr %i.ayh, %i.rk
  br i1 %i.ayi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i682

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i682: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i681
  %i.ayj = load i64, ptr %i.rk, align 8, !tbaa !86
  %i.ayk = add i64 %i.ayj, 1
  call void @_ZdlPvm(ptr noundef %i.ayh, i64 noundef %i.ayk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i683: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i681, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i682
  %i.ayl = load ptr, ptr %i.re, align 8, !tbaa !95 ; 2 uses
  %i.aym = icmp eq ptr %i.ayl, %i.rf
  br i1 %i.aym, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit688, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i684

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i684: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i683
  %i.ayn = load i64, ptr %i.rf, align 8, !tbaa !86
  %i.ayo = add i64 %i.ayn, 1
  call void @_ZdlPvm(ptr noundef %i.ayl, i64 noundef %i.ayo) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit688

_ZN11flatbuffers12BinaryRegionD2Ev.exit688:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i684
  %i.ayp = load ptr, ptr %i.rs, align 8, !tbaa !95 ; 2 uses
  %i.ayq = icmp eq ptr %i.ayp, %i.rt
  br i1 %i.ayq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i690, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit688
  %i.ayr = load i64, ptr %i.rt, align 8, !tbaa !86
  %i.ays = add i64 %i.ayr, 1
  call void @_ZdlPvm(ptr noundef %i.ayp, i64 noundef %i.ays) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i690

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i690: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit688, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689
  %i.ayt = load ptr, ptr %i.ru, align 8, !tbaa !95 ; 2 uses
  %i.ayu = icmp eq ptr %i.ayt, %i.rv
  br i1 %i.ayu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i692, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i691

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i691: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i690
  %i.ayv = load i64, ptr %i.rv, align 8, !tbaa !86
  %i.ayw = add i64 %i.ayv, 1
  call void @_ZdlPvm(ptr noundef %i.ayt, i64 noundef %i.ayw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i692

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i692: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i690, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i691
  %i.ayx = load ptr, ptr %i.rw, align 8, !tbaa !95 ; 2 uses
  %i.ayy = icmp eq ptr %i.ayx, %i.rx
  br i1 %i.ayy, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit697, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i693: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i692
  %i.ayz = load i64, ptr %i.rx, align 8, !tbaa !86
  %i.aza = add i64 %i.ayz, 1
  call void @_ZdlPvm(ptr noundef %i.ayx, i64 noundef %i.aza) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit697

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit697: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i693
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  br label %bb.ef

bb.ec:                                            ; preds = %.critedge
  %i.azb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.azc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %40) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %41) #30
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn325 = phi { ptr, i32 } [ %i.azc, %bb.ed ], [ %i.azb, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

bb.ef:                                            ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit674, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit697, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit625
  %i.azd = load ptr, ptr %i.ov, align 8, !tbaa !95 ; 2 uses
  %i.aze = icmp eq ptr %i.azd, %i.ow
  br i1 %i.aze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i698: ; preds = %bb.ef
  %i.azf = load i64, ptr %i.ow, align 8, !tbaa !86
  %i.azg = add i64 %i.azf, 1
  call void @_ZdlPvm(ptr noundef %i.azd, i64 noundef %i.azg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i699: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i698
  %i.azh = load ptr, ptr %i.os, align 8, !tbaa !95 ; 2 uses
  %i.azi = icmp eq ptr %i.azh, %i.ot
  br i1 %i.azi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i701, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i700: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i699
  %i.azj = load i64, ptr %i.ot, align 8, !tbaa !86
  %i.azk = add i64 %i.azj, 1
  call void @_ZdlPvm(ptr noundef %i.azh, i64 noundef %i.azk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i701

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i701: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i699, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i700
  %i.azl = load ptr, ptr %i.oo, align 8, !tbaa !95 ; 2 uses
  %i.azm = icmp eq ptr %i.azl, %i.op
  br i1 %i.azm, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit706, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i702

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i702: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i701
  %i.azn = load i64, ptr %i.op, align 8, !tbaa !86
  %i.azo = add i64 %i.azn, 1
  call void @_ZdlPvm(ptr noundef %i.azl, i64 noundef %i.azo) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit706

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit706: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i701, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i702
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.hv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637: ; preds = %bb.dx, %bb.dq, %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635, %bb.dt, %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634
  %.pn325.pn = phi { ptr, i32 } [ %.pn325, %bb.ee ], [ %i.ats, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635 ], [ %i.axu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675 ], [ %.pn312.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634 ], [ %.pn317, %bb.dt ], [ %lpad.loopexit.split-lp2297, %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn322, %bb.ea ], [ %i.ats, %bb.dq ], [ %i.axu, %bb.dx ]
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %.body

_ZNK10reflection4Type9base_typeEv.exit.thread:    ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i525, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK10reflection4Type9base_typeEv.exit
  %i.azp = icmp ugt i16 %i.akx, 30
  br i1 %i.azp, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i707, label %_ZNK10reflection5Field8offset64Ev.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i707: ; preds = %_ZNK10reflection4Type9base_typeEv.exit.thread
  %i.azq = getelementptr inbounds nuw i8, ptr %i.akw, i64 30
  %i.azr = load i16, ptr %i.azq, align 2, !tbaa !97 ; 2 uses
  %.not.i.i708 = icmp eq i16 %i.azr, 0
  br i1 %.not.i.i708, label %_ZNK10reflection5Field8offset64Ev.exit.thread, label %_ZNK10reflection5Field8offset64Ev.exit

_ZNK10reflection5Field8offset64Ev.exit:           ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i707
  %i.azs = zext i16 %i.azr to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.azs
  %i.azu = load i8, ptr %i.azt, align 1, !tbaa !86
  %.not1187 = icmp eq i8 %i.azu, 0
  br i1 %.not1187, label %_ZNK10reflection5Field8offset64Ev.exit.thread, label %bb.eg

bb.eg:                                            ; preds = %_ZNK10reflection5Field8offset64Ev.exit
  %i.azv = icmp ugt i64 %i.aby, 8
  %i.azw = add i64 %i.abx, 7
  %i.azx = icmp ult i64 %i.azw, %i.aby
  %i.azy = and i1 %i.azv, %i.azx
  br i1 %i.azy, label %bb.eh, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i714

bb.eh:                                            ; preds = %bb.eg
  %i.azz = load ptr, ptr %i.fs, align 8, !tbaa !89
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 %i.abx
  %i.bab = load i64, ptr %i.baa, align 8, !tbaa !64
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i714

_ZNK10reflection5Field8offset64Ev.exit.thread:    ; preds = %_ZNK10reflection4Type9base_typeEv.exit.thread, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i707, %_ZNK10reflection5Field8offset64Ev.exit
  %i.bac = icmp ugt i64 %i.aby, 4
  %i.bad = add i64 %i.abx, 3
  %i.bae = icmp ult i64 %i.bad, %i.aby
  %i.baf = and i1 %i.bac, %i.bae
  br i1 %i.baf, label %bb.ei, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit712

bb.ei:                                            ; preds = %_ZNK10reflection5Field8offset64Ev.exit.thread
  %i.bag = load ptr, ptr %i.fs, align 8, !tbaa !89
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 %i.abx
  %i.bai = load i32, ptr %i.bah, align 4, !tbaa !63
  %i.baj = zext i32 %i.bai to i64
  %i.bak = or disjoint i64 %i.baj, 4294967296
  br label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit712

_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit712: ; preds = %bb.ei, %_ZNK10reflection5Field8offset64Ev.exit.thread
  %.sroa.2.0.i711 = phi i64 [ %i.bak, %bb.ei ], [ 0, %_ZNK10reflection5Field8offset64Ev.exit.thread ] ; 2 uses
  %i.bal = and i64 %.sroa.2.0.i711, 4294967296
  %.not1188 = icmp eq i64 %i.bal, 0
  %i.bam = and i64 %.sroa.2.0.i711, 4294967295
  %i.ban = select i1 %.not1188, i64 0, i64 %i.bam
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i714

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i714: ; preds = %bb.eg, %bb.eh, %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit712
  %.0168 = phi i64 [ %i.ban, %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit712 ], [ %i.bab, %bb.eh ], [ 0, %bb.eg ] ; 2 uses
  %.0167 = phi i64 [ 4, %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit712 ], [ 8, %bb.eh ], [ 8, %bb.eg ] ; 6 uses
  %.0166 = phi i32 [ 1, %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit712 ], [ 18, %bb.eh ], [ 18, %bb.eg ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  store i32 0, ptr %42, align 8, !tbaa !83
  store ptr %i.rz, ptr %i.ry, align 8, !tbaa !84
  store i64 0, ptr %i.sa, align 8, !tbaa !85
  store i8 0, ptr %i.rz, align 8, !tbaa !86
  store ptr %i.sd, ptr %i.sc, align 8, !tbaa !84
  store i64 0, ptr %i.se, align 8, !tbaa !85
  store i8 0, ptr %i.sd, align 8, !tbaa !86
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers15BinaryAnnotator10BuildTableEmNS_17BinarySectionTypeEPKN10reflection6ObjectE:bb.a
  %i.bca = icmp eq ptr %i.bby, %i.bbz
  br i1 %i.bca, label %bb.em, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725

bb.em:                                            ; preds = %.noexc728
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8
  %i.bcc = load i64, ptr %i.bcb, align 8, !tbaa !85 ; 3 uses
  %i.bcd = icmp ult i64 %i.bcc, 16
  call void @llvm.assume(i1 %i.bcd)
  %i.bce = add nuw nsw i64 %i.bcc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sl, ptr noundef nonnull align 8 dereferenceable(1) %i.bbz, i64 %i.bce, i1 false)
  br label %bb.en

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725: ; preds = %.noexc728
  store ptr %i.bby, ptr %44, align 8, !tbaa !95, !alias.scope !334
  %i.bcf = load i64, ptr %i.bbz, align 8, !tbaa !86
  store i64 %i.bcf, ptr %i.sl, align 8, !tbaa !86, !alias.scope !334
  %.phi.trans.insert.i726 = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8
  %.pre.i727 = load i64, ptr %.phi.trans.insert.i726, align 8, !tbaa !85
  br label %bb.en

bb.en:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725, %bb.em
  %i.bcg = phi i64 [ %i.bcc, %bb.em ], [ %.pre.i727, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725 ]
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8
  store i64 %i.bcg, ptr %i.sm, align 8, !tbaa !85, !alias.scope !334
  store ptr %i.bbz, ptr %i.bbx, align 8, !tbaa !95
  store i64 0, ptr %i.bch, align 8, !tbaa !85
  store i8 0, ptr %i.bbz, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.bci = load i64, ptr %i.sm, align 8, !tbaa !85, !noalias !335
  %i.bcj = icmp eq i64 %i.bci, 4611686018427387903
  br i1 %i.bcj, label %bb.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i729

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc733 unwind label %.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp

.noexc733:                                        ; preds = %bb.eo
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i729: ; preds = %bb.en
  %i.bck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %.noexc734 unwind label %.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc734:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i729
  store ptr %i.sn, ptr %43, align 8, !tbaa !84, !alias.scope !335
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !95 ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bck, i64 16 ; 5 uses
  %i.bcn = icmp eq ptr %i.bcl, %i.bcm
  br i1 %i.bcn, label %bb.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730

bb.ep:                                            ; preds = %.noexc734
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  %i.bcp = load i64, ptr %i.bco, align 8, !tbaa !85 ; 3 uses
  %i.bcq = icmp ult i64 %i.bcp, 16
  call void @llvm.assume(i1 %i.bcq)
  %i.bcr = add nuw nsw i64 %i.bcp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sn, ptr noundef nonnull align 8 dereferenceable(1) %i.bcm, i64 %i.bcr, i1 false)
  br label %bb.eq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730: ; preds = %.noexc734
  store ptr %i.bcl, ptr %43, align 8, !tbaa !95, !alias.scope !335
  %i.bcs = load i64, ptr %i.bcm, align 8, !tbaa !86
  store i64 %i.bcs, ptr %i.sn, align 8, !tbaa !86, !alias.scope !335
  %.phi.trans.insert.i731 = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  %.pre.i732 = load i64, ptr %.phi.trans.insert.i731, align 8, !tbaa !85
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730, %bb.ep
  %i.bct = phi i64 [ %i.bcp, %bb.ep ], [ %.pre.i732, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730 ]
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  store i64 %i.bct, ptr %i.so, align 8, !tbaa !85, !alias.scope !335
  store ptr %i.bcm, ptr %i.bck, align 8, !tbaa !95
  store i64 0, ptr %i.bcu, align 8, !tbaa !85
  store i8 0, ptr %i.bcm, align 8, !tbaa !86
  %i.bcv = load ptr, ptr %44, align 8, !tbaa !95  ; 2 uses
  %i.bcw = icmp eq ptr %i.bcv, %i.sl
  br i1 %i.bcw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i736

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i736: ; preds = %bb.eq
  %i.bcx = load i64, ptr %i.sl, align 8, !tbaa !86
  %i.bcy = add i64 %i.bcx, 1
  call void @_ZdlPvm(ptr noundef %i.bcv, i64 noundef %i.bcy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738: ; preds = %bb.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i736
  %i.bcz = load ptr, ptr %45, align 8, !tbaa !95  ; 2 uses
  %i.bda = icmp eq ptr %i.bcz, %i.sj
  br i1 %i.bda, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738
  %i.bdb = load i64, ptr %i.sj, align 8, !tbaa !86
  %i.bdc = add i64 %i.bdb, 1
  call void @_ZdlPvm(ptr noundef %i.bcz, i64 noundef %i.bdc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  %i.bdd = load i32, ptr %i.abs, align 4, !tbaa !63
  %i.bde = sext i32 %i.bdd to i64
  %i.bdf = sub nsw i64 0, %i.bde
  %i.bdg = getelementptr inbounds i8, ptr %i.abs, i64 %i.bdf ; 4 uses
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !97 ; 2 uses
  %i.bdi = icmp ugt i16 %i.bdh, 6
  call void @llvm.assume(i1 %i.bdi)
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdg, i64 6
  %i.bdk = load i16, ptr %i.bdj, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i.i743 = icmp ne i16 %i.bdk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i743)
  %i.bdl = zext i16 %i.bdk to i64
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.bdl ; 2 uses
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !63
  %i.bdo = zext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdm, i64 %i.bdo ; 6 uses
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !63
  %i.bdr = sext i32 %i.bdq to i64
  %i.bds = sub nsw i64 0, %i.bdr
  %i.bdt = getelementptr inbounds i8, ptr %i.bdp, i64 %i.bds ; 5 uses
  %i.bdu = load i16, ptr %i.bdt, align 2, !tbaa !97 ; 3 uses
  %i.bdv = icmp ugt i16 %i.bdu, 4                 ; 2 uses
  br i1 %i.bdv, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i745, label %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i745: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdt, i64 4
  %i.bdx = load i16, ptr %i.bdw, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i746 = icmp eq i16 %i.bdx, 0
  br i1 %.not.i.i.i746, label %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread, label %_ZNK10reflection4Type9base_typeEv.exit.i747

_ZNK10reflection4Type9base_typeEv.exit.i747:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i745
  %i.bdy = zext i16 %i.bdx to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdp, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !86 ; 2 uses
  %i.beb = icmp eq i8 %i.bea, 15
  br i1 %i.beb, label %bb.er, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i17.i

bb.er:                                            ; preds = %_ZNK10reflection4Type9base_typeEv.exit.i747
  %i.bec = load ptr, ptr %i.qf, align 8, !tbaa !142 ; 3 uses
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !63
  %i.bee = sext i32 %i.bed to i64
  %i.bef = sub nsw i64 0, %i.bee
  %i.beg = getelementptr inbounds i8, ptr %i.bec, i64 %i.bef ; 2 uses
  %i.beh = load i16, ptr %i.beg, align 2, !tbaa !97
  %i.bei = icmp ugt i16 %i.beh, 4
  br i1 %i.bei, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i5.i, label %_ZNK10reflection6Schema7objectsEv.exit.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i5.i: ; preds = %bb.er
  %i.bej = getelementptr inbounds nuw i8, ptr %i.beg, i64 4
  %i.bek = load i16, ptr %i.bej, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i6.i = icmp eq i16 %i.bek, 0
  br i1 %.not.i.i.i6.i, label %_ZNK10reflection6Schema7objectsEv.exit.i, label %bb.es

bb.es:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i5.i
  %i.bel = zext i16 %i.bek to i64
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.bel ; 2 uses
  %i.ben = load i32, ptr %i.bem, align 4, !tbaa !63
  %i.beo = zext i32 %i.ben to i64
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.beo
  br label %_ZNK10reflection6Schema7objectsEv.exit.i

_ZNK10reflection6Schema7objectsEv.exit.i:         ; preds = %bb.es, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i5.i, %bb.er
  %i.beq = phi ptr [ %i.bep, %bb.es ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i5.i ], [ null, %bb.er ]
  %i.ber = icmp ugt i16 %i.bdu, 8
  br i1 %i.ber, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i10.i, label %_ZNK10reflection4Type5indexEv.exit.i748

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i10.i: ; preds = %_ZNK10reflection6Schema7objectsEv.exit.i
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8
  %i.bet = load i16, ptr %i.bes, align 2, !tbaa !97 ; 2 uses
  %.not.i.i11.i = icmp eq i16 %i.bet, 0
  br i1 %.not.i.i11.i, label %_ZNK10reflection4Type5indexEv.exit.i748, label %bb.et

bb.et:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i10.i
  %i.beu = zext i16 %i.bet to i64
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bdp, i64 %i.beu
  %i.bew = load i32, ptr %i.bev, align 4, !tbaa !63
  %i.bex = shl i32 %i.bew, 2
  %i.bey = zext i32 %i.bex to i64
  br label %_ZNK10reflection4Type5indexEv.exit.i748

_ZNK10reflection4Type5indexEv.exit.i748:          ; preds = %bb.et, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i10.i, %_ZNK10reflection6Schema7objectsEv.exit.i
  %i.bez = phi i64 [ %i.bey, %bb.et ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i10.i ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit.i ]
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.beq, i64 4
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bez ; 2 uses
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !63
  %i.bfd = zext i32 %i.bfc to i64
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfb, i64 %i.bfd ; 3 uses
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !63
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = sub nsw i64 0, %i.bfg
  %i.bfi = getelementptr inbounds i8, ptr %i.bfe, i64 %i.bfh ; 2 uses
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !97
  %i.bfk = icmp ugt i16 %i.bfj, 8
  br i1 %i.bfk, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12.i, label %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12.i: ; preds = %_ZNK10reflection4Type5indexEv.exit.i748
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  %i.bfm = load i16, ptr %i.bfl, align 2, !tbaa !97 ; 2 uses
  %.not.i.i13.i = icmp eq i16 %i.bfm, 0
  br i1 %.not.i.i13.i, label %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread, label %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i17.i: ; preds = %_ZNK10reflection4Type9base_typeEv.exit.i747
  %85 = add i8 %i.bea, -1
  %i.bfn = icmp ult i8 %85, 12
  br i1 %i.bfn, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i823, label %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread

_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12.i
  %i.bfo = zext i16 %i.bfm to i64
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.bfo
  %i.bfq = load i8, ptr %i.bfp, align 1, !tbaa !86
  %.not1189 = icmp eq i8 %i.bfq, 0
  br i1 %.not1189, label %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i823

_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12.i, %_ZNK10reflection4Type5indexEv.exit.i748, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i17.i, %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit
  %i.bfr = icmp eq i64 %.0168, 0
  br i1 %i.bfr, label %._crit_edge.i.i750, label %bb.fc

._crit_edge.i.i750:                               ; preds = %_ZN11flatbuffers15BinaryAnnotator13IsInlineFieldEPKN10reflection5FieldE.exit.thread
  %i.bfs = load i64, ptr %i.an, align 8, !tbaa !71
  %spec.select.i749 = call noundef i64 @llvm.usub.sat.i64(i64 %i.bfs, i64 %i.abx) ; 2 uses
  store ptr %i.ws, ptr %46, align 8, !tbaa !84
  store i8 52, ptr %i.ws, align 8, !tbaa !86
  store i64 1, ptr %i.wt, align 8, !tbaa !85
  store i8 0, ptr %i.aaq, align 1, !tbaa !86
  store i32 202, ptr %42, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ry, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit755 unwind label %bb.ey

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit755: ; preds = %._crit_edge.i.i750
  %i.bft = load ptr, ptr %46, align 8, !tbaa !95  ; 2 uses
  %i.bfu = icmp eq ptr %i.bft, %i.ws
  br i1 %i.bfu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit755
  %i.bfv = load i64, ptr %i.ws, align 8, !tbaa !86
  %i.bfw = add i64 %i.bfv, 1
  call void @_ZdlPvm(ptr noundef %i.bft, i64 noundef %i.bfw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit755, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %48, ptr noundef nonnull align 8 dereferenceable(120) %42)
          to label %bb.eu unwind label %bb.ez

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758
  store i32 0, ptr %i.wx, align 8, !alias.scope !336
  store ptr %i.ww, ptr %i.wv, align 8, !tbaa !84, !alias.scope !336
  store i64 0, ptr %i.wy, align 8, !tbaa !85, !alias.scope !336
  store i8 0, ptr %i.ww, align 8, !tbaa !86, !alias.scope !336
  store i32 0, ptr %i.wz, align 8, !tbaa !88, !alias.scope !336
  store ptr %i.xb, ptr %i.xa, align 8, !tbaa !84, !alias.scope !336
  store i64 0, ptr %i.xc, align 8, !tbaa !85, !alias.scope !336
  store i8 0, ptr %i.xb, align 8, !tbaa !86, !alias.scope !336
  store ptr %i.xe, ptr %i.xd, align 8, !tbaa !84, !alias.scope !336
  store i64 0, ptr %i.xf, align 8, !tbaa !85, !alias.scope !336
  store i8 0, ptr %i.xe, align 8, !tbaa !86, !alias.scope !336
  store i64 0, ptr %i.xg, align 8, !tbaa !87, !alias.scope !336
  store i64 %i.abx, ptr %47, align 8, !tbaa !92, !alias.scope !336
  store i64 %spec.select.i749, ptr %i.xh, align 8, !tbaa !93, !alias.scope !336
  store i32 0, ptr %i.xi, align 8, !tbaa !94, !alias.scope !336
  store i64 %spec.select.i749, ptr %i.wu, align 8, !tbaa !100, !alias.scope !336
  store i64 0, ptr %i.xj, align 8, !tbaa !101, !alias.scope !336
  %i.bfx = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.wx, ptr noundef nonnull align 8 dereferenceable(120) %48) #30 ; 0 uses
  %i.bfy = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(160) %47)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit760 unwind label %bb.fa ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit760: ; preds = %bb.eu
  %i.bfz = load ptr, ptr %i.xd, align 8, !tbaa !95 ; 2 uses
  %i.bga = icmp eq ptr %i.bfz, %i.xe
  br i1 %i.bga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i761

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i761: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit760
  %i.bgb = load i64, ptr %i.xe, align 8, !tbaa !86
  %i.bgc = add i64 %i.bgb, 1
  call void @_ZdlPvm(ptr noundef %i.bfz, i64 noundef %i.bgc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i762: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit760, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i761
  %i.bgd = load ptr, ptr %i.xa, align 8, !tbaa !95 ; 2 uses
  %i.bge = icmp eq ptr %i.bgd, %i.xb
  br i1 %i.bge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i764, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i763: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i762
  %i.bgf = load i64, ptr %i.xb, align 8, !tbaa !86
  %i.bgg = add i64 %i.bgf, 1
  call void @_ZdlPvm(ptr noundef %i.bgd, i64 noundef %i.bgg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i764

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i764: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i762, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i763
  %i.bgh = load ptr, ptr %i.wv, align 8, !tbaa !95 ; 2 uses
  %i.bgi = icmp eq ptr %i.bgh, %i.ww
  br i1 %i.bgi, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit769, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i765

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i765: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i764
  %i.bgj = load i64, ptr %i.ww, align 8, !tbaa !86
  %i.bgk = add i64 %i.bgj, 1
  call void @_ZdlPvm(ptr noundef %i.bgh, i64 noundef %i.bgk) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit769

_ZN11flatbuffers12BinaryRegionD2Ev.exit769:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i764, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i765
  %i.bgl = load ptr, ptr %i.xk, align 8, !tbaa !95 ; 2 uses
  %i.bgm = icmp eq ptr %i.bgl, %i.xl
  br i1 %i.bgm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i770: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit769
  %i.bgn = load i64, ptr %i.xl, align 8, !tbaa !86
  %i.bgo = add i64 %i.bgn, 1
  call void @_ZdlPvm(ptr noundef %i.bgl, i64 noundef %i.bgo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i771: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i770
  %i.bgp = load ptr, ptr %i.xm, align 8, !tbaa !95 ; 2 uses
  %i.bgq = icmp eq ptr %i.bgp, %i.xn
  br i1 %i.bgq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i773, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i772: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i771
  %i.bgr = load i64, ptr %i.xn, align 8, !tbaa !86
  %i.bgs = add i64 %i.bgr, 1
  call void @_ZdlPvm(ptr noundef %i.bgp, i64 noundef %i.bgs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i773

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i773: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i771, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i772
  %i.bgt = load ptr, ptr %i.xo, align 8, !tbaa !95 ; 2 uses
  %i.bgu = icmp eq ptr %i.bgt, %i.xp
  br i1 %i.bgu, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit778, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i774

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i774: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i773
  %i.bgv = load i64, ptr %i.xp, align 8, !tbaa !86
  %i.bgw = add i64 %i.bgv, 1
  call void @_ZdlPvm(ptr noundef %i.bgt, i64 noundef %i.bgw) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit778

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit778: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i773, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i774
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #30
  br label %_ZNSt3mapItN11flatbuffers15BinaryAnnotator6VTable5EntryESt4lessItESaISt4pairIKtS3_EEED2Ev.exit

bb.ev:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i714
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.ew:                                            ; preds = %.noexc.i722
  %i.bgy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784

bb.ex:                                            ; preds = %bb.el
  %i.bgz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781

.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i729, %bb.eo
  %lpad.loopexit.split-lp2300 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bha = load ptr, ptr %44, align 8, !tbaa !95  ; 2 uses
  %i.bhb = icmp eq ptr %i.bha, %i.sl
  br i1 %i.bhb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779: ; preds = %.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp
  %i.bhc = load i64, ptr %i.sl, align 8, !tbaa !86
  %i.bhd = add i64 %i.bhc, 1
  call void @_ZdlPvm(ptr noundef %i.bha, i64 noundef %i.bhd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781: ; preds = %.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779, %bb.ex
  %.pn270 = phi { ptr, i32 } [ %i.bgz, %bb.ex ], [ %lpad.loopexit.split-lp2300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779 ], [ %lpad.loopexit.split-lp2300, %.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bhe = load ptr, ptr %45, align 8, !tbaa !95  ; 2 uses
  %i.bhf = icmp eq ptr %i.bhe, %i.sj
  br i1 %i.bhf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781
  %i.bhg = load i64, ptr %i.sj, align 8, !tbaa !86
  %i.bhh = add i64 %i.bhg, 1
  call void @_ZdlPvm(ptr noundef %i.bhe, i64 noundef %i.bhh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781, %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782
  %.pn270.pn.pn = phi { ptr, i32 } [ %.pn270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782 ], [ %i.bgy, %bb.ew ], [ %.pn270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977

bb.ey:                                            ; preds = %._crit_edge.i.i750
  %i.bhi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bhj = load ptr, ptr %46, align 8, !tbaa !95  ; 2 uses
  %i.bhk = icmp eq ptr %i.bhj, %i.ws
  br i1 %i.bhk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit787, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i785

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i785: ; preds = %bb.ey
  %i.bhl = load i64, ptr %i.ws, align 8, !tbaa !86
  %i.bhm = add i64 %i.bhl, 1
  call void @_ZdlPvm(ptr noundef %i.bhj, i64 noundef %i.bhm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit787

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %bb.eu
  %i.bho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %47) #30
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers15BinaryAnnotator11BuildVectorEmPKN10reflection6ObjectEPKNS1_5FieldEmSt3mapItNS0_6VTable5EntryESt4lessItESaISt4pairIKtSA_EEE:bb.a
  br i1 %i.bdk, label %bb.en, label %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEjh.exit.thread

_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEjh.exit.thread: ; preds = %_ZNKRSt8optionalIhE5valueEv.exit, %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEjh.exit
  %i.bdl = add i64 %.81423, 4
  br label %bb.es

bb.en:                                            ; preds = %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEjh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  invoke void @_ZN11flatbuffers15BinaryAnnotator10BuildUnionB5cxx11EmhPKN10reflection5FieldE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %i.ayd, i8 noundef zeroext %i.azt, ptr noundef nonnull %3)
          to label %bb.eo unwind label %bb.eu

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.ep unwind label %bb.ev

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.17)
          to label %bb.eq unwind label %bb.ew

bb.eq:                                            ; preds = %bb.ep
  %i.bdm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.atd, ptr noundef nonnull align 8 dereferenceable(32) %64) #30 ; 0 uses
  %i.bdn = load ptr, ptr %64, align 8, !tbaa !95  ; 2 uses
  %i.bdo = icmp eq ptr %i.bdn, %i.awe
  br i1 %i.bdo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936: ; preds = %bb.eq
  %i.bdp = load i64, ptr %i.awe, align 8, !tbaa !86
  %i.bdq = add i64 %i.bdp, 1
  call void @_ZdlPvm(ptr noundef %i.bdn, i64 noundef %i.bdq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938: ; preds = %bb.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936
  %i.bdr = load ptr, ptr %65, align 8, !tbaa !95  ; 2 uses
  %i.bds = icmp eq ptr %i.bdr, %i.awf
  br i1 %i.bds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i939

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i939: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938
  %i.bdt = load i64, ptr %i.awf, align 8, !tbaa !86
  %i.bdu = add i64 %i.bdt, 1
  call void @_ZdlPvm(ptr noundef %i.bdr, i64 noundef %i.bdu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i939
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %67, ptr noundef nonnull align 8 dereferenceable(120) %53)
          to label %bb.er unwind label %bb.ex

bb.er:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941
  call fastcc void @_ZN11flatbuffers12_GLOBAL__N_116MakeBinaryRegionEmmNS_16BinaryRegionTypeEmmNS_19BinaryRegionCommentE(ptr dead_on_unwind noalias writable align 8 %66, i64 noundef %.81423, i64 noundef 4, i32 noundef 1, i64 noundef 0, i64 noundef %i.ayd, ptr nofreeobj noundef align 8 dereferenceable(120) %67)
  %i.bdv = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(160) %66)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit943 unwind label %bb.ey ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit943: ; preds = %bb.er
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %66) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %67) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #30
  %i.bdw = add i64 %.81423, 4
  %i.bdx = load ptr, ptr %63, align 8, !tbaa !95  ; 2 uses
  %i.bdy = icmp eq ptr %i.bdx, %i.awg
  br i1 %i.bdy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i944

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i944: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit943
  %i.bdz = load i64, ptr %i.awg, align 8, !tbaa !86
  %i.bea = add i64 %i.bdz, 1
  call void @_ZdlPvm(ptr noundef %i.bdx, i64 noundef %i.bea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit943, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i944
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %bb.es

bb.es:                                            ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit921, %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEjh.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit888, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit854
  %.7160 = phi i32 [ 12, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit854 ], [ 14, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit888 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946 ], [ 14, %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEjh.exit.thread ], [ 14, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit921 ]
  %.11 = phi i64 [ %.81423, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit854 ], [ %.81423, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit888 ], [ %i.bdw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946 ], [ %i.bdl, %_ZN11flatbuffers15BinaryAnnotator17IsValidUnionValueEjh.exit.thread ], [ %.81423, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit921 ]
  %i.beb = load ptr, ptr %i.atd, align 8, !tbaa !95 ; 2 uses
  %i.bec = icmp eq ptr %i.beb, %i.ate
  br i1 %i.bec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i948, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i947

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i947: ; preds = %bb.es
  %i.bed = load i64, ptr %i.ate, align 8, !tbaa !86
  %i.bee = add i64 %i.bed, 1
  call void @_ZdlPvm(ptr noundef %i.beb, i64 noundef %i.bee) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i948

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i948: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i947
  %i.bef = load ptr, ptr %i.ata, align 8, !tbaa !95 ; 2 uses
  %i.beg = icmp eq ptr %i.bef, %i.atb
  br i1 %i.beg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i950, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i949

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i949: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i948
  %i.beh = load i64, ptr %i.atb, align 8, !tbaa !86
  %i.bei = add i64 %i.beh, 1
  call void @_ZdlPvm(ptr noundef %i.bef, i64 noundef %i.bei) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i950

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i950: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i948, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i949
  %i.bej = load ptr, ptr %i.asw, align 8, !tbaa !95 ; 2 uses
  %i.bek = icmp eq ptr %i.bej, %i.asx
  br i1 %i.bek, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit955, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i951

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i951: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i950
  %i.bel = load i64, ptr %i.asx, align 8, !tbaa !86
  %i.bem = add i64 %i.bel, 1
  call void @_ZdlPvm(ptr noundef %i.bej, i64 noundef %i.bem) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit955

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit955: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i950, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i951
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30
  switch i32 %.7160, label %_ZNKSt3mapItN11flatbuffers15BinaryAnnotator6VTable5EntryESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread [
    i32 0, label %bb.et
    i32 14, label %bb.et
  ]

bb.et:                                            ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit955, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit955
  %i.ben = add nuw i64 %.01481424, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ben, %.sroa.01275.2
  br i1 %exitcond.not, label %_ZNKSt3mapItN11flatbuffers15BinaryAnnotator6VTable5EntryESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %bb.dv, !llvm.loop !464

bb.eu:                                            ; preds = %bb.en
  %i.beo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961

bb.ev:                                            ; preds = %bb.eo
  %i.bep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958

bb.ew:                                            ; preds = %bb.ep
  %i.beq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ber = load ptr, ptr %65, align 8, !tbaa !95  ; 2 uses
  %i.bes = icmp eq ptr %i.ber, %i.awf
  br i1 %i.bes, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956: ; preds = %bb.ew
  %i.bet = load i64, ptr %i.awf, align 8, !tbaa !86
  %i.beu = add i64 %i.bet, 1
  call void @_ZdlPvm(ptr noundef %i.ber, i64 noundef %i.beu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956, %bb.ev
  %.pn309 = phi { ptr, i32 } [ %i.bep, %bb.ev ], [ %i.beq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956 ], [ %i.beq, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #30
  br label %bb.fa

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941
  %i.bev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %bb.er
  %i.bew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %66) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %67) #30
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.pn311 = phi { ptr, i32 } [ %i.bew, %bb.ey ], [ %i.bev, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #30
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958
  %.pn311.pn = phi { ptr, i32 } [ %.pn311, %bb.ez ], [ %.pn309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958 ] ; 2 uses
  %i.bex = load ptr, ptr %63, align 8, !tbaa !95  ; 2 uses
  %i.bey = icmp eq ptr %i.bex, %i.awg
  br i1 %i.bey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959: ; preds = %bb.fa
  %i.bez = load i64, ptr %i.awg, align 8, !tbaa !86
  %i.bfa = add i64 %i.bez, 1
  call void @_ZdlPvm(ptr noundef %i.bex, i64 noundef %i.bfa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959, %bb.eu
  %.pn311.pn.pn = phi { ptr, i32 } [ %i.beo, %bb.eu ], [ %.pn311.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959 ], [ %.pn311.pn, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857: ; preds = %bb.ei, %bb.ec, %bb.dx, %bb.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855, %bb.ef, %bb.ea
  %.pn311.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bbq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922 ], [ %i.axs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855 ], [ %.pn298, %bb.ea ], [ %i.azj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889 ], [ %.pn303, %bb.ef ], [ %i.azj, %bb.ec ], [ %.pn307, %bb.el ], [ %i.axs, %bb.dx ], [ %.pn311.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961 ], [ %i.bbq, %bb.ei ]
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %53) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30
  br label %bb.gw

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i965: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i532, %_ZNK10reflection4Type7elementEv.exit
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.tl, i64 6
  %i.bfc = load i16, ptr %i.bfb, align 2, !tbaa !97 ; 2 uses
  %.not.i.i966 = icmp eq i16 %i.bfc, 0
  br i1 %.not.i.i966, label %_ZNKSt3mapItN11flatbuffers15BinaryAnnotator6VTable5EntryESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %_ZNK10reflection4Type7elementEv.exit967

_ZNK10reflection4Type7elementEv.exit967:          ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i965
  %i.bfd = zext i16 %i.bfc to i64
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.bfd
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !86 ; 3 uses
  %82 = add i8 %i.bff, -1
  %i.bfg = icmp ult i8 %82, 12
  br i1 %i.bfg, label %_ZNK10reflection4Type7elementEv.exit979, label %_ZNKSt3mapItN11flatbuffers15BinaryAnnotator6VTable5EntryESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread

_ZNK10reflection4Type7elementEv.exit979:          ; preds = %_ZNK10reflection4Type7elementEv.exit967
  %83 = zext nneg i8 %i.bff to i32
  %84 = call fastcc noundef i32 @_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE(i32 noundef %83) ; 2 uses
  %85 = zext nneg i8 %i.bff to i64
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %85
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !64 ; 11 uses
  %.not1441 = icmp eq i64 %.sroa.01275.2, 0
  br i1 %.not1441, label %_ZNKSt3mapItN11flatbuffers15BinaryAnnotator6VTable5EntryESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %.lr.ph1436

.lr.ph1436:                                       ; preds = %_ZNK10reflection4Type7elementEv.exit979
  %i.bfj = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 4 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 4 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.bfm = getelementptr inbounds nuw i8, ptr %68, i64 40
  %i.bfn = getelementptr inbounds nuw i8, ptr %68, i64 48 ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %68, i64 64 ; 4 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %68, i64 56
  %i.bfq = getelementptr inbounds nuw i8, ptr %68, i64 80 ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %68, i64 96 ; 4 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %68, i64 88
  %i.bft = getelementptr inbounds nuw i8, ptr %68, i64 112
  %i.bfu = add i64 %i.bfi, -1
  %i.bfv = icmp ult i64 %i.bfi, 10
  %i.bfw = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 5 uses
  %i.bfx = icmp ugt i64 %i.bfi, 99
  %i.bfy = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.bfz = getelementptr inbounds nuw i8, ptr %70, i64 24
  %i.bga = getelementptr inbounds nuw i8, ptr %70, i64 48 ; 2 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %70, i64 64 ; 4 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %70, i64 40 ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %70, i64 56
  %i.bge = getelementptr inbounds nuw i8, ptr %70, i64 80
  %i.bgf = getelementptr inbounds nuw i8, ptr %70, i64 88 ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %70, i64 104 ; 4 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %70, i64 96
  %i.bgi = getelementptr inbounds nuw i8, ptr %70, i64 120 ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %70, i64 136 ; 4 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %70, i64 128
  %i.bgl = getelementptr inbounds nuw i8, ptr %70, i64 152
  %i.bgm = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.bgn = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.bgo = getelementptr inbounds nuw i8, ptr %70, i64 32
  %i.bgp = getelementptr inbounds nuw i8, ptr %71, i64 80
  %i.bgq = getelementptr inbounds nuw i8, ptr %71, i64 96 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %71, i64 48
  %i.bgs = getelementptr inbounds nuw i8, ptr %71, i64 64 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.bgu = getelementptr inbounds nuw i8, ptr %71, i64 24 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgx = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 6 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.bgz = getelementptr inbounds nuw i8, ptr %73, i64 24
  %i.bha = getelementptr inbounds nuw i8, ptr %73, i64 48 ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %73, i64 64 ; 4 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %73, i64 40 ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %73, i64 56
  %i.bhe = getelementptr inbounds nuw i8, ptr %73, i64 80
  %i.bhf = getelementptr inbounds nuw i8, ptr %73, i64 88 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %73, i64 104 ; 4 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %73, i64 96
  %i.bhi = getelementptr inbounds nuw i8, ptr %73, i64 120 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %73, i64 136 ; 4 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %73, i64 128
  %i.bhl = getelementptr inbounds nuw i8, ptr %73, i64 152
  %i.bhm = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.bhn = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.bho = getelementptr inbounds nuw i8, ptr %74, i64 80
  %i.bhp = getelementptr inbounds nuw i8, ptr %74, i64 96 ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %74, i64 48
  %i.bhr = getelementptr inbounds nuw i8, ptr %74, i64 64 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.bht = getelementptr inbounds nuw i8, ptr %74, i64 24 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %75, i64 24
  %i.bhv = getelementptr inbounds nuw i8, ptr %75, i64 48 ; 2 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %75, i64 64 ; 4 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %75, i64 40 ; 2 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %75, i64 56
  %i.bhz = getelementptr inbounds nuw i8, ptr %75, i64 80
  %i.bia = getelementptr inbounds nuw i8, ptr %75, i64 88 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %75, i64 104 ; 4 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %75, i64 96
  %i.bid = getelementptr inbounds nuw i8, ptr %75, i64 120 ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %75, i64 136 ; 4 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %75, i64 128
  %i.big = getelementptr inbounds nuw i8, ptr %75, i64 152
  %i.bih = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.bii = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.bij = getelementptr inbounds nuw i8, ptr %76, i64 80
  %i.bik = getelementptr inbounds nuw i8, ptr %76, i64 96 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %76, i64 48
  %i.bim = getelementptr inbounds nuw i8, ptr %76, i64 64 ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.bio = getelementptr inbounds nuw i8, ptr %76, i64 24 ; 2 uses
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph1436, %bb.gc
  %.01435 = phi i64 [ 0, %.lr.ph1436 ], [ %i.brk, %bb.gc ] ; 2 uses
  %.121434 = phi i64 [ %i.jl, %.lr.ph1436 ], [ %.15, %bb.gc ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #30
  store i32 0, ptr %68, align 8, !tbaa !83
  store ptr %i.bfk, ptr %i.bfj, align 8, !tbaa !84
  store i64 0, ptr %i.bfl, align 8, !tbaa !85
  store i8 0, ptr %i.bfk, align 8, !tbaa !86
  store ptr %i.bfo, ptr %i.bfn, align 8, !tbaa !84
  store i64 0, ptr %i.bfp, align 8, !tbaa !85
  store i8 0, ptr %i.bfo, align 8, !tbaa !86
  store ptr %i.bfr, ptr %i.bfq, align 8, !tbaa !84
  store i64 0, ptr %i.bfs, align 8, !tbaa !85
  store i8 0, ptr %i.bfr, align 8, !tbaa !86
  store i32 19, ptr %i.bfm, align 8, !tbaa !88
  store i64 %.01435, ptr %i.bft, align 8, !tbaa !87
  %i.bip = load i64, ptr %i.jq, align 8, !tbaa !71 ; 5 uses
  %i.biq = icmp ult i64 %i.bfi, %i.bip
  %i.bir = add i64 %i.bfu, %.121434
  %i.bis = icmp ult i64 %i.bir, %i.bip
  %i.bit = and i1 %i.biq, %i.bis
  br i1 %i.bit, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i1013, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %spec.select.i982 = call noundef i64 @llvm.usub.sat.i64(i64 %i.bip, i64 %.121434) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  br i1 %i.bfv, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fc, %bb.fi
  %.029.i.i = phi i32 [ %i.bjb, %bb.fi ], [ 1, %bb.fc ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.bja, %bb.fi ], [ %i.bfi, %bb.fc ] ; 5 uses
  %i.biu = icmp ult i64 %.02328.i.i, 100
  br i1 %i.biu, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %.lr.ph.i.i
  %i.biv = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.fe:                                            ; preds = %.lr.ph.i.i
  %i.biw = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.biw, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.bix = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.fg:                                            ; preds = %bb.fe
  %i.biy = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.biy, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.biz = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.fi:                                            ; preds = %bb.fg
  %i.bja = udiv i64 %.02328.i.i, 10000
  %i.bjb = add i32 %.029.i.i, 4                   ; 2 uses
  %i.bjc = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.bjc, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.fi, %bb.fh, %bb.ff, %bb.fd, %bb.fc
  %.022.i.i = phi i32 [ %i.biz, %bb.fh ], [ %i.biv, %bb.fd ], [ %i.bix, %bb.ff ], [ 1, %bb.fc ], [ %i.bjb, %bb.fi ]
  %i.bjd = zext i32 %.022.i.i to i64
  store ptr %i.bfw, ptr %69, align 8, !tbaa !84, !alias.scope !500
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %69, i64 noundef %i.bjd, i8 noundef signext 0)
          to label %.noexc984 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc984:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bje = load ptr, ptr %69, align 8, !tbaa !95, !alias.scope !500 ; 4 uses
  br i1 %i.bfx, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i983

.lr.ph.preheader.i.i:                             ; preds = %.noexc984
  %i.bjf = load i64, ptr %i.bfy, align 8, !tbaa !85, !alias.scope !500
  %i.bjg = trunc i64 %i.bjf to i32
  %i.bjh = add i32 %i.bjg, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bjk, %.lr.ph.i4.i ], [ %i.bfi, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bju, %.lr.ph.i4.i ], [ %i.bjh, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bji = urem i64 %.020.i.i, 100
  %i.bjj = shl nuw nsw i64 %i.bji, 1
  %i.bjk = udiv i64 %.020.i.i, 100                ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bjj ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 1
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !86, !noalias !500
  %i.bjo = zext i32 %.01819.i.i to i64
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bje, i64 %i.bjo
  store i8 %i.bjn, ptr %i.bjp, align 1, !tbaa !86
  %i.bjq = load i8, ptr %i.bjl, align 2, !tbaa !86, !noalias !500
  %i.bjr = add i32 %.01819.i.i, -1
  %i.bjs = zext i32 %i.bjr to i64
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bje, i64 %i.bjs
  store i8 %i.bjq, ptr %i.bjt, align 1, !tbaa !86
  %i.bju = add i32 %.01819.i.i, -2
  %i.bjv = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bjv, label %.lr.ph.i4.i, label %._crit_edge.i.i983, !llvm.loop !5

._crit_edge.i.i983:                               ; preds = %.lr.ph.i4.i, %.noexc984
  %.0.lcssa.i.i = phi i64 [ %i.bfi, %.noexc984 ], [ %i.bjk, %.lr.ph.i4.i ] ; 3 uses
  %i.bjw = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bjw, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %._crit_edge.i.i983
  %i.bjx = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bjy = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bjx ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 1
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !86, !noalias !500
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bje, i64 1
end_hunk_2
begin_hunk_3_@_ZN11flatbuffers15BinaryAnnotator10BuildUnionB5cxx11EmhPKN10reflection5FieldE:bb.a

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i105
  %i.nc = load ptr, ptr %i.jk, align 8, !tbaa !106
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nf) #33
  br label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit110

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit110: ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i105, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNK10reflection4Type9base_typeEv.exit.thread

bb.ac:                                            ; preds = %.noexc.i61
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.ad:                                            ; preds = %bb.o
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ni = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.ga
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ad
  %i.nk = load i64, ptr %i.ga, align 8, !tbaa !86
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.ae:                                            ; preds = %.noexc.i67
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.t
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i76, %bb.v
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

.body:                                            ; preds = %bb.x, %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE.exit
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN11flatbuffers13BinarySectionD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #30
  call void @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  %i.nq = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.it
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %.body
  %i.ns = load i64, ptr %i.it, align 8, !tbaa !86
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.ag
  %.pn30.pn = phi { ptr, i32 } [ %i.no, %bb.ag ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.np, %.body ] ; 2 uses
  %i.nu = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.hq
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.nw = load i64, ptr %i.hq, align 8, !tbaa !86
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.af
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.nn, %bb.af ], [ %.pn30.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ] ; 2 uses
  %i.ny = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.hc
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.oa = load i64, ptr %i.hc, align 8, !tbaa !86
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.nm, %bb.ae ], [ %.pn30.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %.pn30.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %i.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.ng, %bb.ac ], [ %i.nh, %bb.ad ]
  call void @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn.pn

_ZNK10reflection6Object9is_structEv.exit.thread:  ; preds = %_ZNK10reflection4Type5indexEv.exit55, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i56, %_ZNK10reflection6Object9is_structEv.exit
  tail call void @_ZN11flatbuffers15BinaryAnnotator10BuildTableEmNS_17BinarySectionTypeEPKN10reflection6ObjectE(ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2, i32 noundef 2, ptr noundef nonnull %i.fg)
  br label %_ZNK10reflection4Type9base_typeEv.exit.thread

_ZNK10reflection4Type9base_typeEv.exit.thread:    ; preds = %_ZN11flatbuffers15BinaryAnnotator15ContainsSectionEm.exit.thread, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i49, %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit110, %_ZNK10reflection6Object9is_structEv.exit.thread, %_ZNK10reflection4Type9base_typeEv.exit
  %i.oc = load i32, ptr %i.bs, align 4, !tbaa !63
  %i.od = sext i32 %i.oc to i64
  %i.oe = sub nsw i64 0, %i.od
  %i.of = getelementptr inbounds i8, ptr %i.bs, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i124 = icmp ne i16 %i.oh, 0
  call void @llvm.assume(i1 %.not.i.i.i124)
  %i.oi = zext i16 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.oi ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !63
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.oo, ptr %0, align 8, !tbaa !84
  %i.op = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.on) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.op, ptr %i.a, align 8, !tbaa !64
  %i.oq = icmp ugt i64 %i.op, 15
  br i1 %i.oq, label %.noexc.i127, label %._crit_edge.i.i126

.noexc.i127:                                      ; preds = %_ZNK10reflection4Type9base_typeEv.exit.thread
  %i.or = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.or, ptr %0, align 8, !tbaa !95
  %i.os = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.os, ptr %i.oo, align 8, !tbaa !86
  br label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %.noexc.i127, %_ZNK10reflection4Type9base_typeEv.exit.thread
  %i.ot = phi ptr [ %i.or, %.noexc.i127 ], [ %i.oo, %_ZNK10reflection4Type9base_typeEv.exit.thread ] ; 2 uses
  switch i64 %i.op, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i126
  %i.ou = load i8, ptr %i.on, align 1, !tbaa !86
  store i8 %i.ou, ptr %i.ot, align 1, !tbaa !86
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ot, ptr nonnull align 1 %i.on, i64 %i.op, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i126
  %i.ov = load i64, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ov, ptr %i.ow, align 8, !tbaa !85
  %i.ox = load ptr, ptr %0, align 8, !tbaa !95
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.ov
  store i8 0, ptr %i.oy, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN11flatbuffers15BinaryAnnotator14GetElementSizeEPKN10reflection5FieldE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i:
  %i.a = load i32, ptr %1, align 4, !tbaa !63
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !97   ; 2 uses
  %.not.i.i.i = icmp ne i16 %i.f, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !63
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n ; 4 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !97   ; 2 uses
  %i.q = icmp ugt i16 %i.p, 6
  br i1 %i.q, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !97   ; 2 uses
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16, label %_ZNK10reflection4Type7elementEv.exit

_ZNK10reflection4Type7elementEv.exit:             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !86    ; 2 uses
  %2 = add i8 %i.v, -1
  %i.w = icmp ult i8 %2, 12
  br i1 %i.w, label %_ZNK10reflection4Type7elementEv.exit12, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16

_ZNK10reflection4Type7elementEv.exit12:           ; preds = %_ZNK10reflection4Type7elementEv.exit
  %3 = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %3
  %i.y = load i64, ptr %i.x, align 8, !tbaa !64
  br label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK10reflection4Type7elementEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !97  ; 2 uses
  %.not.i.i17 = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i17, label %_ZNK10reflection4Type7elementEv.exit18.thread, label %_ZNK10reflection4Type7elementEv.exit18

_ZNK10reflection4Type7elementEv.exit18:           ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !86
  %cond = icmp eq i8 %i.ad, 15
  br i1 %cond, label %bb.a, label %_ZNK10reflection4Type7elementEv.exit18.thread

bb.a:                                             ; preds = %_ZNK10reflection4Type7elementEv.exit18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !142 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !63
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !97
  %i.al = icmp ugt i16 %i.ak, 4
  br i1 %i.al, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19, label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19: ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i20 = icmp eq i16 %i.an, 0
  br i1 %.not.i.i.i20, label %_ZNK10reflection6Schema7objectsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  br label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK10reflection6Schema7objectsEv.exit:           ; preds = %bb.a, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19, %bb.b
  %i.at = phi ptr [ %i.as, %bb.b ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19 ], [ null, %bb.a ]
  %i.au = icmp ugt i16 %i.p, 8
  br i1 %i.au, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i24, label %_ZNK10reflection4Type5indexEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i24: ; preds = %_ZNK10reflection6Schema7objectsEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !97 ; 2 uses
  %.not.i.i25 = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i25, label %_ZNK10reflection4Type5indexEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i24
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !63
  %i.ba = shl i32 %i.az, 2
  %i.bb = zext i32 %i.ba to i64
  br label %_ZNK10reflection4Type5indexEv.exit

_ZNK10reflection4Type5indexEv.exit:               ; preds = %_ZNK10reflection6Schema7objectsEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i24, %bb.c
  %i.bc = phi i64 [ %i.bb, %bb.c ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i24 ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !63
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !63
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %i.bk ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !97 ; 2 uses
  %i.bn = icmp ugt i16 %i.bm, 8
  br i1 %i.bn, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26, label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26: ; preds = %_ZNK10reflection4Type5indexEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !97 ; 2 uses
  %.not.i.i27 = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i27, label %_ZNK10reflection4Type7elementEv.exit18.thread, label %_ZNK10reflection6Object9is_structEv.exit

_ZNK10reflection6Object9is_structEv.exit:         ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !86
  %.not = icmp eq i8 %i.bs, 0
  br i1 %.not, label %_ZNK10reflection4Type7elementEv.exit18.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK10reflection6Object9is_structEv.exit
  %i.bt = icmp ugt i16 %i.bm, 12
  br i1 %i.bt, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28, label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28: ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !97 ; 2 uses
  %.not.i.i29 = icmp eq i16 %i.bv, 0
  br i1 %.not.i.i29, label %_ZNK10reflection4Type7elementEv.exit18.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !63
  %i.bz = sext i32 %i.by to i64
  br label %_ZNK10reflection4Type7elementEv.exit18.thread

_ZNK10reflection4Type7elementEv.exit18.thread:    ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.e, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28, %bb.d, %_ZNK10reflection4Type5indexEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16, %_ZNK10reflection4Type7elementEv.exit18, %_ZNK10reflection6Object9is_structEv.exit, %_ZNK10reflection4Type7elementEv.exit12
  %.0 = phi i64 [ %i.y, %_ZNK10reflection4Type7elementEv.exit12 ], [ 4, %_ZNK10reflection6Object9is_structEv.exit ], [ 4, %_ZNK10reflection4Type5indexEv.exit ], [ 4, %_ZNK10reflection4Type7elementEv.exit18 ], [ 0, %bb.d ], [ 4, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i16 ], [ 4, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i26 ], [ %i.bz, %bb.e ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i28 ], [ 4, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !84, !alias.scope !522
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !85, !alias.scope !522
  store i8 0, ptr %i.c, align 8, !tbaa !86, !alias.scope !522
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137, !noalias !522 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !522 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138, !noalias !522 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !95, !alias.scope !522 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !86, !alias.scope !522
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !132
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !132
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !132
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !86
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #30
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !132
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFvPKN10reflection5FieldEEZN11flatbuffers15BinaryAnnotator16GetOrBuildVTableEmPKNS0_6ObjectEmE3$_0E9_M_invokeERKSt9_Any_dataOS3_":bb.a
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174.i.i.i
  %i.py = load i64, ptr %i.pu, align 8, !tbaa !86
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !622, !nonnull !67, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %17, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.qd = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store i32 0, ptr %i.qf, align 8, !alias.scope !626
  store ptr %i.qe, ptr %i.qd, align 8, !tbaa !84, !alias.scope !626
  %i.qg = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i64 0, ptr %i.qg, align 8, !tbaa !85, !alias.scope !626
  store i8 0, ptr %i.qe, align 8, !tbaa !86, !alias.scope !626
  %i.qh = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i32 0, ptr %i.qh, align 8, !tbaa !88, !alias.scope !626
  %i.qi = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 4 uses
  store ptr %i.qj, ptr %i.qi, align 8, !tbaa !84, !alias.scope !626
  %i.qk = getelementptr inbounds nuw i8, ptr %16, i64 96
  store i64 0, ptr %i.qk, align 8, !tbaa !85, !alias.scope !626
  store i8 0, ptr %i.qj, align 8, !tbaa !86, !alias.scope !626
  %i.ql = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %16, i64 136 ; 4 uses
  store ptr %i.qm, ptr %i.ql, align 8, !tbaa !84, !alias.scope !626
  %i.qn = getelementptr inbounds nuw i8, ptr %16, i64 128
  store i64 0, ptr %i.qn, align 8, !tbaa !85, !alias.scope !626
  store i8 0, ptr %i.qm, align 8, !tbaa !86, !alias.scope !626
  %i.qo = getelementptr inbounds nuw i8, ptr %16, i64 152
  store i64 0, ptr %i.qo, align 8, !tbaa !87, !alias.scope !626
  store i64 %i.t, ptr %16, align 8, !tbaa !92, !alias.scope !626
  %i.qp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 2, ptr %i.qp, align 8, !tbaa !93, !alias.scope !626
  %i.qq = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 3, ptr %i.qq, align 8, !tbaa !94, !alias.scope !626
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qc, i8 0, i64 16, i1 false)
  %i.qr = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.qf, ptr noundef nonnull align 8 dereferenceable(120) %17) #30 ; 0 uses
  %i.qs = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, ptr noundef nonnull align 8 dereferenceable(160) %16)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit179.i.i.i unwind label %bb.bd ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit179.i.i.i: ; preds = %bb.ay
  %i.qt = load ptr, ptr %i.ql, align 8, !tbaa !95 ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.qm
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i180.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i180.i.i.i: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit179.i.i.i
  %i.qv = load i64, ptr %i.qm, align 8, !tbaa !86
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181.i.i.i: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit179.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i180.i.i.i
  %i.qx = load ptr, ptr %i.qi, align 8, !tbaa !95 ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.qj
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i183.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i182.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i182.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181.i.i.i
  %i.qz = load i64, ptr %i.qj, align 8, !tbaa !86
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i183.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i183.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i182.i.i.i
  %i.rb = load ptr, ptr %i.qd, align 8, !tbaa !95 ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.qe
  br i1 %i.rc, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit188.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i184.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i184.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i183.i.i.i
  %i.rd = load i64, ptr %i.qe, align 8, !tbaa !86
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit188.i.i.i

_ZN11flatbuffers12BinaryRegionD2Ev.exit188.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i183.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i184.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !95 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  %i.ri = icmp eq ptr %i.rg, %i.rh
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i190.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i189.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i189.i.i.i: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit188.i.i.i
  %i.rj = load i64, ptr %i.rh, align 8, !tbaa !86
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i190.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i190.i.i.i: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit188.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i189.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !95 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.ro = icmp eq ptr %i.rm, %i.rn
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i192.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i191.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i191.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i190.i.i.i
  %i.rp = load i64, ptr %i.rn, align 8, !tbaa !86
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i192.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i192.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i190.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i191.i.i.i
  %i.rr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !95 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit197.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i193.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i193.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i192.i.i.i
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !86
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit197.i.i.i

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit197.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i192.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i193.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.bo

bb.az:                                            ; preds = %.critedge.i163.i.i.i
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i, %.invoke.i.i, %bb.bg
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i169.i.i.i
  %i.rz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sa = load ptr, ptr %15, align 8, !tbaa !95   ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.pu
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i.i.i: ; preds = %bb.bb
  %i.sc = load i64, ptr %i.pu, align 8, !tbaa !86
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i.i.i

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i.i.i
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ay
  %i.sf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %16) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %17) #30
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn61.i.i.i = phi { ptr, i32 } [ %i.sf, %bb.bd ], [ %i.se, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i.i.i

bb.bf:                                            ; preds = %bb.ax
  %i.sg = icmp samesign ugt i16 %i.pn, 6
  call void @llvm.assume(i1 %i.sg)
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i201.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i201.i.i.i: ; preds = %bb.bf, %_ZNK10reflection5Field8requiredEv.exit.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i167.i.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.pm, i64 6
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i202.i.i.i = icmp ne i16 %i.si, 0
  call void @llvm.assume(i1 %.not.i.i.i202.i.i.i)
  %i.sj = zext i16 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.sj ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !63
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sm ; 3 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !63
  %i.sp = sext i32 %i.so to i64
  %i.sq = sub nsw i64 0, %i.sp
  %i.sr = getelementptr inbounds i8, ptr %i.sn, i64 %i.sq ; 2 uses
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !97
  %i.st = icmp ugt i16 %i.ss, 4
  br i1 %i.st, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i203.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.invoke.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i203.i.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i201.i.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !97 ; 2 uses
  %.not.i.i204.i.i.i = icmp eq i16 %i.sv, 0
  br i1 %.not.i.i204.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.invoke.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit.i.i.i

_ZNK10reflection4Type9base_typeEv.exit.i.i.i:     ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i203.i.i.i
  %i.sw = zext i16 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !86
  %21 = add i8 %i.sy, -1
  %i.sz = icmp ult i8 %21, 12
  br i1 %i.sz, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.invoke.i.i.i

bb.bg:                                            ; preds = %_ZNK10reflection4Type9base_typeEv.exit.i.i.i
  %i.ta = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.51)
          to label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i205.i.i.i unwind label %bb.ba ; 0 uses

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i205.i.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.tb = load i32, ptr %.val2, align 4, !tbaa !63
  %i.tc = sext i32 %i.tb to i64
  %i.td = sub nsw i64 0, %i.tc
  %i.te = getelementptr inbounds i8, ptr %.val2, i64 %i.td ; 4 uses
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !97 ; 3 uses
  %i.tg = icmp ugt i16 %i.tf, 6
  call void @llvm.assume(i1 %i.tg)
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 6
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i206.i.i.i = icmp ne i16 %i.ti, 0
  call void @llvm.assume(i1 %.not.i.i.i206.i.i.i)
  %i.tj = zext i16 %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.tj ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !63
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tm ; 3 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !63
  %i.tp = sext i32 %i.to to i64
  %i.tq = sub nsw i64 0, %i.tp
  %i.tr = getelementptr inbounds i8, ptr %i.tn, i64 %i.tq ; 2 uses
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !97
  %i.tt = icmp ugt i16 %i.ts, 4
  br i1 %i.tt, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i208.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit210.thread.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i208.i.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i205.i.i.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !97 ; 2 uses
  %.not.i.i209.i.i.i = icmp eq i16 %i.tv, 0
  br i1 %.not.i.i209.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit210.thread.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit210.i.i.i

_ZNK10reflection4Type9base_typeEv.exit210.i.i.i:  ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i208.i.i.i
  %i.tw = zext i16 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !86
  %22 = add i8 %i.ty, -11
  %i.tz = icmp ult i8 %22, 2
  br i1 %i.tz, label %bb.bh, label %_ZNK10reflection4Type9base_typeEv.exit210.thread.i.i.i

bb.bh:                                            ; preds = %_ZNK10reflection4Type9base_typeEv.exit210.i.i.i
  %i.ua = icmp ugt i16 %i.tf, 14
  br i1 %i.ua, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i211.i.i.i, label %_ZNK10reflection5Field12default_realEv.exit.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i211.i.i.i: ; preds = %bb.bh
  %i.ub = getelementptr inbounds nuw i8, ptr %i.te, i64 14
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !97 ; 2 uses
  %.not.i.i212.i.i.i = icmp eq i16 %i.uc, 0
  br i1 %.not.i.i212.i.i.i, label %_ZNK10reflection5Field12default_realEv.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i211.i.i.i
  %i.ud = zext i16 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.ud
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !628
  br label %_ZNK10reflection5Field12default_realEv.exit.i.i.i

_ZNK10reflection5Field12default_realEv.exit.i.i.i: ; preds = %bb.bi, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i211.i.i.i, %bb.bh
  %i.ug = phi double [ %i.uf, %bb.bi ], [ 0.000000e+00, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i211.i.i.i ], [ 0.000000e+00, %bb.bh ]
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @vsnprintf, i64 noundef 328, ptr noundef nonnull @.str.54, double noundef %i.ug)
          to label %_ZNSt7__cxx119to_stringEd.exit.i.i.i unwind label %bb.bl

_ZNK10reflection4Type9base_typeEv.exit210.thread.i.i.i: ; preds = %_ZNK10reflection4Type9base_typeEv.exit210.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i208.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i205.i.i.i
  %i.uh = icmp ugt i16 %i.tf, 12
  br i1 %i.uh, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i214.i.i.i, label %_ZNK10reflection5Field15default_integerEv.exit.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i214.i.i.i: ; preds = %_ZNK10reflection4Type9base_typeEv.exit210.thread.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !97 ; 2 uses
  %.not.i.i215.i.i.i = icmp eq i16 %i.uj, 0
  br i1 %.not.i.i215.i.i.i, label %_ZNK10reflection5Field15default_integerEv.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i214.i.i.i
  %i.uk = zext i16 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.uk
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !64
  br label %_ZNK10reflection5Field15default_integerEv.exit.i.i.i

_ZNK10reflection5Field15default_integerEv.exit.i.i.i: ; preds = %bb.bj, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i214.i.i.i, %_ZNK10reflection4Type9base_typeEv.exit210.thread.i.i.i
  %i.un = phi i64 [ %i.um, %bb.bj ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i214.i.i.i ], [ 0, %_ZNK10reflection4Type9base_typeEv.exit210.thread.i.i.i ]
  invoke void @_ZNSt7__cxx119to_stringEl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 noundef %i.un)
          to label %_ZNSt7__cxx119to_stringEd.exit.i.i.i unwind label %bb.bl

_ZNSt7__cxx119to_stringEd.exit.i.i.i:             ; preds = %_ZNK10reflection5Field15default_integerEv.exit.i.i.i, %_ZNK10reflection5Field12default_realEv.exit.i.i.i
  %i.uo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bk unwind label %bb.bm     ; 0 uses

bb.bk:                                            ; preds = %_ZNSt7__cxx119to_stringEd.exit.i.i.i
  %i.up = load ptr, ptr %18, align 8, !tbaa !95   ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ur = icmp eq ptr %i.up, %i.uq
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i.i.i: ; preds = %bb.bk
  %i.us = load i64, ptr %i.uq, align 8, !tbaa !86
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.ut) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %.pre.i.i = load i64, ptr %i.ph, align 8, !tbaa !85
  %i.uu = sub i64 4611686018427387903, %.pre.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.invoke.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.invoke.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i.i.i, %_ZNK10reflection4Type9base_typeEv.exit.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i203.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i201.i.i.i
  %i.uv = phi i64 [ %i.uu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i.i.i ], [ 4611686018427387903, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i201.i.i.i ], [ 4611686018427387903, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i203.i.i.i ], [ 4611686018427387903, %_ZNK10reflection4Type9base_typeEv.exit.i.i.i ]
  %i.uw = phi ptr [ @.str.52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i.i.i ], [ @.str.53, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i201.i.i.i ], [ @.str.53, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i203.i.i.i ], [ @.str.53, %_ZNK10reflection4Type9base_typeEv.exit.i.i.i ] ; 2 uses
  %i.ux = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.uw) #30 ; 2 uses
  %i.uy = icmp ult i64 %i.uv, %i.ux
  br i1 %i.uy, label %.invoke.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.invoke.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.cont.i.i unwind label %bb.ba

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.invoke.i.i.i
  %i.uz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %i.uw, i64 noundef %i.ux)
          to label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i222.i.i.i unwind label %bb.ba ; 0 uses

bb.bl:                                            ; preds = %_ZNK10reflection5Field15default_integerEv.exit.i.i.i, %_ZNK10reflection5Field12default_realEv.exit.i.i.i
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i.i.i

bb.bm:                                            ; preds = %_ZNSt7__cxx119to_stringEd.exit.i.i.i
  %i.vb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vc = load ptr, ptr %18, align 8, !tbaa !95   ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ve = icmp eq ptr %i.vc, %i.vd
  br i1 %i.ve, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i.i.i: ; preds = %bb.bm
  %i.vf = load i64, ptr %i.vd, align 8, !tbaa !86
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i.i.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i.i.i, %bb.bl
  %.pn55.i.i.i = phi { ptr, i32 } [ %i.va, %bb.bl ], [ %i.vb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i.i.i ], [ %i.vb, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i222.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.vh = load i32, ptr %.val2, align 4, !tbaa !63
  %i.vi = sext i32 %i.vh to i64
  %i.vj = sub nsw i64 0, %i.vi
  %i.vk = getelementptr inbounds i8, ptr %.val2, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 6
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i223.i.i.i = icmp ne i16 %i.vm, 0
  call void @llvm.assume(i1 %.not.i.i.i223.i.i.i)
  %i.vn = zext i16 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.vn ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !63
  %i.vq = zext i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vq ; 3 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !63
  %i.vt = sext i32 %i.vs to i64
  %i.vu = sub nsw i64 0, %i.vt
  %i.vv = getelementptr inbounds i8, ptr %i.vr, i64 %i.vu ; 2 uses
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !97
  %i.vx = icmp ugt i16 %i.vw, 4
  br i1 %i.vx, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit227.thread.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225.i.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i222.i.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !97 ; 2 uses
  %.not.i.i226.i.i.i = icmp eq i16 %i.vz, 0
  br i1 %.not.i.i226.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit227.thread.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit227.i.i.i

_ZNK10reflection4Type9base_typeEv.exit227.i.i.i:  ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225.i.i.i
  %i.wa = zext i16 %i.vz to i64
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.wa
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !86  ; 2 uses
  %i.wd = zext nneg i8 %i.wc to i64
  %i.we = icmp ugt i8 %i.wc, 19
  br i1 %i.we, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.i.i.i, label %_ZNK10reflection4Type9base_typeEv.exit227.thread.i.i.i

_ZNK10reflection4Type9base_typeEv.exit227.thread.i.i.i: ; preds = %_ZNK10reflection4Type9base_typeEv.exit227.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i222.i.i.i
  %i.wf = phi i64 [ %i.wd, %_ZNK10reflection4Type9base_typeEv.exit227.i.i.i ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225.i.i.i ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i222.i.i.i ]
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN10reflection17EnumNamesBaseTypeEvE5names, i64 %i.wf
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !141
  br label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.i.i.i

_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.i.i.i: ; preds = %_ZNK10reflection4Type9base_typeEv.exit227.thread.i.i.i, %_ZNK10reflection4Type9base_typeEv.exit227.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.wh, %_ZNK10reflection4Type9base_typeEv.exit227.thread.i.i.i ], [ @.str, %_ZNK10reflection4Type9base_typeEv.exit227.i.i.i ] ; 2 uses
  %i.wi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #30 ; 2 uses
  %i.wj = load i64, ptr %i.ph, align 8, !tbaa !85
  %i.wk = sub i64 4611686018427387903, %i.wj
  %i.wl = icmp ult i64 %i.wk, %i.wi
  br i1 %i.wl, label %.invoke.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228.i.i.i: ; preds = %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.i.i.i
  %i.wm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %.0.i.i.i.i, i64 noundef %i.wi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i unwind label %bb.ba ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228.i.i.i
  %i.wn = load i64, ptr %i.ph, align 8, !tbaa !85
  %i.wo = icmp eq i64 %i.wn, 4611686018427387903
  br i1 %i.wo, label %.invoke.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i
  %i.wp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.i.i.i unwind label %bb.ba ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231.i.i.i, %bb.aw
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i.i.i unwind label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.i.i.i
  %i.wq = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !622, !nonnull !67, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %20, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.wt = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store i32 0, ptr %i.wv, align 8, !alias.scope !629
  store ptr %i.wu, ptr %i.wt, align 8, !tbaa !84, !alias.scope !629
  %i.ww = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i64 0, ptr %i.ww, align 8, !tbaa !85, !alias.scope !629
  store i8 0, ptr %i.wu, align 8, !tbaa !86, !alias.scope !629
  %i.wx = getelementptr inbounds nuw i8, ptr %19, i64 80
  store i32 0, ptr %i.wx, align 8, !tbaa !88, !alias.scope !629
  %i.wy = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %19, i64 104 ; 4 uses
  store ptr %i.wz, ptr %i.wy, align 8, !tbaa !84, !alias.scope !629
  %i.xa = getelementptr inbounds nuw i8, ptr %19, i64 96
  store i64 0, ptr %i.xa, align 8, !tbaa !85, !alias.scope !629
  store i8 0, ptr %i.wz, align 8, !tbaa !86, !alias.scope !629
end_hunk_4
begin_hunk_5_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lET_SB_SB_SB_T1_SC_T0_SC_:bb.a
  %lcmp.mod59 = trunc i64 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.bn = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.epil.init, i64 -16 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bn, ptr noundef nonnull align 8 dereferenceable(10) %i.bo, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bo, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.bk, %bb.af ], [ %.sroa.026.0.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bp = srem i64 %.056.i.i, %i.aw               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.ae ], [ %i.aw, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.bh, %bb.ae ], [ %i.bp, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.ae ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !18

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.060.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.sroa.026.259.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -16 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bq, ptr noundef nonnull align 8 dereferenceable(10) %i.br, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.br, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -32 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bs, ptr noundef nonnull align 8 dereferenceable(10) %i.bt, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bt, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !19

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit: ; preds = %._crit_edge.i.i, %._crit_edge67.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit, %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit
  %.sroa.032.0 = phi ptr [ %i.p, %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge67.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKN10reflection5FieldEEZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS5_12BinaryRegionESaIS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_6ObjectEE3$_0E9_M_invokeERKSt9_Any_dataOS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !168
  %.val2 = load ptr, ptr %1, align 8, !tbaa !125
  tail call fastcc void @"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE"(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef %.val2), !inline_history !641
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKN10reflection5FieldEEZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS5_12BinaryRegionESaIS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0", ptr %0, align 8, !tbaa !199
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !168
  store ptr %.val, ptr %0, align 8, !tbaa !168
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !642
  store ptr %i.a, ptr %0, align 8, !tbaa !168
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !168 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 22 uses
  %14 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 9 uses
  %15 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 21 uses
  %16 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %20 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 19 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 22 uses
  %32 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 9 uses
  %33 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 21 uses
  %34 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %38 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 17 uses
  %39 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 22 uses
  %40 = alloca %"struct.flatbuffers::BinaryRegionComment", align 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !711  ; 7 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !63
  %i.l = sext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !97   ; 2 uses
  %.not.i.i.i = icmp ne i16 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !63
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 10 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !63
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x ; 9 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !97   ; 3 uses
  %i.aa = icmp ugt i16 %i.z, 4
  br i1 %i.aa, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection4Type9base_typeEv.exit355.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !97 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i289, label %_ZNK10reflection4Type9base_typeEv.exit

_ZNK10reflection4Type9base_typeEv.exit:           ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !86  ; 3 uses
  %41 = add i8 %i.af, -1
  %i.ag = icmp ult i8 %41, 12
  br i1 %i.ag, label %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i289

_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit: ; preds = %_ZNK10reflection4Type9base_typeEv.exit
  %42 = zext nneg i8 %i.af to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !64     ; 9 uses
  %45 = zext nneg i8 %i.af to i64
  %46 = getelementptr i8, ptr @"switch.table._ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE.26", i64 %45
  %switch.gep = getelementptr i8, ptr %46, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i32 0, ptr %2, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.aj, align 8, !tbaa !85
  store i8 0, ptr %i.ai, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store i64 0, ptr %i.an, align 8, !tbaa !85
  store i8 0, ptr %i.am, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 6 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !85
  store i8 0, ptr %i.ap, align 8, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 0, ptr %i.ar, align 8, !tbaa !87
  store i32 13, ptr %i.ak, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.as = load ptr, ptr %0, align 8, !tbaa !712, !nonnull !67, !align !197 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !95, !noalias !713
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !85, !noalias !713 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !84, !alias.scope !714
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !85, !alias.scope !714
  store i8 0, ptr %i.aw, align 8, !tbaa !86, !alias.scope !714
  %i.ay = add i64 %i.av, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ay)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !85, !alias.scope !714
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.av
  br i1 %i.bb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.a
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.at, i64 noundef %i.av)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !85, !alias.scope !714
  %i.be = icmp eq i64 %i.bd, 4611686018427387903
  br i1 %i.be, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.cont.i.i unwind label %bb.b

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !95, !alias.scope !714 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aw
  br i1 %i.bi, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bj = load i32, ptr %1, align 4, !tbaa !63
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %1, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i135 = icmp ne i16 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i135)
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !63
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !99, !noalias !715 ; 3 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bx, ptr %5, align 8, !tbaa !84, !alias.scope !715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30, !noalias !715
  store i64 %i.bw, ptr %i.h, align 8, !tbaa !64, !noalias !715
  %i.by = icmp ugt i32 %i.bv, 15
  br i1 %i.by, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.ax    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.bz, ptr %5, align 8, !tbaa !95, !alias.scope !715
  %i.ca = load i64, ptr %i.h, align 8, !tbaa !64, !noalias !715
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !86, !alias.scope !715
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cb = phi ptr [ %i.bz, %.noexc ], [ %i.bx, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit ] ; 2 uses
  switch i32 %i.bv, label %bb.d [
    i32 1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load i8, ptr %i.bu, align 4, !tbaa !86, !noalias !715
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !86
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 4 %i.bu, i64 %i.bw, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.cd = load i64, ptr %i.h, align 8, !tbaa !64, !noalias !715 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !85, !alias.scope !715
  %i.cf = load ptr, ptr %5, align 8, !tbaa !95, !alias.scope !715
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !715
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.ch = load i64, ptr %i.ax, align 8, !tbaa !85, !noalias !716 ; 4 uses
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !85, !noalias !716 ; 4 uses
  %i.cj = add i64 %i.ci, %i.ch                    ; 2 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !95, !noalias !716 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aw
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.cm = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.cm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.cn = load i64, ptr %i.aw, align 8, !tbaa !86, !noalias !716
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.co = phi i64 [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.cp = icmp ugt i64 %i.cj, %i.co
  br i1 %i.cp, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cq = load ptr, ptr %5, align 8, !tbaa !95, !noalias !716
  %i.cr = icmp eq ptr %i.cq, %i.bx
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.f
  %i.cs = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.f
  %i.ct = load i64, ptr %i.bx, align 8, !tbaa !86, !noalias !716
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.cu = phi i64 [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.cj, %i.cu
  br i1 %.not.i, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.cv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ck, i64 noundef %i.ch)
          to label %.noexc136 unwind label %bb.ay ; 5 uses

.noexc136:                                        ; preds = %.critedge.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cw, ptr %3, align 8, !tbaa !84, !alias.scope !716
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !95 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 5 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.g:                                             ; preds = %.noexc136
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !85 ; 2 uses
  %i.dc = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw nsw i64 %i.db, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc136
  store ptr %i.cx, ptr %3, align 8, !tbaa !95, !alias.scope !716
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !86
  store i64 %i.de, ptr %i.cw, align 8, !tbaa !86, !alias.scope !716
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
end_hunk_5
begin_hunk_6_@"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE":_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  store ptr %i.kb, ptr %i.jy, align 8, !tbaa !95
  store i64 0, ptr %i.ki, align 8, !tbaa !85
  store i8 0, ptr %i.kb, align 8, !tbaa !86
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i183
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.kl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !85, !noalias !722
  %i.kn = icmp eq i64 %i.km, 4611686018427387903
  br i1 %i.kn, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc195 unwind label %bb.be

.noexc195:                                        ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189
  %i.ko = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc196 unwind label %bb.be ; 6 uses

.noexc196:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190
  %i.kp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.kp, ptr %6, align 8, !tbaa !84, !alias.scope !722
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !95 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 5 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

bb.af:                                            ; preds = %.noexc196
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !85 ; 3 uses
  %i.kv = icmp ult i64 %i.ku, 16
  call void @llvm.assume(i1 %i.kv)
  %i.kw = add nuw nsw i64 %i.ku, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kp, ptr noundef nonnull align 8 dereferenceable(1) %i.kr, i64 %i.kw, i1 false)
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %.noexc196
  store ptr %i.kq, ptr %6, align 8, !tbaa !95, !alias.scope !722
  %i.kx = load i64, ptr %i.kr, align 8, !tbaa !86
  store i64 %i.kx, ptr %i.kp, align 8, !tbaa !86, !alias.scope !722
  %.phi.trans.insert.i192 = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %.pre.i193 = load i64, ptr %.phi.trans.insert.i192, align 8, !tbaa !85
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.af
  %i.ky = phi i64 [ %i.ku, %bb.af ], [ %.pre.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.ky, ptr %i.la, align 8, !tbaa !85, !alias.scope !722
  store ptr %i.kr, ptr %i.ko, align 8, !tbaa !95
  store i64 0, ptr %i.kz, align 8, !tbaa !85
  store i8 0, ptr %i.kr, align 8, !tbaa !86
  %i.lb = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 6 uses
  %i.lc = icmp eq ptr %i.lb, %i.ap
  %i.ld = load ptr, ptr %6, align 8, !tbaa !95    ; 5 uses
  %i.le = icmp eq ptr %i.ld, %i.kp                ; 2 uses
  br i1 %i.lc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i203: ; preds = %bb.ag
  br i1 %i.le, label %bb.ah, label %.thread.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i198: ; preds = %bb.ag
  br i1 %i.le, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i199

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i203
  %i.lf = load i64, ptr %i.la, align 8, !tbaa !85 ; 3 uses
  %i.lg = icmp ult i64 %i.lf, 16
  call void @llvm.assume(i1 %i.lg)
  switch i64 %i.lf, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.lh = load i8, ptr %i.ld, align 1, !tbaa !86
  store i8 %i.lh, ptr %i.lb, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %i.ld, i64 %i.lf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.li = load i64, ptr %i.la, align 8, !tbaa !85 ; 2 uses
  store i64 %i.li, ptr %i.aq, align 8, !tbaa !85
  %i.lj = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.li
  store i8 0, ptr %i.lk, align 1, !tbaa !86
  %.pre.i202 = load ptr, ptr %6, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205

.thread.i204:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i203
  store ptr %i.ld, ptr %i.ao, align 8, !tbaa !95
  %i.ll = load <2 x i64>, ptr %i.la, align 8, !tbaa !86
  store <2 x i64> %i.ll, ptr %i.aq, align 8, !tbaa !86
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i199: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i198
  %i.lm = load i64, ptr %i.ap, align 8, !tbaa !86
  store ptr %i.ld, ptr %i.ao, align 8, !tbaa !95
  %i.ln = load <2 x i64>, ptr %i.la, align 8, !tbaa !86
  store <2 x i64> %i.ln, ptr %i.aq, align 8, !tbaa !86
  %.not.i200 = icmp eq ptr %i.lb, null
  br i1 %.not.i200, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i199
  store ptr %i.lb, ptr %6, align 8, !tbaa !95
  store i64 %i.lm, ptr %i.kp, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i199, %.thread.i204
  store ptr %i.kp, ptr %6, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201, %bb.ak, %bb.al
  %i.lo = phi ptr [ %.pre.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201 ], [ %i.lb, %bb.ak ], [ %i.kp, %bb.al ]
  store i64 0, ptr %i.la, align 8, !tbaa !85
  store i8 0, ptr %i.lo, align 1, !tbaa !86
  %i.lp = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.kp
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205
  %i.lr = load i64, ptr %i.kp, align 8, !tbaa !86
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  %i.lt = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !86
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  %i.ly = load ptr, ptr %11, align 8, !tbaa !95   ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ij
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.ma = load i64, ptr %i.ij, align 8, !tbaa !86
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.mc = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.gw
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.me = load i64, ptr %i.gw, align 8, !tbaa !86
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  %i.mg = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.gg
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %i.mi = load i64, ptr %i.gg, align 8, !tbaa !86
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  %i.mk = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.fv
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.mm = load i64, ptr %i.fv, align 8, !tbaa !86
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !723, !nonnull !67, !align !197 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !64 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !71 ; 3 uses
  %i.mt = icmp ult i64 %44, %i.ms
  %i.mu = add i64 %44, -1
  %i.mv = add i64 %i.mu, %i.mq
  %i.mw = icmp ult i64 %i.mv, %i.ms
  %i.mx = and i1 %i.mt, %i.mw                     ; 2 uses
  br i1 %i.mx, label %bb.bk, label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %spec.select.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.ms, i64 %i.mq) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.my = icmp ult i64 %44, 10
  br i1 %i.my, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %bb.as
  %.029.i.i = phi i32 [ %i.ng, %bb.as ], [ 1, %bb.am ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.nf, %bb.as ], [ %44, %bb.am ] ; 5 uses
  %i.mz = icmp ult i64 %.02328.i.i, 100
  br i1 %i.mz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.na = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.nb = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.nb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.nc = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.nd = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.nd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ne = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.nf = udiv i64 %.02328.i.i, 10000
  %i.ng = add i32 %.029.i.i, 4                    ; 2 uses
  %i.nh = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.nh, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.as, %bb.ar, %bb.ap, %bb.an, %bb.am
  %.022.i.i = phi i32 [ %i.ne, %bb.ar ], [ %i.na, %bb.an ], [ %i.nc, %bb.ap ], [ 1, %bb.am ], [ %i.ng, %bb.as ]
  %i.ni = zext i32 %.022.i.i to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.nj, ptr %12, align 8, !tbaa !84, !alias.scope !724
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ni, i8 noundef signext 0)
          to label %.noexc225 unwind label %bb.bf

.noexc225:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.nk = load ptr, ptr %12, align 8, !tbaa !95, !alias.scope !724 ; 4 uses
  %i.nl = icmp ugt i64 %44, 99
  br i1 %i.nl, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i224

.lr.ph.preheader.i.i:                             ; preds = %.noexc225
  %i.nm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !85, !alias.scope !724
  %i.no = trunc i64 %i.nn to i32
  %i.np = add i32 %i.no, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ns, %.lr.ph.i4.i ], [ %44, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.oc, %.lr.ph.i4.i ], [ %i.np, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.nq = urem i64 %.020.i.i, 100
  %i.nr = shl nuw nsw i64 %i.nq, 1
  %i.ns = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.nr ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !86, !noalias !724
  %i.nw = zext i32 %.01819.i.i to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nw
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !86
  %i.ny = load i8, ptr %i.nt, align 2, !tbaa !86, !noalias !724
  %i.nz = add i32 %.01819.i.i, -1
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.oa
  store i8 %i.ny, ptr %i.ob, align 1, !tbaa !86
  %i.oc = add i32 %.01819.i.i, -2
  %i.od = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.od, label %.lr.ph.i4.i, label %._crit_edge.i.i224, !llvm.loop !5

._crit_edge.i.i224:                               ; preds = %.lr.ph.i4.i, %.noexc225
  %.0.lcssa.i.i = phi i64 [ %44, %.noexc225 ], [ %i.ns, %.lr.ph.i4.i ] ; 3 uses
  %i.oe = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.oe, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i224
  %i.of = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.og = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !86, !noalias !724
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nk, i64 1
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !86
  %i.ok = load i8, ptr %i.og, align 2, !tbaa !86, !noalias !724
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i224
  %i.ol = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.om = or disjoint i8 %i.ol, 48
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %storemerge.i.i = phi i8 [ %i.om, %bb.au ], [ %i.ok, %bb.at ]
  store i8 %storemerge.i.i, ptr %i.nk, align 1, !tbaa !86
  store i32 202, ptr %2, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.bg

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.av
  %i.on = load ptr, ptr %12, align 8, !tbaa !95   ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.nj
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.op = load i64, ptr %i.nj, align 8, !tbaa !86
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !725, !nonnull !67, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.ot = load ptr, ptr %i.mo, align 8, !tbaa !723, !nonnull !67, !align !197
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !64
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.ov = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store i32 0, ptr %i.oy, align 8, !alias.scope !726
  store ptr %i.ox, ptr %i.ow, align 8, !tbaa !84, !alias.scope !726
  %i.oz = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i64 0, ptr %i.oz, align 8, !tbaa !85, !alias.scope !726
  store i8 0, ptr %i.ox, align 8, !tbaa !86, !alias.scope !726
  %i.pa = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i32 0, ptr %i.pa, align 8, !tbaa !88, !alias.scope !726
  %i.pb = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 4 uses
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !84, !alias.scope !726
  %i.pd = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i64 0, ptr %i.pd, align 8, !tbaa !85, !alias.scope !726
  store i8 0, ptr %i.pc, align 8, !tbaa !86, !alias.scope !726
  %i.pe = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 4 uses
  store ptr %i.pf, ptr %i.pe, align 8, !tbaa !84, !alias.scope !726
  %i.pg = getelementptr inbounds nuw i8, ptr %13, i64 128
  store i64 0, ptr %i.pg, align 8, !tbaa !85, !alias.scope !726
  store i8 0, ptr %i.pf, align 8, !tbaa !86, !alias.scope !726
  %i.ph = getelementptr inbounds nuw i8, ptr %13, i64 152
  store i64 0, ptr %i.ph, align 8, !tbaa !87, !alias.scope !726
  store i64 %i.ou, ptr %13, align 8, !tbaa !92, !alias.scope !726
  %i.pi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %spec.select.i, ptr %i.pi, align 8, !tbaa !93, !alias.scope !726
  %i.pj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.pj, align 8, !tbaa !94, !alias.scope !726
  store i64 %spec.select.i, ptr %i.ov, align 8, !tbaa !100, !alias.scope !726
  %i.pk = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 0, ptr %i.pk, align 8, !tbaa !101, !alias.scope !726
  %i.pl = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.oy, ptr noundef nonnull align 8 dereferenceable(120) %14) #30 ; 0 uses
  %i.pm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.os, ptr noundef nonnull align 8 dereferenceable(160) %13)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit unwind label %bb.bi ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.aw
  %i.pn = load ptr, ptr %i.pe, align 8, !tbaa !95 ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.pf
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit
  %i.pp = load i64, ptr %i.pf, align 8, !tbaa !86
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231
  %i.pr = load ptr, ptr %i.pb, align 8, !tbaa !95 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.pc
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.pt = load i64, ptr %i.pc, align 8, !tbaa !86
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.pv = load ptr, ptr %i.ow, align 8, !tbaa !95 ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.ox
  br i1 %i.pw, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.px = load i64, ptr %i.ox, align 8, !tbaa !86
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit

_ZN11flatbuffers12BinaryRegionD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !95 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !86
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !95 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !86
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ql = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !95 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.qo = icmp eq ptr %i.qm, %i.qn
  br i1 %i.qo, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.qp = load i64, ptr %i.qn, align 8, !tbaa !86
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qq) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.bm

bb.ax:                                            ; preds = %.noexc.i.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i, %.critedge.i
  %i.qs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qt = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.bx
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.ay
  %i.qv = load i64, ptr %i.bx, align 8, !tbaa !86
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.ax
  %.pn103 = phi { ptr, i32 } [ %i.qr, %bb.ax ], [ %i.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %i.qs, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.qx = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.aw
  br i1 %i.qy, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %bb.b
  %.sink = phi ptr [ %i.bh, %bb.b ], [ %i.qx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ]
  %.pn103.pn.ph = phi { ptr, i32 } [ %i.bg, %bb.b ], [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ]
  %i.qz = load i64, ptr %i.aw, align 8, !tbaa !86
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ra) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %bb.b
  %.pn103.pn = phi { ptr, i32 } [ %i.bg, %bb.b ], [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn103.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.az:                                            ; preds = %.noexc.i.i151
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.ba:                                            ; preds = %bb.r
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.u
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.bc:                                            ; preds = %.noexc.i
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i175, %bb.ac, %.critedge.i181
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190, %bb.ae
  %i.rg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rh = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.be
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !86
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.bd
  %.pn106 = phi { ptr, i32 } [ %i.rf, %bb.bd ], [ %i.rg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %i.rg, %bb.be ] ; 2 uses
  %i.rm = load ptr, ptr %11, align 8, !tbaa !95   ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.ij
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.ro = load i64, ptr %i.ij, align 8, !tbaa !86
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.re, %bb.bc ], [ %.pn106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.rq = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.gw
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.rs = load i64, ptr %i.gw, align 8, !tbaa !86
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bb
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %i.rd, %bb.bb ], [ %.pn106.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn106.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  %i.ru = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.gg
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.rw = load i64, ptr %i.gg, align 8, !tbaa !86
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.ba
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rc, %bb.ba ], [ %.pn106.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.pn106.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %i.ry = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.fv
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.sa = load i64, ptr %i.fv, align 8, !tbaa !86
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.az
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rb, %bb.az ], [ %.pn106.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn106.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.bf:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.bg:                                            ; preds = %bb.av
  %i.sd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.se = load ptr, ptr %12, align 8, !tbaa !95   ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.nj
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.bg
  %i.sg = load i64, ptr %i.nj, align 8, !tbaa !86
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.aw
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %13) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %14) #30
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn113 = phi { ptr, i32 } [ %i.sj, %bb.bi ], [ %i.si, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !725, !nonnull !67, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.sm = load i64, ptr %i.mp, align 8, !tbaa !64
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.sn = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.so = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  store i32 0, ptr %i.sq, align 8, !alias.scope !727
  store ptr %i.sp, ptr %i.so, align 8, !tbaa !84, !alias.scope !727
  %i.sr = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i64 0, ptr %i.sr, align 8, !tbaa !85, !alias.scope !727
  store i8 0, ptr %i.sp, align 8, !tbaa !86, !alias.scope !727
  %i.ss = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i32 0, ptr %i.ss, align 8, !tbaa !88, !alias.scope !727
  %i.st = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 4 uses
  store ptr %i.su, ptr %i.st, align 8, !tbaa !84, !alias.scope !727
  %i.sv = getelementptr inbounds nuw i8, ptr %15, i64 96
  store i64 0, ptr %i.sv, align 8, !tbaa !85, !alias.scope !727
  store i8 0, ptr %i.su, align 8, !tbaa !86, !alias.scope !727
  %i.sw = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %15, i64 136 ; 4 uses
  store ptr %i.sx, ptr %i.sw, align 8, !tbaa !84, !alias.scope !727
  %i.sy = getelementptr inbounds nuw i8, ptr %15, i64 128
  store i64 0, ptr %i.sy, align 8, !tbaa !85, !alias.scope !727
  store i8 0, ptr %i.sx, align 8, !tbaa !86, !alias.scope !727
  %i.sz = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %i.sz, align 8, !tbaa !87, !alias.scope !727
  store i64 %i.sm, ptr %15, align 8, !tbaa !92, !alias.scope !727
  %i.ta = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %44, ptr %i.ta, align 8, !tbaa !93, !alias.scope !727
  %i.tb = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %switch.ext, ptr %i.tb, align 8, !tbaa !94, !alias.scope !727
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sn, i8 0, i64 16, i1 false)
  %i.tc = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.sq, ptr noundef nonnull align 8 dereferenceable(120) %16) #30 ; 0 uses
  %i.td = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, ptr noundef nonnull align 8 dereferenceable(160) %15)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit258 unwind label %bb.bo ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit258: ; preds = %bb.bl
  %i.te = load ptr, ptr %i.sw, align 8, !tbaa !95 ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.sx
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i259: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit258
  %i.tg = load i64, ptr %i.sx, align 8, !tbaa !86
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i260: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i259
  %i.ti = load ptr, ptr %i.st, align 8, !tbaa !95 ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.su
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i260
  %i.tk = load i64, ptr %i.su, align 8, !tbaa !86
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i261
  %i.tm = load ptr, ptr %i.so, align 8, !tbaa !95 ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.sp
  br i1 %i.tn, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i262
  %i.to = load i64, ptr %i.sp, align 8, !tbaa !86
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit267

_ZN11flatbuffers12BinaryRegionD2Ev.exit267:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i263
  %i.tq = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !95 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.tt = icmp eq ptr %i.tr, %i.ts
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i268: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit267
  %i.tu = load i64, ptr %i.ts, align 8, !tbaa !86
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i269: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i268
  %i.tw = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !95 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i269
  %i.ua = load i64, ptr %i.ty, align 8, !tbaa !86
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i270
  %i.uc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !95 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.uf = icmp eq ptr %i.ud, %i.ue
  br i1 %i.uf, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i271
  %i.ug = load i64, ptr %i.ue, align 8, !tbaa !86
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.uh) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit276

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit276, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit
  %.sink1445 = phi i64 [ %44, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit276 ], [ %spec.select.i, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit ]
  %i.ui = load ptr, ptr %i.mo, align 8, !tbaa !723, !nonnull !67, !align !197 ; 2 uses
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !64
  %i.uk = add i64 %i.uj, %.sink1445
  store i64 %i.uk, ptr %i.ui, align 8, !tbaa !64
  %i.ul = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.ap
  br i1 %i.um, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i277: ; preds = %bb.bm
  %i.un = load i64, ptr %i.ap, align 8, !tbaa !86
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.uo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i278: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i277
  %i.up = load ptr, ptr %i.al, align 8, !tbaa !95 ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.am
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i278
  %i.ur = load i64, ptr %i.am, align 8, !tbaa !86
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i279
  %i.ut = load ptr, ptr %i.ah, align 8, !tbaa !95 ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.ai
  br i1 %i.uu, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i280
  %i.uv = load i64, ptr %i.ai, align 8, !tbaa !86
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit285

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.mx, label %_ZNK10reflection4Type9base_typeEv.exit355.thread, label %_ZNK10reflection5Field7paddingEv.exit.thread

bb.bn:                                            ; preds = %bb.bk
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %15) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %16) #30
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn116 = phi { ptr, i32 } [ %i.uy, %bb.bo ], [ %i.ux, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.bf, %bb.bj, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %.body
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %bb.bp ], [ %.pn103.pn, %.body ], [ %.pn106.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn113, %bb.bj ], [ %i.sc, %bb.bf ], [ %i.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %i.sd, %bb.bg ]
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i289: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK10reflection4Type9base_typeEv.exit
  %i.uz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !97 ; 2 uses
  %.not.i.i290 = icmp eq i16 %i.va, 0
  br i1 %.not.i.i290, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i353, label %_ZNK10reflection4Type9base_typeEv.exit291

_ZNK10reflection4Type9base_typeEv.exit291:        ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i289
  %i.vb = zext i16 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !86
  %i.ve = icmp eq i8 %i.vd, 15
  br i1 %i.ve, label %bb.bq, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i353

bb.bq:                                            ; preds = %_ZNK10reflection4Type9base_typeEv.exit291
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !723, !nonnull !67, !align !197
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !64
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !725, !nonnull !67, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.vk = load ptr, ptr %0, align 8, !tbaa !712, !nonnull !67, !align !197 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !95, !noalias !728
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !85, !noalias !728 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 10 uses
  store ptr %i.vo, ptr %18, align 8, !tbaa !84, !alias.scope !729
  %i.vp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i64 0, ptr %i.vp, align 8, !tbaa !85, !alias.scope !729
  store i8 0, ptr %i.vo, align 8, !tbaa !86, !alias.scope !729
  %i.vq = add i64 %i.vn, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.vq)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.vr = load i64, ptr %i.vp, align 8, !tbaa !85, !alias.scope !729
  %i.vs = sub i64 4611686018427387903, %i.vr
  %i.vt = icmp ult i64 %i.vs, %i.vn
  br i1 %i.vt, label %.invoke.i.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i295: ; preds = %bb.br
  %i.vu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %i.vl, i64 noundef %i.vn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i296 unwind label %bb.bs ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i296: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i295
  %i.vv = load i64, ptr %i.vp, align 8, !tbaa !85, !alias.scope !729
  %i.vw = icmp eq i64 %i.vv, 4611686018427387903
  br i1 %i.vw, label %.invoke.i.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i297

.invoke.i.i298:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i296, %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.cont.i.i299 unwind label %bb.bs

.cont.i.i299:                                     ; preds = %.invoke.i.i298
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i296
  %i.vx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit300 unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i297, %.invoke.i.i298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i295, %bb.bq
  %i.vy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vz = load ptr, ptr %18, align 8, !tbaa !95, !alias.scope !729 ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.vo
  br i1 %i.wa, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i292: ; preds = %bb.bs
  %i.wb = load i64, ptr %i.vo, align 8, !tbaa !86, !alias.scope !729
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #33
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %bb.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i610, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i292
  %common.resume.op = phi { ptr, i32 } [ %i.vy, %bb.bs ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669 ], [ %i.vy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i292 ], [ %lpad.loopexit.split-lp1506, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i610 ], [ %.pn119, %bb.fd ], [ %.pn116.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pn100.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349 ], [ %.pn96.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580 ], [ %lpad.loopexit.split-lp1506, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit300: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i297
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.wd = load i32, ptr %1, align 4, !tbaa !63
  %i.we = sext i32 %i.wd to i64
  %i.wf = sub nsw i64 0, %i.we
  %i.wg = getelementptr inbounds i8, ptr %1, i64 %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i302 = icmp ne i16 %i.wi, 0
  call void @llvm.assume(i1 %.not.i.i.i302)
  %i.wj = zext i16 %i.wi to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 %i.wj ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !63
  %i.wm = zext i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.wm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 2 uses
  %i.wp = load i32, ptr %i.wn, align 4, !tbaa !99, !noalias !730 ; 3 uses
  %i.wq = zext i32 %i.wp to i64                   ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  store ptr %i.wr, ptr %19, align 8, !tbaa !84, !alias.scope !730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30, !noalias !730
  store i64 %i.wq, ptr %i.e, align 8, !tbaa !64, !noalias !730
  %i.ws = icmp ugt i32 %i.wp, 15
  br i1 %i.ws, label %.noexc.i.i305, label %._crit_edge.i.i.i304

.noexc.i.i305:                                    ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit300
  %i.wt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc306 unwind label %bb.cf ; 2 uses

.noexc306:                                        ; preds = %.noexc.i.i305
  store ptr %i.wt, ptr %19, align 8, !tbaa !95, !alias.scope !730
  %i.wu = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !730
  store i64 %i.wu, ptr %i.wr, align 8, !tbaa !86, !alias.scope !730
  br label %._crit_edge.i.i.i304

._crit_edge.i.i.i304:                             ; preds = %.noexc306, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit300
  %i.wv = phi ptr [ %i.wt, %.noexc306 ], [ %i.wr, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit300 ] ; 2 uses
  switch i32 %i.wp, label %bb.bu [
    i32 1, label %bb.bt
    i32 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i304
  %i.ww = load i8, ptr %i.wo, align 4, !tbaa !86, !noalias !730
  store i8 %i.ww, ptr %i.wv, align 1, !tbaa !86
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i.i304
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wv, ptr nonnull align 4 %i.wo, i64 %i.wq, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i.i304
  %i.wx = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !730 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %i.wx, ptr %i.wy, align 8, !tbaa !85, !alias.scope !730
  %i.wz = load ptr, ptr %19, align 8, !tbaa !95, !alias.scope !730
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.wx
  store i8 0, ptr %i.xa, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30, !noalias !730
end_hunk_6
begin_hunk_7_@"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE":_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !85
  %i.yr = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.yq, ptr %i.yr, align 8, !tbaa !85, !alias.scope !731
  store ptr %i.yi, ptr %i.yf, align 8, !tbaa !95
  store i64 0, ptr %i.yp, align 8, !tbaa !85
  store i8 0, ptr %i.yi, align 8, !tbaa !86
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit324

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i318
  %i.ys = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !142 ; 3 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !63
  %i.yv = sext i32 %i.yu to i64
  %i.yw = sub nsw i64 0, %i.yv
  %i.yx = getelementptr inbounds i8, ptr %i.yt, i64 %i.yw ; 2 uses
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !97
  %i.yz = icmp ugt i16 %i.yy, 4
  br i1 %i.yz, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i325, label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i325: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit324
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i326 = icmp eq i16 %i.zb, 0
  br i1 %.not.i.i.i326, label %_ZNK10reflection6Schema7objectsEv.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i325
  %i.zc = zext i16 %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.zc ; 2 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !63
  %i.zf = zext i32 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zf
  br label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK10reflection6Schema7objectsEv.exit:           ; preds = %bb.cb, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i325, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit324
  %i.zh = phi ptr [ %i.zg, %bb.cb ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i325 ], [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit324 ]
  %i.zi = load i32, ptr %1, align 4, !tbaa !63
  %i.zj = sext i32 %i.zi to i64
  %i.zk = sub nsw i64 0, %i.zj
  %i.zl = getelementptr inbounds i8, ptr %1, i64 %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 6
  %i.zn = load i16, ptr %i.zm, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i328 = icmp ne i16 %i.zn, 0
  call void @llvm.assume(i1 %.not.i.i.i328)
  %i.zo = zext i16 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 %i.zo ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !63
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zr ; 3 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !63
  %i.zu = sext i32 %i.zt to i64
  %i.zv = sub nsw i64 0, %i.zu
  %i.zw = getelementptr inbounds i8, ptr %i.zs, i64 %i.zv ; 2 uses
  %i.zx = load i16, ptr %i.zw, align 2, !tbaa !97
  %i.zy = icmp ugt i16 %i.zx, 8
  br i1 %i.zy, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i330, label %bb.cd

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i330: ; preds = %_ZNK10reflection6Schema7objectsEv.exit
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !97 ; 2 uses
  %.not.i.i331 = icmp eq i16 %i.aaa, 0
  br i1 %.not.i.i331, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i330
  %i.aab = zext i16 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !63
  %i.aae = shl i32 %i.aad, 2
  %i.aaf = zext i32 %i.aae to i64
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNK10reflection6Schema7objectsEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i330, %bb.cc
  %i.aag = phi i64 [ %i.aaf, %bb.cc ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i330 ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit ]
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aag ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !63
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aak
  %i.aam = invoke noundef i64 @_ZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectE(ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 noundef %i.vh, ptr noundef nonnull align 8 dereferenceable(24) %i.vj, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull %i.aal)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.aan = load ptr, ptr %i.vf, align 8, !tbaa !723, !nonnull !67, !align !197
  store i64 %i.aam, ptr %i.aan, align 8, !tbaa !64
  %i.aao = load ptr, ptr %17, align 8, !tbaa !95  ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aaq = icmp eq ptr %i.aao, %i.aap
  br i1 %i.aaq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %bb.ce
  %i.aar = load i64, ptr %i.aap, align 8, !tbaa !86
  %i.aas = add i64 %i.aar, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aas) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  %i.aat = load ptr, ptr %19, align 8, !tbaa !95  ; 2 uses
  %i.aau = icmp eq ptr %i.aat, %i.wr
  br i1 %i.aau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  %i.aav = load i64, ptr %i.wr, align 8, !tbaa !86
  %i.aaw = add i64 %i.aav, 1
  call void @_ZdlPvm(ptr noundef %i.aat, i64 noundef %i.aaw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.aax = load ptr, ptr %18, align 8, !tbaa !95  ; 2 uses
  %i.aay = icmp eq ptr %i.aax, %i.vo
  br i1 %i.aay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  %i.aaz = load i64, ptr %i.vo, align 8, !tbaa !86
  %i.aba = add i64 %i.aaz, 1
  call void @_ZdlPvm(ptr noundef %i.aax, i64 noundef %i.aba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %_ZNK10reflection4Type9base_typeEv.exit355.thread

bb.cf:                                            ; preds = %.noexc.i.i305
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i310, %bb.bz, %.critedge.i316
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

bb.ch:                                            ; preds = %bb.cd
  %i.abd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abe = load ptr, ptr %17, align 8, !tbaa !95  ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.abg = icmp eq ptr %i.abe, %i.abf
  br i1 %i.abg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.ch
  %i.abh = load i64, ptr %i.abf, align 8, !tbaa !86
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.cg
  %.pn100 = phi { ptr, i32 } [ %i.abc, %bb.cg ], [ %i.abd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %i.abd, %bb.ch ] ; 2 uses
  %i.abj = load ptr, ptr %19, align 8, !tbaa !95  ; 2 uses
  %i.abk = icmp eq ptr %i.abj, %i.wr
  br i1 %i.abk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  %i.abl = load i64, ptr %i.wr, align 8, !tbaa !86
  %i.abm = add i64 %i.abl, 1
  call void @_ZdlPvm(ptr noundef %i.abj, i64 noundef %i.abm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344, %bb.cf
  %.pn100.pn = phi { ptr, i32 } [ %i.abb, %bb.cf ], [ %.pn100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344 ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.abn = load ptr, ptr %18, align 8, !tbaa !95  ; 2 uses
  %i.abo = icmp eq ptr %i.abn, %i.vo
  br i1 %i.abo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
  %i.abp = load i64, ptr %i.vo, align 8, !tbaa !86
  %i.abq = add i64 %i.abp, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %common.resume

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i353: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i289, %_ZNK10reflection4Type9base_typeEv.exit291
  %i.abr = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !97 ; 2 uses
  %.not.i.i354 = icmp eq i16 %i.abs, 0
  br i1 %.not.i.i354, label %_ZNK10reflection4Type9base_typeEv.exit355.thread, label %_ZNK10reflection4Type9base_typeEv.exit355

_ZNK10reflection4Type9base_typeEv.exit355:        ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i353
  %i.abt = zext i16 %i.abs to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.abt
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !86
  %i.abw = icmp eq i8 %i.abv, 17
  %i.abx = icmp ugt i16 %i.z, 6
  %or.cond = and i1 %i.abw, %i.abx
  br i1 %or.cond, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i359, label %_ZNK10reflection4Type9base_typeEv.exit355.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i359: ; preds = %_ZNK10reflection4Type9base_typeEv.exit355
  %i.aby = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.abz = load i16, ptr %i.aby, align 2, !tbaa !97 ; 2 uses
  %.not.i.i360 = icmp eq i16 %i.abz, 0
  br i1 %.not.i.i360, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i364, label %bb.ci

bb.ci:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i359
  %i.aca = zext i16 %i.abz to i64
  %i.acb = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aca
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !86
  %.fr1080 = freeze i8 %i.acc
  %47 = add i8 %.fr1080, -1
  %i.acd = icmp ult i8 %47, 12
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i364

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i364: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i359, %bb.ci
  %.fr.ph = phi i1 [ false, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i359 ], [ %i.acd, %bb.ci ]
  %i.ace = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.acf = load i16, ptr %i.ace, align 2, !tbaa !97 ; 2 uses
  %.not.i.i365 = icmp eq i16 %i.acf, 0
  br i1 %.not.i.i365, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i370, label %bb.cj

bb.cj:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i364
  %i.acg = zext i16 %i.acf to i64
  %i.ach = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.acg
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !86
  %i.acj = sext i8 %i.aci to i64
  %i.ack = and i64 %i.acj, 4294967295
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i370

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i370: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i364, %bb.cj
  %.ph = phi i64 [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i364 ], [ %i.ack, %bb.cj ]
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %.ph
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !64 ; 9 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aco = load i16, ptr %i.acn, align 2, !tbaa !97 ; 2 uses
  %.not.i.i371 = icmp eq i16 %i.aco, 0
  br i1 %.not.i.i371, label %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit374, label %_ZNK10reflection4Type7elementEv.exit372

_ZNK10reflection4Type7elementEv.exit372:          ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i370
  %i.acp = zext i16 %i.aco to i64
  %i.acq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.acp
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !86
  %switch.tableidx1479 = add i8 %i.acr, -1        ; 2 uses
  %i.acs = icmp ult i8 %switch.tableidx1479, 12
  br i1 %i.acs, label %switch.lookup1480, label %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit374

switch.lookup1480:                                ; preds = %_ZNK10reflection4Type7elementEv.exit372
  %i.act = zext nneg i8 %switch.tableidx1479 to i64
  %switch.gep1481 = getelementptr inbounds nuw i8, ptr @"switch.table._ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE.26", i64 %i.act
  %switch.load1482 = load i8, ptr %switch.gep1481, align 1
  %switch.ext1483 = zext i8 %switch.load1482 to i32
  br label %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit374

_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit374: ; preds = %_ZNK10reflection4Type7elementEv.exit372, %switch.lookup1480, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i370
  %.0.i373 = phi i32 [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i370 ], [ %switch.ext1483, %switch.lookup1480 ], [ 0, %_ZNK10reflection4Type7elementEv.exit372 ]
  %i.acu = icmp ugt i16 %i.z, 10
  br i1 %i.acu, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.lr.ph, label %_ZNK10reflection4Type9base_typeEv.exit355.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.lr.ph: ; preds = %_ZN11flatbuffersL13GetRegionTypeEN10reflection8BaseTypeE.exit374
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 10 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 9 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 10 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ade = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.adh = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.adi = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 6 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 6 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 6 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 6 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %20, i64 112 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 9 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 9 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 12 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 7 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ady = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 9 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 9 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 10 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 9 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aej = add i64 %i.acm, -1
  %i.aek = icmp ult i64 %i.acm, 10
  %i.ael = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  %i.aem = icmp ugt i64 %i.acm, 99
  %i.aen = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.aep = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.aet = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.aeu = getelementptr inbounds nuw i8, ptr %31, i64 88 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %31, i64 104 ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.aex = getelementptr inbounds nuw i8, ptr %31, i64 120 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %31, i64 136 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %31, i64 128
  %i.afa = getelementptr inbounds nuw i8, ptr %31, i64 152
  %i.afb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.afc = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.afd = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.afe = getelementptr inbounds nuw i8, ptr %32, i64 80
  %i.aff = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %32, i64 48
  %i.afh = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.afj = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.afl = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %33, i64 64 ; 4 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.afp = getelementptr inbounds nuw i8, ptr %33, i64 80
  %i.afq = getelementptr inbounds nuw i8, ptr %33, i64 88 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %33, i64 104 ; 4 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %33, i64 96
  %i.aft = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %33, i64 136 ; 4 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %33, i64 128
  %i.afw = getelementptr inbounds nuw i8, ptr %33, i64 152
  %i.afx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.afy = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.afz = getelementptr inbounds nuw i8, ptr %34, i64 80
  %i.aga = getelementptr inbounds nuw i8, ptr %34, i64 96 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.agc = getelementptr inbounds nuw i8, ptr %34, i64 64 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.age = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  br i1 %.fr.ph, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.us, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.us: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.lr.ph, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i375.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i375.us ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.lr.ph ] ; 3 uses
  %i.agf = phi ptr [ %i.awg, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i375.us ], [ %i.y, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.lr.ph ]
  %i.agg = phi ptr [ %i.awc, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i375.us ], [ %i.u, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.lr.ph ]
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 10
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !97 ; 2 uses
  %.not.i.i379.us = icmp eq i16 %i.agi, 0
  br i1 %.not.i.i379.us, label %_ZNK10reflection4Type9base_typeEv.exit355.thread, label %_ZNK10reflection4Type12fixed_lengthEv.exit.us

_ZNK10reflection4Type12fixed_lengthEv.exit.us:    ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i378.us
  %i.agj = zext i16 %i.agi to i64
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agj
  %i.agl = load i16, ptr %i.agk, align 2, !tbaa !97
  %i.agm = zext i16 %i.agl to i64
  %i.agn = icmp samesign ult i64 %indvars.iv, %i.agm
  br i1 %i.agn, label %bb.ck, label %_ZNK10reflection4Type9base_typeEv.exit355.thread

bb.ck:                                            ; preds = %_ZNK10reflection4Type12fixed_lengthEv.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store i32 0, ptr %20, align 8, !tbaa !83
  store ptr %i.adf, ptr %i.ade, align 8, !tbaa !84
  store i64 0, ptr %i.adg, align 8, !tbaa !85
  store i8 0, ptr %i.adf, align 8, !tbaa !86
  store ptr %i.adj, ptr %i.adi, align 8, !tbaa !84
  store i64 0, ptr %i.adk, align 8, !tbaa !85
  store i8 0, ptr %i.adj, align 8, !tbaa !86
  store ptr %i.adm, ptr %i.adl, align 8, !tbaa !84
  store i64 0, ptr %i.adn, align 8, !tbaa !85
  store i8 0, ptr %i.adm, align 8, !tbaa !86
  store i64 0, ptr %i.ado, align 8, !tbaa !87
  store i32 14, ptr %i.adh, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.ago = load ptr, ptr %0, align 8, !tbaa !712, !nonnull !67, !align !197 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !95, !noalias !732
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !85, !noalias !732 ; 3 uses
  store ptr %i.adp, ptr %22, align 8, !tbaa !84, !alias.scope !733
  store i64 0, ptr %i.adq, align 8, !tbaa !85, !alias.scope !733
  store i8 0, ptr %i.adp, align 8, !tbaa !86, !alias.scope !733
  %i.ags = add i64 %i.agr, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.ags)
          to label %bb.cl unwind label %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck
  %i.agt = load i64, ptr %i.adq, align 8, !tbaa !85, !alias.scope !733
  %i.agu = sub i64 4611686018427387903, %i.agt
  %i.agv = icmp ult i64 %i.agu, %i.agr
  br i1 %i.agv, label %.invoke.i.i386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i383.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i383.us: ; preds = %bb.cl
  %i.agw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %i.agp, i64 noundef %i.agr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i384.us unwind label %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i384.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i383.us
  %i.agx = load i64, ptr %i.adq, align 8, !tbaa !85, !alias.scope !733
  %i.agy = icmp eq i64 %i.agx, 4611686018427387903
  br i1 %i.agy, label %.invoke.i.i386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i385.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i385.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i384.us
  %i.agz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit390.us unwind label %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp ; 0 uses
end_hunk_7
