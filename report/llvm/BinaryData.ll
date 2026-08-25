Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryData?download=true
begin_hunk_0_@_ZNK4llvm4bolt10BinaryData14getSectionNameEv
define dso_local { ptr, i64 } @_ZNK4llvm4bolt10BinaryData14getSectionNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.f, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm4bolt10BinaryData20getOutputSectionNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.f, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK4llvm4bolt10BinaryData16getOutputAddressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83
  %i.g = add i64 %i.f, %i.d
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK4llvm4bolt10BinaryData9getOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85
  %i.g = sub i64 %i.b, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm4bolt10BinaryData10setSectionERNS0_13BinarySectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(391) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData7isMovedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85
  %i.g = sub i64 %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83
  %.not = icmp ne i64 %i.g, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp ne ptr %i.k, %i.d
  %i.m = select i1 %.not, i1 true, i1 %i.l
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt10BinaryData5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt10BinaryData10printBriefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 32 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.2, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 40, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(88) %0) #16
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !90   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.r = icmp ult i64 %i.q, 12
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3, i64 noundef 12) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.n, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store ptr %i.u, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.v = icmp ult i64 %i.q, 8
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.4, i64 noundef 8) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.i:                                             ; preds = %bb.g
  store i64 2322296528114967151, ptr %i.n, align 1
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 4
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK4llvm4bolt10BinaryData7getNameEv.exit

_ZNK4llvm4bolt10BinaryData7getNameEv.exit:        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !42 ; 5 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm4bolt10BinaryData7getNameEv.exit
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %_ZNK4llvm4bolt10BinaryData7getNameEv.exit
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %i.ah, i64 %i.ai, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21, %bb.j, %bb.k, %bb.l
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 120), align 8, !tbaa !91, !range !18, !noundef !19
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8
  %i.av = icmp ugt i32 %i.au, 1
  %or.cond = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond, label %bb.m, label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 8
  br i1 %i.bc, label %bb.n, label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 10
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.5, i64 noundef 10) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.be, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false)
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

_ZN4llvm11raw_ostreamlsEPKc.exit27:               ; preds = %bb.o, %bb.p
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !97
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ugt i64 %i.bq, 8
  br i1 %i.br, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38, %_ZN4llvm11raw_ostreamlsEPKc.exit27
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.bv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.8, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.r:                                             ; preds = %._crit_edge
  store i8 41, ptr %i.bt, align 1
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit27, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38
  %i.by = phi i64 [ %i.dg, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit27 ]
  %.083 = phi i32 [ %i.df, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit27 ] ; 2 uses
  %i.bz = icmp eq i32 %.083, 1
  %.str.6..str.7 = select i1 %i.bz, ptr @.str.6, ptr @.str.7 ; 2 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult i64 %i.ce, 2
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.str.6..str.7, i64 noundef 2) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.t:                                             ; preds = %.lr.ph
  %i.ch = load i16, ptr %.str.6..str.7, align 1
  store i16 %i.ch, ptr %i.cb, align 1
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store ptr %i.cj, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

_ZN4llvm11raw_ostreamlsEPKc.exit34:               ; preds = %bb.s, %bb.t
  %.0.i.i33 = phi ptr [ %i.cg, %bb.s ], [ %1, %bb.t ] ; 3 uses
  %i.ck = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.by
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !38 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = and i32 %i.co, 4
  %.not.i35 = icmp eq i32 %i.cp, 0
  br i1 %.not.i35, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38, label %_ZNK4llvm8MCSymbol7getNameEv.exit

_ZNK4llvm8MCSymbol7getNameEv.exit:                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !42 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !86
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 32 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !90 ; 2 uses
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = icmp ugt i64 %i.ct, %i.da
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit
  %i.dc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i33, ptr noundef nonnull %i.cs, i64 noundef %i.ct) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38

bb.v:                                             ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit
  %.not.i36 = icmp eq i64 %i.ct, 0
  br i1 %.not.i36, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 1 %i.cs, i64 %i.ct, i1 false)
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !90
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ct
  store ptr %i.de, ptr %i.cw, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit38:    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34, %bb.u, %bb.v, %bb.w
  %i.df = add i32 %.083, 1                        ; 2 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = load ptr, ptr %i.aw, align 8, !tbaa !97
  %i.di = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = icmp ugt i64 %i.dm, %i.dg
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !99

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, %bb.r, %bb.q, %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !34
  %.not = icmp eq ptr %i.dp, null
  %.pre84 = load ptr, ptr %i.c, align 8, !tbaa !90 ; 3 uses
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit44, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %.pre84 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ult i64 %i.dt, 10
  br i1 %i.du, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.9, i64 noundef 10) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit41

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.pre84, ptr noundef nonnull align 1 dereferenceable(10) @.str.9, i64 10, i1 false)
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 10
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit41

_ZN4llvm11raw_ostreamlsEPKc.exit41:               ; preds = %bb.y, %bb.z
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !34 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(88) %i.dy, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit41
  %i.ef = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.8, i64 noundef 1) #16 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit44

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit41
  store i8 41, ptr %i.ed, align 1
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  store ptr %i.eh, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit44

_ZN4llvm11raw_ostreamlsEPKc.exit44:               ; preds = %bb.ab, %bb.aa, %_ZN4llvm11raw_ostreamlsEPKc.exit30
  %i.ei = phi ptr [ %i.eh, %bb.ab ], [ %.pre, %bb.aa ], [ %.pre84, %_ZN4llvm11raw_ostreamlsEPKc.exit30 ] ; 2 uses
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = icmp ult i64 %i.em, 4
  br i1 %i.en, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit44
  %i.eo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.10, i64 noundef 4) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit47

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit44
  store i32 2016419884, ptr %i.ei, align 1
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit47

_ZN4llvm11raw_ostreamlsEPKc.exit47:               ; preds = %bb.ac, %bb.ad
  %.0.i.i46 = phi ptr [ %i.eo, %bb.ac ], [ %1, %bb.ad ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !84
  %i.et = inttoptr i64 %i.es to ptr
  store ptr %i.et, ptr %2, align 8, !alias.scope !101
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.eu, align 8, !alias.scope !101
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 15, ptr %i.ev, align 8, !tbaa !104, !alias.scope !101
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ew, align 1, !tbaa !107, !alias.scope !101
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i46) #16
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !86
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 32 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !90 ; 2 uses
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp ult i64 %i.fd, 3
  br i1 %i.fe, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  %i.ff = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i46, ptr noundef nonnull @.str.11, i64 noundef 3) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fa, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.fg = load ptr, ptr %i.ez, align 8, !tbaa !90
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  store ptr %i.fh, ptr %i.ez, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

_ZN4llvm11raw_ostreamlsEPKc.exit50:               ; preds = %bb.ae, %bb.af
  %.0.i.i49 = phi ptr [ %i.ff, %bb.ae ], [ %.0.i.i46, %bb.af ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.fi = load i64, ptr %i.er, align 8, !tbaa !84
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !37
  %i.fl = add i64 %i.fk, %i.fi
  %i.fm = inttoptr i64 %i.fl to ptr
  store ptr %i.fm, ptr %3, align 8, !alias.scope !108
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.fn, align 8, !alias.scope !108
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 15, ptr %i.fo, align 8, !tbaa !104, !alias.scope !108
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.fp, align 1, !tbaa !107, !alias.scope !108
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i49) #16
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i49, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !86
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i49, i64 32 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !90 ; 2 uses
  %i.fu = icmp eq ptr %i.fr, %i.ft
  br i1 %i.fu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit50
  %i.fv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i49, ptr noundef nonnull @.str.12, i64 noundef 1) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit50
  store i8 47, ptr %i.ft, align 1
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !90
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

_ZN4llvm11raw_ostreamlsEPKc.exit53:               ; preds = %bb.ag, %bb.ah
  %.0.i.i52 = phi ptr [ %i.fv, %bb.ag ], [ %.0.i.i49, %bb.ah ]
  %i.fy = load i64, ptr %i.fj, align 8, !tbaa !37
  %i.fz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i52, i64 noundef %i.fy) #16 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !86
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 32 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !90 ; 2 uses
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53
  %i.gf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fz, ptr noundef nonnull @.str.12, i64 noundef 1) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

bb.aj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53
  store i8 47, ptr %i.gd, align 1
  %i.gg = load ptr, ptr %i.gc, align 8, !tbaa !90
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gh, ptr %i.gc, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

_ZN4llvm11raw_ostreamlsEPKc.exit56:               ; preds = %bb.ai, %bb.aj
  %.0.i.i55 = phi ptr [ %i.gf, %bb.ai ], [ %i.fz, %bb.aj ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gj = load i16, ptr %i.gi, align 8, !tbaa !111
  %i.gk = zext i16 %i.gj to i64
  %i.gl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i55, i64 noundef %i.gk) #16 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !86
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !90 ; 2 uses
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp ult i64 %i.gs, 3
  br i1 %i.gt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56
  %i.gu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gl, ptr noundef nonnull @.str.13, i64 noundef 3) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gp, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.gv = load ptr, ptr %i.go, align 8, !tbaa !90
end_hunk_0
begin_hunk_1_@_ZNK4llvm4bolt10BinaryData10printBriefERNS_11raw_ostreamE:bb.a
_ZN4llvm11raw_ostreamlsEPKc.exit59:               ; preds = %bb.ak, %bb.al
  %.0.i.i58 = phi ptr [ %i.gu, %bb.ak ], [ %i.gl, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !23
  %i.gz = zext i32 %i.gy to i64
  %i.ha = inttoptr i64 %i.gz to ptr
  store ptr %i.ha, ptr %4, align 8, !alias.scope !112
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.hb, align 8, !alias.scope !112
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 15, ptr %i.hc, align 8, !tbaa !104, !alias.scope !112
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.hd, align 1, !tbaa !107, !alias.scope !112
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i58) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.he = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.hf = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  %i.hh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.8, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  store i8 41, ptr %i.hf, align 1
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  store ptr %i.hj, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.am, %bb.an
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt10BinaryDataC2ERNS_8MCSymbolEmmtRNS0_13BinarySectionEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 67), (68, 88)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, i16 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(391) %5, i32 noundef %6) unnamed_addr #4 align 2 {
_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE9push_backEOS2_.exit:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm4bolt10BinaryDataE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr %5, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.d, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %3, ptr %i.e, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 %4, ptr %i.f, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 1, ptr %i.g, align 2, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %6, ptr %i.h, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %5, ptr %i.i, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !85
  %i.m = sub i64 %2, %i.l
  store i64 %i.m, ptr %i.j, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17 ; 3 uses
  store ptr %1, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !98
  store ptr %i.q, ptr %i.n, align 8, !tbaa !97
  store ptr %i.q, ptr %i.o, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt10BinaryDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm4bolt10BinaryDataE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18
  br label %_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EED2Ev.exit:  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt10BinaryDataD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm4bolt10BinaryDataE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm4bolt10BinaryDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18, !inline_history !117
  br label %_ZN4llvm4bolt10BinaryDataD2Ev.exit

_ZN4llvm4bolt10BinaryDataD2Ev.exit:               ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData11isJumpTableEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData8isObjectEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %0) #16
  %i.e = xor i1 %i.d, true
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !118, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !118, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #7

declare void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm8MCSymbolESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not60 = icmp eq ptr %2, %3
  br i1 %.not60, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !119

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre62 = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !38
  store ptr %i.u, ptr %i.h, align 8, !tbaa !38
  br label %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre62, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !97
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !119

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm8MCSymbolES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPN4llvm8MCSymbolES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !38
  br label %_ZSt13move_backwardIPPN4llvm8MCSymbolES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN4llvm8MCSymbolES3_ET0_T_S5_S4_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !119

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN4llvm8MCSymbolES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPN4llvm8MCSymbolES3_ET0_T_S5_S4_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !38
  store ptr %i.ag, ptr %1, align 8, !tbaa !38
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !119

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !38
  store ptr %i.an, ptr %i.h, align 8, !tbaa !38
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !97
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !119

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre61 = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !38
  br label %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit43

_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre61, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !97
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !119

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit43
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !38
  store ptr %i.ax, ptr %1, align 8, !tbaa !38
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !98    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #17
  br label %_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPN4llvm8MCSymbolESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !119

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !38
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !38
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !119

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load ptr, ptr %2, align 8, !tbaa !38
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !38
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !119

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit45
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.by = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !38
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i47 = icmp eq ptr %i.ay, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit46
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #18
  br label %_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm8MCSymbolES3_SaIS2_EET0_T_S6_S5_RT1_.exit46, %bb.ai
  store ptr %i.bk, ptr %0, align 8, !tbaa !98
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !97
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !116
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm8MCSymbolESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_BinaryData.cpp() #13 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL18PrintSymbolAliasesE, i32 noundef 0, i32 noundef 0) #16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 120), align 8, !tbaa !91
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4optsL18PrintSymbolAliasesE, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL18PrintSymbolAliasesE, ptr nonnull align 1 dereferenceable(14) @.str, i64 13) #16
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 32), align 8, !tbaa !120
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 40), align 8, !tbaa !121
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL18PrintSymbolAliasesE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL18PrintSymbolAliasesE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts12BoltCategoryE) #16
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL18PrintSymbolAliasesE) #16
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4optsL18PrintSymbolAliasesE, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{null}
!14 = !{!15, !17, i64 16}
!15 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !16, i64 0, !5, i64 8, !5, i64 12, !17, i64 16}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!15, !16, i64 0}
!21 = !{!22, !12, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!24, !5, i64 68}
!24 = !{!"_ZTSN4llvm4bolt10BinaryDataE", !25, i64 8, !26, i64 16, !31, i64 40, !32, i64 48, !32, i64 56, !33, i64 64, !17, i64 66, !5, i64 68, !31, i64 72, !32, i64 80}
!25 = !{!"p1 _ZTSN4llvm4bolt10BinaryDataE", !12, i64 0}
!26 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p2 _ZTSN4llvm8MCSymbolE", !16, i64 0}
!31 = !{!"p1 _ZTSN4llvm4bolt13BinarySectionE", !12, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!"short", !6, i64 0}
!34 = !{!24, !25, i64 8}
!35 = distinct !{null}
!36 = !{!30, !30, i64 0}
!37 = !{!24, !32, i64 56}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN4llvm8MCSymbolE", !12, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN4llvm14StringMapEntryINS_18MCSymbolTableValueEEE", !12, i64 0}
!42 = !{!43, !32, i64 0}
!43 = !{!"_ZTSN4llvm18StringMapEntryBaseE", !32, i64 0}
!44 = !{!24, !31, i64 40}
!45 = !{!46, !48, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !32, i64 8, !6, i64 16}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!48 = !{!"p1 omnipotent char", !12, i64 0}
!49 = !{!46, !32, i64 8}
!50 = !{!24, !31, i64 72}
!51 = !{!52, !32, i64 304}
!52 = !{!"_ZTSN4llvm4bolt13BinarySectionE", !53, i64 0, !46, i64 8, !54, i64 40, !56, i64 56, !32, i64 72, !32, i64 80, !32, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !17, i64 108, !57, i64 112, !57, i64 160, !66, i64 208, !71, i64 232, !76, i64 256, !17, i64 264, !46, i64 272, !32, i64 304, !32, i64 312, !32, i64 320, !56, i64 328, !32, i64 344, !46, i64 352, !5, i64 384, !17, i64 388, !17, i64 389, !17, i64 390}
!53 = !{!"p1 _ZTSN4llvm4bolt13BinaryContextE", !12, i64 0}
!54 = !{!"_ZTSN4llvm6object10SectionRefE", !6, i64 0, !55, i64 8}
!55 = !{!"p1 _ZTSN4llvm6object10ObjectFileE", !12, i64 0}
!56 = !{!"_ZTSN4llvm9StringRefE", !48, i64 0, !32, i64 8}
!57 = !{!"_ZTSSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE", !58, i64 0}
!58 = !{!"_ZTSSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE", !59, i64 0}
!59 = !{!"_ZTSNSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !60, i64 0, !62, i64 8}
!60 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIvEE", !61, i64 0}
!61 = !{!"_ZTSSt4lessIvE"}
!62 = !{!"_ZTSSt15_Rb_tree_header", !63, i64 0, !32, i64 32}
!63 = !{!"_ZTSSt18_Rb_tree_node_base", !64, i64 0, !65, i64 8, !65, i64 16, !65, i64 24}
!64 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!65 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!66 = !{!"_ZTSSt6vectorIN4llvm4bolt10RelocationESaIS2_EE", !67, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN4llvm4bolt10RelocationESaIS2_EE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN4llvm4bolt10RelocationESaIS2_EE12_Vector_implE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN4llvm4bolt10RelocationESaIS2_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!70 = !{!"p1 _ZTSN4llvm4bolt10RelocationE", !12, i64 0}
!71 = !{!"_ZTSSt6vectorIN4llvm4bolt13BinarySection11BinaryPatchESaIS3_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIN4llvm4bolt13BinarySection11BinaryPatchESaIS3_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN4llvm4bolt13BinarySection11BinaryPatchESaIS3_EE12_Vector_implE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN4llvm4bolt13BinarySection11BinaryPatchESaIS3_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTSN4llvm4bolt13BinarySection11BinaryPatchE", !12, i64 0}
!76 = !{!"_ZTSSt10unique_ptrIN4llvm4bolt13BinaryPatcherESt14default_deleteIS2_EE", !77, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm4bolt13BinaryPatcherESt14default_deleteIS2_ELb1ELb1EE", !78, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm4bolt13BinaryPatcherESt14default_deleteIS2_EE", !79, i64 0}
!79 = !{!"_ZTSSt5tupleIJPN4llvm4bolt13BinaryPatcherESt14default_deleteIS2_EEE", !80, i64 0}
!80 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm4bolt13BinaryPatcherESt14default_deleteIS2_EEE", !81, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm4bolt13BinaryPatcherELb0EE", !82, i64 0}
!82 = !{!"p1 _ZTSN4llvm4bolt13BinaryPatcherE", !12, i64 0}
!83 = !{!24, !32, i64 80}
!84 = !{!24, !32, i64 48}
!85 = !{!52, !32, i64 72}
!86 = !{!87, !48, i64 24}
!87 = !{!"_ZTSN4llvm11raw_ostreamE", !88, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !17, i64 40, !89, i64 44}
!88 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!89 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!90 = !{!87, !48, i64 32}
!91 = !{!92, !17, i64 0}
!92 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !17, i64 0, !93, i64 8}
!93 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !94, i64 0}
!94 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !95, i64 0}
!95 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !96, i64 0, !17, i64 8, !17, i64 9}
!96 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!97 = !{!29, !30, i64 8}
!98 = !{!29, !30, i64 0}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4llvm5Twine9utohexstrEm: argument 0"}
!103 = distinct !{!103, !"_ZN4llvm5Twine9utohexstrEm"}
!104 = !{!105, !106, i64 32}
!105 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !106, i64 32, !106, i64 33}
!106 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!107 = !{!105, !106, i64 33}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN4llvm5Twine9utohexstrEm: argument 0"}
!110 = distinct !{!110, !"_ZN4llvm5Twine9utohexstrEm"}
!111 = !{!24, !33, i64 64}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN4llvm5Twine9utohexstrEm: argument 0"}
!114 = distinct !{!114, !"_ZN4llvm5Twine9utohexstrEm"}
!115 = !{!24, !17, i64 66}
!116 = !{!29, !30, i64 16}
!117 = !{ptr @_ZN4llvm4bolt10BinaryDataD2Ev}
!118 = !{!95, !17, i64 9}
!119 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
