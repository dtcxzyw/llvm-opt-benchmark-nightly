Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLibraryInfoEmitter?download=true
inline.NumInlined: 851
inline.NumDeleted: 431
begin_hunk_0_@_ZN4llvm12IfDefEmitterC2ERNS_11raw_ostreamENS_9StringRefEb:bb.a
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.u, %bb.t, %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.bw = load ptr, ptr %i.r, align 8, !tbaa !65  ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.by = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.15, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  store i8 10, ptr %i.bw, align 1
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %i.r, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

_ZN4llvm11raw_ostreamlsEPKc.exit23:               ; preds = %bb.v, %bb.w
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12IfDefEmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183, !nonnull !62, !align !63 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull @.str.15, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.f, align 1
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !92, !range !82, !noundef !62
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !183, !nonnull !62, !align !63 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 7
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull @.str.16, i64 noundef 7) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.r, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false)
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  store ptr %i.y, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3

_ZN4llvm11raw_ostreamlsEPKc.exit3:                ; preds = %bb.e, %bb.f
  %.0.i.i2 = phi ptr [ %i.w, %bb.e ], [ %i.n, %bb.f ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i2, ptr noundef %i.z, i64 noundef %i.ab) #19 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3
  store i8 10, ptr %i.ag, align 1
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.h, %bb.g, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !183, !nonnull !62, !align !63 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ult i64 %i.as, 10
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %i.au = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull @.str.18, i64 noundef 10) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ap, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 10, i1 false)
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store ptr %i.aw, ptr %i.ao, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.i, %bb.j
  %.0.i.i8 = phi ptr [ %i.au, %bb.i ], [ %i.al, %bb.j ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, ptr noundef %i.ax, i64 noundef %i.az) #19 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65 ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 2
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.bj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull @.str.19, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  store i16 2570, ptr %i.be, align 1
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.k, %bb.l
  %i.bm = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !17
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm19StringToOffsetTable20GetOrAddStringOffsetENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(74), ptr, i64) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #2

declare void @_ZNK4llvm19StringToOffsetTable18EmitStringTableDefERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(74), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE3addERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::vector<llvm::StringRef>, std::pair<const std::vector<llvm::StringRef>, unsigned int>, std::_Select1st<std::pair<const std::vector<llvm::StringRef>, unsigned int>>, llvm::SequenceToOffsetTable<std::vector<llvm::StringRef>>::SeqLess>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair", align 8        ; 13 uses
  %i.a = tail call ptr @_ZNSt8_Rb_treeISt6vectorIN4llvm9StringRefESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE11lower_boundERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %..critedge_crit_edge, label %bb.b

..critedge_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81 ; 2 uses
  %.pre38 = load ptr, ptr %1, align 8, !tbaa !79  ; 2 uses
  %.pre41 = ptrtoint ptr %.pre to i64
  %.pre42 = ptrtoint ptr %.pre38 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !79     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not.i = icmp ugt i64 %i.i, %i.o
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not6.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not6.i.i.i.i.i, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.r, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %i.q, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !67
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -8
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i3.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !68
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i, 0
  br i1 %i.s, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i:      ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i.i.i.i, ptr %.sroa.0.0.copyload.i.i3.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i)
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i, label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, %bb.d
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !184

.critedge:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %..critedge_crit_edge, %bb.b
  %.pre-phi45 = phi i64 [ %.pre44, %..critedge_crit_edge ], [ %i.i, %bb.b ], [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i ] ; 4 uses
  %4 = phi ptr [ %.pre38, %..critedge_crit_edge ], [ %i.f, %bb.b ], [ %i.f, %.lr.ph.i.i.i.i.i ], [ %i.f, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i ]
  %5 = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.e, %bb.b ], [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.e, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i9 = icmp eq ptr %5, %4
  br i1 %.not.i.i.i.i.i9, label %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.thread, label %bb.e

_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.thread: ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr null, i64 %.pre-phi45
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %i.w, ptr %i.x, align 8, !tbaa !80
  br label %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjEC2IRS5_jTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

bb.e:                                             ; preds = %.critedge
  %i.y = icmp ugt i64 %.pre-phi45, 9223372036854775792
  br i1 %i.y, label %bb.f, label %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i, !prof !93

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %bb.e
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi45) #21 ; 4 uses
  %.pre39 = load ptr, ptr %1, align 8, !tbaa !83  ; 2 uses
  %.pre40 = load ptr, ptr %i.u, align 8, !tbaa !83 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.pre-phi45
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !80
  %.not7.i.i.i.i.i.i = icmp eq ptr %.pre39, %.pre40
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjEC2IRS5_jTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.pre39, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !94
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.ad, %.pre40
  br i1 %.not.i.i.i.i.i.i10, label %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjEC2IRS5_jTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjEC2IRS5_jTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.thread, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i
  %i.af = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.v, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.aa, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i ], [ null, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %0, ptr %2, align 8, !tbaa !186
  %i.ai = call { ptr, ptr } @_ZNSt8_Rb_treeISt6vectorIN4llvm9StringRefESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %i.a, ptr noundef nonnull align 8 dereferenceable(28) %3) ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE6insertESt23_Rb_tree_const_iteratorISC_EOSC_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjEC2IRS5_jTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.al = call ptr @_ZNSt8_Rb_treeISt6vectorIN4llvm9StringRefESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE10_M_insert_IS7_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSM_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE6insertESt23_Rb_tree_const_iteratorISC_EOSC_.exit

_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE6insertESt23_Rb_tree_const_iteratorISC_EOSC_.exit: ; preds = %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjEC2IRS5_jTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit, %bb.g
  %.sroa.08.0.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.aj, %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjEC2IRS5_jTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.am = load ptr, ptr %3, align 8, !tbaa !79    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE6insertESt23_Rb_tree_const_iteratorISC_EOSC_.exit
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !80
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjED2Ev.exit

_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjED2Ev.exit: ; preds = %_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE6insertESt23_Rb_tree_const_iteratorISC_EOSC_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %.not35 = icmp eq ptr %.sroa.08.0.i.i.i, %i.as
  br i1 %.not35, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjED2Ev.exit
  %i.at = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.08.0.i.i.i) #22 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81 ; 3 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !79 ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !81  ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !79
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %.not.i11 = icmp ugt i64 %i.ba, %i.bf
  br i1 %.not.i11, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not6.i.i.i.i.i12 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not6.i.i.i.i.i12, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit26, label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %bb.j, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i24
  %.sroa.0.0.i.i.i.i14 = phi ptr [ %i.bi, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i24 ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bg = phi ptr [ %i.bh, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i24 ], [ %i.aw, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i15 = load ptr, ptr %i.bh, align 8, !tbaa !67
  %.sroa.22.0..sroa_idx.i.i.i.i.i16 = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %.sroa.22.0.copyload.i.i.i.i.i17 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i16, align 8, !tbaa !68 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i14, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i3.i.i.i18 = load ptr, ptr %i.bi, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i.i.i.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i14, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i20 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i19, align 8, !tbaa !68
  %.not.i.i.i.i.i.i21 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i17, %.sroa.2.0.copyload.i.i.i.i.i20
  br i1 %.not.i.i.i.i.i.i21, label %bb.k, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.bj = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i17, 0
  br i1 %i.bj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i24, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i22

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i22:    ; preds = %bb.k
  %bcmp.i.i.i.i.i.i23 = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i.i.i.i15, ptr %.sroa.0.0.copyload.i.i3.i.i.i18, i64 %.sroa.22.0.copyload.i.i.i.i.i17)
  %i.bk = icmp eq i32 %bcmp.i.i.i.i.i.i23, 0
  br i1 %i.bk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i24, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i24: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i22, %bb.k
  %.not.i.i.i.i.i25 = icmp eq ptr %i.bh, %i.ax
  br i1 %.not.i.i.i.i.i25, label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit26, label %.lr.ph.i.i.i.i.i13, !llvm.loop !184

_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit26: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i24, %bb.j
  %i.bl = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #19 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !79 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !80
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #20
  br label %_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit26, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 64) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !76
  %i.bv = add i64 %i.bu, -1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !76
  br label %_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit

_ZN4llvm21SequenceToOffsetTableISt6vectorINS_9StringRefESaIS2_EESt4lessIS2_EE8isSuffixERKS4_S9_.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i22, %.lr.ph.i.i.i.i.i13, %bb.i, %_ZNSt4pairIKSt6vectorIN4llvm9StringRefESaIS2_EEjED2Ev.exit, %bb.c, %_ZNSt3mapISt6vectorIN4llvm9StringRefESaIS2_EEjNS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaISt4pairIKS4_jEEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK12_GLOBAL__N_124TargetLibraryInfoEmitter35emitTargetLibraryInfoSignatureTableERN4llvm11raw_ostreamEENK3$_2clEPKNS1_6RecordE"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull %1) unnamed_addr #9 align 2 {
_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i:
  %i.a = tail call noundef ptr @_ZNK4llvm6Record18getValueAsListInitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.46, i64 13) #19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !198
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = shl nuw nsw i64 %i.e, 4
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 8 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !79
  store ptr %i.i, ptr %i.g, align 8, !tbaa !81
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !80
  %i.k = tail call noundef ptr @_ZNK4llvm6Record21getValueAsOptionalDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.47, i64 10) #19 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.m, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !67
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.o = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.n, %bb.a ]
  %i.p = load i32, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31
  %i.q = phi ptr [ %i.an, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31 ], [ %i.i, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.r = phi ptr [ %i.ao, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31 ], [ %i.j, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.s = phi ptr [ %i.ap, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31 ], [ %i.o, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.013 = phi i32 [ %i.aq, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31 ], [ 0, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.t = tail call noundef ptr @_ZNK4llvm8ListInit18getElementAsRecordEj(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %.013) #19
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %i.v, align 8, !tbaa !67 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.2.0.copyload.i.i15 = load i64, ptr %.sroa.2.0..sroa_idx.i.i14, align 8, !tbaa !68 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %.sroa.0.0.copyload.i.i13, ptr %i.s, align 8, !tbaa !67
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.2.0.copyload.i.i15, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31

bb.c:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.d, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i19

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #23
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i19: ; preds = %bb.c
  %i.ab = ashr exact i64 %i.z, 4                  ; 3 uses
  %.sroa.speculated.i.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i20, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %i.af = select i1 %i.ad, i64 576460752303423487, i64 %i.ae ; 3 uses
  %.not.i.i.i.i21 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i21)
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i13, ptr %i.ai, align 8, !tbaa !67
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.2.0.copyload.i.i15, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !68
  %.not10.i.i.i.i.i.i22 = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i.i.i22, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i30, label %.lr.ph.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i23:                             ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i19, %.lr.ph.i.i.i.i.i.i23
  %.012.i.i.i.i.i.i24 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i23 ], [ %i.ah, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i19 ] ; 2 uses
  %.0911.i.i.i.i.i.i25 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i23 ], [ %i.q, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i19 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i25, i64 16, i1 false), !tbaa.struct !94, !alias.scope !199
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i25, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i24, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.aj, %i.r
  br i1 %.not.i.i.i.i.i.i26, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i30, label %.lr.ph.i.i.i.i.i.i23, !llvm.loop !190

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i23, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i19
  %.0.lcssa.i.i.i.i.i.i28 = phi ptr [ %i.ah, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i19 ], [ %i.ak, %.lr.ph.i.i.i.i.i.i23 ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i28, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.z) #20
  store ptr %i.ah, ptr %0, align 8, !tbaa !79
  store ptr %i.al, ptr %i.g, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !80
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31: ; preds = %bb.b, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i30
  %i.an = phi ptr [ %i.q, %bb.b ], [ %i.ah, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i30 ]
  %i.ao = phi ptr [ %i.r, %bb.b ], [ %i.am, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i30 ]
  %i.ap = phi ptr [ %i.w, %bb.b ], [ %i.al, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i30 ]
  %i.aq = add nuw i32 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !191

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit31, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPPKN4llvm6RecordElN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_124TargetLibraryInfoEmitter35emitTargetLibraryInfoSignatureTableERNS0_11raw_ostreamEE3$_0EEEvT_SE_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPPKN4llvm6RecordEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_124TargetLibraryInfoEmitter35emitTargetLibraryInfoSignatureTableERNS0_11raw_ostreamEE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
end_hunk_0
