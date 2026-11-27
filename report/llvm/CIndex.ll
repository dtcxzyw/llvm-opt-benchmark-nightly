Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CIndex?download=true
inline.NumInlined: 13967
inline.NumDeleted: 7769
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clang_getCursorPrettyPrinted:bb.a
  %i.h = tail call { ptr, i32 } @_ZN5clang8cxstring11createEmptyEv() #38
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !1308
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !1309
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 128, ptr %i.k, align 8, !tbaa !1310
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.l, align 8, !tbaa !1382
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.m, align 8, !tbaa !1383
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.n, align 4, !tbaa !1384
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %2, ptr %i.p, align 8, !tbaa !1386
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #38
  %.not9 = icmp eq ptr %1, null
  br i1 %.not9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 17728
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = phi ptr [ %i.r, %bb.g ], [ %1, %bb.f ]
  call void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEjb(ptr noundef nonnull align 8 dereferenceable(33) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 0, i1 noundef zeroext false) #38
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !1389, !nonnull !88, !align !1043 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1308
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1309
  %i.x = call { ptr, i32 } @_ZN5clang8cxstring9createDupEN4llvm9StringRefE(ptr %i.u, i64 %i.w) #38
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.y = load ptr, ptr %2, align 8, !tbaa !1308   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.y) #38
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.aa = tail call { ptr, i32 } @_ZN5clang8cxstring11createEmptyEv() #38
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %bb.j, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.aa, %bb.j ], [ %i.x, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit ], [ %i.h, %bb.e ]
  ret { ptr, i32 } %.pn11
}

declare void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEjb(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @clang_getCursorDisplayName(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.clang::PrintingPolicy", align 8 ; 12 uses
  %2 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 23 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.clang::QualType", align 8   ; 8 uses
  %6 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %7 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 28 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.clang::QualType", align 8   ; 8 uses
  %10 = alloca %"class.llvm::SmallString.1454", align 8 ; 8 uses
  %11 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 13 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = add i32 %i.a, -40
  %or.cond.i = icmp ult i32 %i.b, -39
  %i.c = add i32 %i.a, -605
  %i.d = icmp ult i32 %i.c, -5
  %narrow.i.not = and i1 %or.cond.i, %i.d
  br i1 %narrow.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i32 } @clang_getCursorSpelling(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0)
  br label %bb.cc

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5clang8cxcursor13getCursorDeclE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 4 uses
  %.not84 = icmp eq ptr %i.f, null
  br i1 %.not84, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call { ptr, i32 } @_ZN5clang8cxstring11createEmptyEv() #38
  br label %bb.cc

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.h = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !1381
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, 127
  %.not = icmp eq i32 %i.l, 72
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1073 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi i32 [ %.pre, %bb.f ], [ %i.k, %bb.e ]
  %.0 = phi ptr [ %i.n, %bb.f ], [ %i.f, %bb.e ]  ; 13 uses
  %i.p = and i32 %i.o, 127                        ; 3 uses
  %i.q = add nsw i32 %i.p, -41
  %i.r = icmp ult i32 %i.q, -6
  br i1 %i.r, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !1308
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !1309
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1310
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.v, align 8, !tbaa !1382
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.w, align 8, !tbaa !1383
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.x, align 4, !tbaa !1384
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %2, ptr %i.z, align 8, !tbaa !1386
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #38
  call void @_ZNK5clang9NamedDecl9printNameERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %.0, ptr noundef nonnull align 8 dereferenceable(48) %3) #38
  %i.aa = call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %.0) #38
  %.not87 = icmp eq ptr %i.aa, null
  br i1 %.not87, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1242
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1243 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ult i64 %i.ah, 2
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.25, i64 noundef 2) #38 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.k:                                             ; preds = %bb.i
  store i16 15932, ptr %i.ae, align 1
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !1243
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !1243
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.k, %bb.j, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1242
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 15 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1243 ; 2 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.26, i64 noundef 1) #38 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 40, ptr %i.ap, align 1
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !1243
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !1243
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

_ZN4llvm11raw_ostreamlsEPKc.exit103:              ; preds = %bb.l, %bb.m
  %i.au = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.0) #38 ; 3 uses
  %.not88176 = icmp eq i32 %i.au, 0
  br i1 %.not88176, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit103
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 120 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ay = zext i32 %i.au to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !2109
  %phi.call.peel = load ptr, ptr %i.az, align 8, !tbaa !1131
  %i.ba = getelementptr inbounds nuw i8, ptr %phi.call.peel, i64 48
  %.sroa.0.0.copyload.i.peel = load i64, ptr %i.ba, align 8, !tbaa !82
  store i64 %.sroa.0.0.copyload.i.peel, ptr %5, align 8
  call void @_ZNK5clang8QualType11getAsStringB5cxx11ERKNS_14PrintingPolicyE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #38
  %i.bb = load ptr, ptr %4, align 8, !tbaa !81
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !1231
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.bb, i64 noundef %i.bc) #38 ; 0 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !81    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ax
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.n
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !82
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.n
  %12 = load i64, ptr %i.aw, align 8, !tbaa !1231
  %13 = icmp ult i64 %12, 16
  call void @llvm.assume(i1 %13)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %.not88.peel = icmp eq i32 %i.au, 1
  br i1 %.not88.peel, label %._crit_edge, label %.split70

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZN4llvm11raw_ostreamlsEPKc.exit103
  %i.bi = call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isVariadicEv(ptr noundef nonnull align 8 dereferenceable(168) %.0) #38
  br i1 %i.bi, label %bb.r, label %_ZN4llvm11raw_ostreamlsEPKc.exit112

.split70:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !1242
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !1243 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.split70
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.8, i64 noundef 2) #38 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %.split70
  store i16 8236, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %i.ao, align 8, !tbaa !1243
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store ptr %i.br, ptr %i.ao, align 8, !tbaa !1243
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bs = load ptr, ptr %i.av, align 8, !tbaa !2109
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %phi.call = load ptr, ptr %i.bt, align 8, !tbaa !1131
  %i.bu = getelementptr inbounds nuw i8, ptr %phi.call, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.bu, align 8, !tbaa !82
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  call void @_ZNK5clang8QualType11getAsStringB5cxx11ERKNS_14PrintingPolicyE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #38
  %i.bv = load ptr, ptr %4, align 8, !tbaa !81
  %i.bw = load i64, ptr %i.aw, align 8, !tbaa !1231
  %i.bx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.bv, i64 noundef %i.bw) #38 ; 0 uses
  %i.by = load ptr, ptr %4, align 8, !tbaa !81    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ax
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ca = load i64, ptr %i.ax, align 8, !tbaa !82
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not88 = icmp eq i64 %indvars.iv.next, %i.ay
  br i1 %.not88, label %._crit_edge, label %.split70, !llvm.loop !2098

bb.r:                                             ; preds = %._crit_edge
  %i.cc = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.0) #38
  %.not89 = icmp eq i32 %i.cc, 0
  %.pre188 = load ptr, ptr %i.ao, align 8, !tbaa !1243 ; 3 uses
  br i1 %.not89, label %_ZN4llvm11raw_ostreamlsEPKc.exit109, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !1242
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.pre188 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 2
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.8, i64 noundef 2) #38 ; 0 uses
  %.pre187 = load ptr, ptr %i.ao, align 8, !tbaa !1243
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit109

bb.u:                                             ; preds = %bb.s
  store i16 8236, ptr %.pre188, align 1
  %i.cj = load ptr, ptr %i.ao, align 8, !tbaa !1243
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  store ptr %i.ck, ptr %i.ao, align 8, !tbaa !1243
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit109

_ZN4llvm11raw_ostreamlsEPKc.exit109:              ; preds = %bb.u, %bb.t, %bb.r
  %i.cl = phi ptr [ %i.ck, %bb.u ], [ %.pre187, %bb.t ], [ %.pre188, %bb.r ] ; 2 uses
  %i.cm = load ptr, ptr %i.am, align 8, !tbaa !1242
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult i64 %i.cp, 3
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit109
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.27, i64 noundef 3) #38 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit112

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cl, ptr noundef nonnull align 1 dereferenceable(3) @.str.27, i64 3, i1 false)
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !1243
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  store ptr %i.ct, ptr %i.ao, align 8, !tbaa !1243
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit112

_ZN4llvm11raw_ostreamlsEPKc.exit112:              ; preds = %bb.w, %bb.v, %._crit_edge
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !1242
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !1243 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit112
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.28, i64 noundef 1) #38 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit112
  store i8 41, ptr %i.cv, align 1
  %i.cy = load ptr, ptr %i.ao, align 8, !tbaa !1243
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.cz, ptr %i.ao, align 8, !tbaa !1243
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

_ZN4llvm11raw_ostreamlsEPKc.exit115:              ; preds = %bb.x, %bb.y
  %i.da = load ptr, ptr %i.z, align 8, !tbaa !1389, !nonnull !88, !align !1043 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1308
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !1309
  %i.de = call { ptr, i32 } @_ZN5clang8cxstring9createDupEN4llvm9StringRefE(ptr %i.db, i64 %i.dd) #38
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.df = load ptr, ptr %2, align 8, !tbaa !1308  ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.s
  br i1 %i.dg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115
  call void @free(ptr noundef %i.df) #38
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN4llvm11raw_ostreamlsEPKc.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.cb

bb.ab:                                            ; preds = %bb.g
  %.not210 = icmp eq i32 %i.p, 73
  br i1 %.not210, label %bb.ac, label %.thread158

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.dh, ptr %6, align 8, !tbaa !1308
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.di, align 8, !tbaa !1309
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.dj, align 8, !tbaa !1310
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 2, ptr %i.dk, align 8, !tbaa !1382
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.dl, align 8, !tbaa !1383
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 1, ptr %i.dm, align 4, !tbaa !1384
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %6, ptr %i.do, align 8, !tbaa !1386
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #38
  call void @_ZNK5clang9NamedDecl9printNameERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %.0, ptr noundef nonnull align 8 dereferenceable(48) %7) #38
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 11 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1242
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 33 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1243 ; 2 uses
  %i.dt = icmp eq ptr %i.dq, %i.ds
  br i1 %i.dt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.du = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.29, i64 noundef 1) #38 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit119

bb.ae:                                            ; preds = %bb.ac
  store i8 60, ptr %i.ds, align 1
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !1243
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store ptr %i.dw, ptr %i.dr, align 8, !tbaa !1243
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit119

_ZN4llvm11raw_ostreamlsEPKc.exit119:              ; preds = %bb.ad, %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1072 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.ea, 536870911                ; 3 uses
  %.not91178 = icmp eq i32 %i.eb, 0
  br i1 %.not91178, label %._crit_edge181, label %.lr.ph180

.lr.ph180:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit119
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
end_hunk_0
