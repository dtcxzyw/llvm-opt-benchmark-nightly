Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN11flatbuffers6Parser11DeserializeEPKN10reflection6SchemaE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %.critedge177
  %i.aau = load i64, ptr %i.yq, align 8, !tbaa !81
  %i.aav = add i64 %i.aau, 1
  call void @_ZdlPvm(ptr noundef %i.aas, i64 noundef %i.aav) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %.critedge177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %_ZNK10reflection6Schema9fbs_filesEv.exit.thread

bb.cl:                                            ; preds = %.noexc.i.i350
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

bb.cm:                                            ; preds = %bb.cj, %bb.ch, %bb.cg, %bb.cf
  %i.aax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aay = load ptr, ptr %13, align 8, !tbaa !82  ; 2 uses
  %i.aaz = icmp eq ptr %i.aay, %i.yq
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.cm
  %i.aba = load i64, ptr %i.yq, align 8, !tbaa !81
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

bb.cn:                                            ; preds = %bb.ck
  %i.abc = load ptr, ptr %13, align 8, !tbaa !82  ; 2 uses
  %i.abd = icmp eq ptr %i.abc, %i.yq
  br i1 %i.abd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %bb.cn
  %i.abe = load i64, ptr %i.yq, align 8, !tbaa !81
  %i.abf = add i64 %i.abe, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.abf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %.sroa.0448.0 = getelementptr inbounds nuw i8, ptr %.sroa.0448.0596, i64 4 ; 2 uses
  %i.abg = load i32, ptr %1, align 4, !tbaa !221  ; 2 uses
  %i.abh = sext i32 %i.abg to i64
  %i.abi = sub nsw i64 0, %i.abh                  ; 2 uses
  %i.abj = getelementptr inbounds i8, ptr %1, i64 %i.abi ; 2 uses
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !254 ; 2 uses
  %i.abl = icmp ugt i16 %i.abk, 14
  call void @llvm.assume(i1 %i.abl)
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 14
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i345 = icmp ne i16 %i.abn, 0
  call void @llvm.assume(i1 %.not.i.i.i345)
  %i.abo = zext i16 %i.abn to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 %i.abo ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !221
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abr ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.abu = load i32, ptr %i.abs, align 4, !tbaa !523, !noalias !2319
  %i.abv = shl i32 %i.abu, 2
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abw
  %.not505 = icmp eq ptr %.sroa.0448.0, %i.abx
  br i1 %.not505, label %.critedge179, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i347, !llvm.loop !2294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356, %bb.cl
  %.pn149 = phi { ptr, i32 } [ %i.aaw, %bb.cl ], [ %i.aax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ], [ %i.aax, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.dt

.critedge179:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %_ZNK10reflection6Schema8servicesEv.exit343, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i339
  %i.aby = phi i16 [ %i.vi, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i339 ], [ %i.vi, %_ZNK10reflection6Schema8servicesEv.exit343 ], [ %i.abk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ] ; 2 uses
  %.pre-phi639 = phi i64 [ %i.vg, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i339 ], [ %i.vg, %_ZNK10reflection6Schema8servicesEv.exit343 ], [ %i.abi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ]
  %i.abz = phi i32 [ %i.ve, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i339 ], [ %i.ve, %_ZNK10reflection6Schema8servicesEv.exit343 ], [ %i.abg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ]
  %i.aca = getelementptr inbounds i8, ptr %1, i64 %.pre-phi639 ; 2 uses
  %i.acb = icmp ugt i16 %i.aby, 16
  br i1 %i.acb, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i362, label %_ZNK10reflection6Schema17advanced_featuresEv.exit.thread

_ZNK10reflection6Schema17advanced_featuresEv.exit.thread: ; preds = %.critedge175, %.critedge179
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i64 0, ptr %i.acc, align 8, !tbaa !322
  br label %_ZNK10reflection6Schema9fbs_filesEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i362: ; preds = %.critedge179
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !254 ; 2 uses
  %.not.i.i363 = icmp eq i16 %i.ace, 0
  br i1 %.not.i.i363, label %_ZNK10reflection6Schema17advanced_featuresEv.exit, label %bb.co

bb.co:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i362
  %i.acf = zext i16 %i.ace to i64
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 %i.acf
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !93
  %i.aci = and i64 %i.ach, 4294967295
  br label %_ZNK10reflection6Schema17advanced_featuresEv.exit

_ZNK10reflection6Schema17advanced_featuresEv.exit: ; preds = %bb.co, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i362
  %i.acj = phi i64 [ %i.aci, %bb.co ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i362 ]
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i64 %i.acj, ptr %i.ack, align 8, !tbaa !322
  %i.acl = icmp ugt i16 %i.aby, 18
  br i1 %i.acl, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i364, label %_ZNK10reflection6Schema9fbs_filesEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i364: ; preds = %_ZNK10reflection6Schema17advanced_featuresEv.exit
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aca, i64 18
  %i.acn = load i16, ptr %i.acm, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i365 = icmp eq i16 %i.acn, 0
  br i1 %.not.i.i.i365, label %_ZNK10reflection6Schema9fbs_filesEv.exit.thread, label %_ZNK10reflection6Schema9fbs_filesEv.exit368

_ZNK10reflection6Schema9fbs_filesEv.exit368:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i364
  %i.aco = zext i16 %i.acn to i64
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 %i.aco ; 2 uses
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !221
  %i.acr = zext i32 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acr ; 2 uses
  %.pre644 = load i32, ptr %i.acs, align 4, !tbaa !525, !noalias !2321
  %.mask765 = and i32 %.pre644, 1073741823
  %.not507603 = icmp eq i32 %.mask765, 0
  br i1 %.not507603, label %_ZNK10reflection6Schema9fbs_filesEv.exit.thread, label %.lr.ph605

.lr.ph605:                                        ; preds = %_ZNK10reflection6Schema9fbs_filesEv.exit368
  %.sroa.0442.0601 = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  %i.act = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.acv = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 9 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 7 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.adb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  br label %bb.cp

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit.loopexit: ; preds = %_ZN11flatbuffers12IncludedFileD2Ev.exit
  %.pre650 = load i32, ptr %1, align 4, !tbaa !221
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit.loopexit, %_ZNK10reflection10SchemaFile18included_filenamesEv.exit
  %i.adf = phi i32 [ %.pre650, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit.loopexit ], [ %i.adv, %_ZNK10reflection10SchemaFile18included_filenamesEv.exit ] ; 2 uses
  %.sroa.0442.0 = getelementptr inbounds nuw i8, ptr %.sroa.0442.0604, i64 4 ; 2 uses
  %i.adg = sext i32 %i.adf to i64
  %i.adh = sub nsw i64 0, %i.adg
  %i.adi = getelementptr inbounds i8, ptr %1, i64 %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 18
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i370 = icmp ne i16 %i.adk, 0
  call void @llvm.assume(i1 %.not.i.i.i370)
  %i.adl = zext i16 %i.adk to i64
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 %i.adl ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !221
  %i.ado = zext i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.ado ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 4
  %i.adr = load i32, ptr %i.adp, align 4, !tbaa !525, !noalias !2321
  %i.ads = shl i32 %i.adr, 2
  %i.adt = zext i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.adt
  %.not507 = icmp eq ptr %.sroa.0442.0, %i.adu
  br i1 %.not507, label %_ZNK10reflection6Schema9fbs_filesEv.exit.thread, label %bb.cp, !llvm.loop !2297

bb.cp:                                            ; preds = %.lr.ph605, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit
  %i.adv = phi i32 [ %i.abz, %.lr.ph605 ], [ %i.adf, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit ]
  %.sroa.0442.0604 = phi ptr [ %.sroa.0442.0601, %.lr.ph605 ], [ %.sroa.0442.0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit ] ; 7 uses
  %i.adw = load i32, ptr %.sroa.0442.0604, align 4, !tbaa !221
  %i.adx = zext i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.0442.0604, i64 %i.adx ; 5 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !221 ; 2 uses
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = sub nsw i64 0, %i.aea
  %i.aec = getelementptr inbounds i8, ptr %i.ady, i64 %i.aeb ; 2 uses
  %i.aed = load i16, ptr %i.aec, align 2, !tbaa !254
  %i.aee = icmp ugt i16 %i.aed, 6                 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 6
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !254 ; 5 uses
  br i1 %i.aee, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i372, label %._ZNK10reflection10SchemaFile18included_filenamesEv.exit_crit_edge

._ZNK10reflection10SchemaFile18included_filenamesEv.exit_crit_edge: ; preds = %bb.cp
  %.phi.trans.insert651 = zext i16 %i.aeg to i64
  %.phi.trans.insert652 = getelementptr inbounds nuw i8, ptr %i.ady, i64 %.phi.trans.insert651
  %.pre653 = load i32, ptr %.phi.trans.insert652, align 4, !tbaa !221
  br label %_ZNK10reflection10SchemaFile18included_filenamesEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i372: ; preds = %bb.cp
  %.not.i.i.i373 = icmp eq i16 %i.aeg, 0
  br i1 %.not.i.i.i373, label %_ZNK10reflection10SchemaFile18included_filenamesEv.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i372
  %i.aeh = zext i16 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.aeh ; 2 uses
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !221 ; 2 uses
  %i.aek = zext i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.aek
  br label %_ZNK10reflection10SchemaFile18included_filenamesEv.exit

_ZNK10reflection10SchemaFile18included_filenamesEv.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i372, %._ZNK10reflection10SchemaFile18included_filenamesEv.exit_crit_edge, %bb.cq
  %i.aem = phi i32 [ %i.aej, %bb.cq ], [ %.pre653, %._ZNK10reflection10SchemaFile18included_filenamesEv.exit_crit_edge ], [ %i.adz, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i372 ]
  %i.aen = phi ptr [ %i.ael, %bb.cq ], [ null, %._ZNK10reflection10SchemaFile18included_filenamesEv.exit_crit_edge ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i372 ]
  %.sroa.0438.0597 = getelementptr inbounds nuw i8, ptr %i.aen, i64 4 ; 2 uses
  call void @llvm.assume(i1 %i.aee)
  %.not.i.i.i375598 = icmp ne i16 %i.aeg, 0
  call void @llvm.assume(i1 %.not.i.i.i375598)
  %i.aeo = zext i16 %i.aeg to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.aeo
  %i.aeq = zext i32 %i.aem to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aeq ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  %i.aet = load i32, ptr %i.aer, align 4, !tbaa !504, !noalias !2322
  %i.aeu = shl i32 %i.aet, 2
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.aev
  %.not509599 = icmp eq ptr %.sroa.0438.0597, %i.aew
  br i1 %.not509599, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i369.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK10reflection10SchemaFile18included_filenamesEv.exit, %_ZN11flatbuffers12IncludedFileD2Ev.exit
  %.sroa.0438.0600 = phi ptr [ %.sroa.0438.0, %_ZN11flatbuffers12IncludedFileD2Ev.exit ], [ %.sroa.0438.0597, %_ZNK10reflection10SchemaFile18included_filenamesEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  store ptr %i.act, ptr %14, align 8, !tbaa !80
  store i64 0, ptr %i.acu, align 8, !tbaa !79
  store i8 0, ptr %i.act, align 8, !tbaa !81
  store ptr %i.acw, ptr %i.acv, align 8, !tbaa !80
  store i64 0, ptr %i.acx, align 8, !tbaa !79
  store i8 0, ptr %i.acw, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.aex = load i32, ptr %.sroa.0438.0600, align 4, !tbaa !221
  %i.aey = zext i32 %i.aex to i64
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0438.0600, i64 %i.aey ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 4 ; 2 uses
  %i.afb = load i32, ptr %i.aez, align 4, !tbaa !401, !noalias !2323 ; 3 uses
  %i.afc = zext i32 %i.afb to i64                 ; 2 uses
  store ptr %i.acy, ptr %15, align 8, !tbaa !80, !alias.scope !2323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !2323
  store i64 %i.afc, ptr %i.b, align 8, !tbaa !93, !noalias !2323
  %i.afd = icmp ugt i32 %i.afb, 15
  br i1 %i.afd, label %.noexc.i.i378, label %._crit_edge.i.i.i377

.noexc.i.i378:                                    ; preds = %.lr.ph
  %i.afe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc379 unwind label %bb.do ; 2 uses

.noexc379:                                        ; preds = %.noexc.i.i378
  store ptr %i.afe, ptr %15, align 8, !tbaa !82, !alias.scope !2323
  %i.aff = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !2323
  store i64 %i.aff, ptr %i.acy, align 8, !tbaa !81, !alias.scope !2323
  br label %._crit_edge.i.i.i377

._crit_edge.i.i.i377:                             ; preds = %.noexc379, %.lr.ph
  %i.afg = phi ptr [ %i.afe, %.noexc379 ], [ %i.acy, %.lr.ph ] ; 2 uses
  switch i32 %i.afb, label %bb.cs [
    i32 1, label %bb.cr
    i32 0, label %bb.ct
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i.i377
  %i.afh = load i8, ptr %i.afa, align 4, !tbaa !81, !noalias !2323
  store i8 %i.afh, ptr %i.afg, align 1, !tbaa !81
  br label %bb.ct

bb.cs:                                            ; preds = %._crit_edge.i.i.i377
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afg, ptr nonnull align 4 %i.afa, i64 %i.afc, i1 false)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i.i377
  %i.afi = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !2323 ; 2 uses
  store i64 %i.afi, ptr %i.acz, align 8, !tbaa !79, !alias.scope !2323
  %i.afj = load ptr, ptr %15, align 8, !tbaa !82, !alias.scope !2323
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afi
  store i8 0, ptr %i.afk, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !2323
  %i.afl = load ptr, ptr %i.acv, align 8, !tbaa !82 ; 6 uses
  %i.afm = icmp eq ptr %i.afl, %i.acw
  %i.afn = load ptr, ptr %15, align 8, !tbaa !82  ; 5 uses
  %i.afo = icmp eq ptr %i.afn, %i.acy             ; 2 uses
  br i1 %i.afm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i386: ; preds = %bb.ct
  br i1 %i.afo, label %bb.cu, label %.thread.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i381: ; preds = %bb.ct
  br i1 %i.afo, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i382

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i386
  %i.afp = load i64, ptr %i.acz, align 8, !tbaa !79 ; 3 uses
  %i.afq = icmp ult i64 %i.afp, 16
  call void @llvm.assume(i1 %i.afq)
  switch i64 %i.afp, label %bb.cw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i384
    i64 1, label %bb.cv
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.afr = load i8, ptr %i.afn, align 1, !tbaa !81
  store i8 %i.afr, ptr %i.afl, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i384

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afl, ptr align 1 %i.afn, i64 %i.afp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i384: ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.afs = load i64, ptr %i.acz, align 8, !tbaa !79 ; 2 uses
  store i64 %i.afs, ptr %i.acx, align 8, !tbaa !79
  %i.aft = load ptr, ptr %i.acv, align 8, !tbaa !82
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afs
  store i8 0, ptr %i.afu, align 1, !tbaa !81
  %.pre.i385 = load ptr, ptr %15, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit388

.thread.i387:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i386
  store ptr %i.afn, ptr %i.acv, align 8, !tbaa !82
  %i.afv = load <2 x i64>, ptr %i.acz, align 8, !tbaa !81
  store <2 x i64> %i.afv, ptr %i.acx, align 8, !tbaa !81
  br label %bb.cy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i382: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i381
  %i.afw = load i64, ptr %i.acw, align 8, !tbaa !81
  store ptr %i.afn, ptr %i.acv, align 8, !tbaa !82
  %i.afx = load <2 x i64>, ptr %i.acz, align 8, !tbaa !81
  store <2 x i64> %i.afx, ptr %i.acx, align 8, !tbaa !81
  %.not.i383 = icmp eq ptr %i.afl, null
  br i1 %.not.i383, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i382
  store ptr %i.afl, ptr %15, align 8, !tbaa !82
  store i64 %i.afw, ptr %i.acy, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit388

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i382, %.thread.i387
  store ptr %i.acy, ptr %15, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i384, %bb.cx, %bb.cy
  %i.afy = phi ptr [ %i.afl, %bb.cx ], [ %i.acy, %bb.cy ], [ %.pre.i385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i384 ]
  store i64 0, ptr %i.acz, align 8, !tbaa !79
  store i8 0, ptr %i.afy, align 1, !tbaa !81
  %i.afz = load ptr, ptr %15, align 8, !tbaa !82  ; 2 uses
  %i.aga = icmp eq ptr %i.afz, %i.acy
  br i1 %i.aga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit388
  %i.agb = load i64, ptr %i.acy, align 8, !tbaa !81
  %i.agc = add i64 %i.agb, 1
  call void @_ZdlPvm(ptr noundef %i.afz, i64 noundef %i.agc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.agd = load i32, ptr %.sroa.0442.0604, align 4, !tbaa !221
  %i.age = zext i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.0442.0604, i64 %i.age ; 3 uses
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !221
  %i.agh = sext i32 %i.agg to i64
  %i.agi = sub nsw i64 0, %i.agh
  %i.agj = getelementptr inbounds i8, ptr %i.agf, i64 %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  %i.agl = load i16, ptr %i.agk, align 2, !tbaa !254 ; 2 uses
  %.not.i.i.i393 = icmp ne i16 %i.agl, 0
  call void @llvm.assume(i1 %.not.i.i.i393)
  %i.agm = zext i16 %i.agl to i64
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agf, i64 %i.agm ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !221
  %i.agp = zext i32 %i.ago to i64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.agp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 4 ; 2 uses
  %i.ags = load i32, ptr %i.agq, align 4, !tbaa !401, !noalias !2324 ; 3 uses
  %i.agt = zext i32 %i.ags to i64                 ; 2 uses
  store ptr %i.adb, ptr %16, align 8, !tbaa !80, !alias.scope !2324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !2324
  store i64 %i.agt, ptr %i.a, align 8, !tbaa !93, !noalias !2324
  %i.agu = icmp ugt i32 %i.ags, 15
  br i1 %i.agu, label %.noexc.i.i395, label %._crit_edge.i.i.i394

.noexc.i.i395:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
  %i.agv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc396 unwind label %bb.dp ; 2 uses

.noexc396:                                        ; preds = %.noexc.i.i395
  store ptr %i.agv, ptr %16, align 8, !tbaa !82, !alias.scope !2324
  %i.agw = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !2324
  store i64 %i.agw, ptr %i.adb, align 8, !tbaa !81, !alias.scope !2324
  br label %._crit_edge.i.i.i394

._crit_edge.i.i.i394:                             ; preds = %.noexc396, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
  %i.agx = phi ptr [ %i.agv, %.noexc396 ], [ %i.adb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ] ; 2 uses
  switch i32 %i.ags, label %bb.da [
    i32 1, label %bb.cz
    i32 0, label %bb.db
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i394
  %i.agy = load i8, ptr %i.agr, align 4, !tbaa !81, !noalias !2324
  store i8 %i.agy, ptr %i.agx, align 1, !tbaa !81
  br label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agx, ptr nonnull align 4 %i.agr, i64 %i.agt, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i394
  %i.agz = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !2324 ; 2 uses
end_hunk_0
