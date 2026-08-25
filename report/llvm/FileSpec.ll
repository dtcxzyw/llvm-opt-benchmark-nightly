Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FileSpec?download=true
inline.NumInlined: 567
inline.NumDeleted: 210
begin_hunk_0_@_ZNK12lldb_private8FileSpec10IsAbsoluteEv:bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = icmp eq i8 %i.h, 126
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !78
  store ptr %i.g, ptr %2, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = call noundef zeroext i1 @_ZN4llvm3sys4path11is_absoluteERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.o, label %bb.e, label %bb.f

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.p = load i8, ptr %i.a, align 8, !tbaa !68
  %i.q = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.q) #21
  br label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit

_ZN4llvm11SmallVectorIcLj64EED2Ev.exit:           ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit
  %.0.in = phi i8 [ %i.p, %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit ], [ %i.b, %bb.a ]
  %.0 = icmp eq i8 %.0.in, 1
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4llvm3sys4path11is_absoluteERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(34), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private8FileSpec12MakeAbsoluteERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvm::SmallString.0", align 8 ; 9 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68    ; 2 uses
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK12lldb_private8FileSpec10IsRelativeEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 64, ptr %i.e, align 8, !tbaa !19
  call void @_ZNK12lldb_private8FileSpec7GetPathERN4llvm15SmallVectorImplIcEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.f = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = icmp eq i8 %i.h, 126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  br i1 %i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !78
  store ptr %i.g, ptr %4, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = call noundef zeroext i1 @_ZN4llvm3sys4path11is_absoluteERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.o, label %bb.e, label %bb.f

.critedge.i.i:                                    ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.i, %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.p = load i8, ptr %i.a, align 8, !tbaa !68
  %i.q = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.q) #21
  br label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIcLj64EED2Ev.exit.i.i:       ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK12lldb_private8FileSpec10IsRelativeEv.exit

_ZNK12lldb_private8FileSpec10IsRelativeEv.exit:   ; preds = %bb.a, %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit.i.i
  %.0.in.i.i = phi i8 [ %i.p, %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit.i.i ], [ %i.b, %bb.a ]
  %.0.i.i.not = icmp eq i8 %.0.in.i.i, 1
  br i1 %.0.i.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK12lldb_private8FileSpec10IsRelativeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
  %i.s = load ptr, ptr %2, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !43
  call void @_ZN12lldb_private8FileSpec20PrependPathComponentEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, i64 %i.u)
  %i.v = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN12lldb_private8FileSpec20PrependPathComponentERKS0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.w, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #23
  br label %_ZN12lldb_private8FileSpec20PrependPathComponentERKS0_.exit

_ZN12lldb_private8FileSpec20PrependPathComponentERKS0_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZN12lldb_private8FileSpec20PrependPathComponentERKS0_.exit, %_ZNK12lldb_private8FileSpec10IsRelativeEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15format_providerIN12lldb_private8FileSpecEvE6formatERKS2_RNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %5 = alloca %"class.llvm::SmallString.0", align 8 ; 11 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !41
  %i.c = tail call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #21 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = tail call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #21 ; 8 uses
  %i.g = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.h = or i64 %i.f, %i.c
  %or.cond = icmp eq i64 %i.h, 0
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 7
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.8, i64 noundef 7) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.l, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  store ptr %i.s, ptr %i.k, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %3, 1
  br i1 %i.t, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit: ; preds = %bb.e
  %i.u = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.9, i64 1) #21
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %i.w = icmp eq i64 %i.f, 0                      ; 2 uses
  %spec.select = select i1 %i.w, i64 7, i64 %i.f  ; 4 uses
  %spec.select36 = select i1 %i.w, ptr @.str.8, ptr %i.e ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ugt i64 %spec.select, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %spec.select36, i64 noundef %spec.select) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %spec.select36, i64 %spec.select, i1 false)
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %spec.select
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread: ; preds = %bb.e, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  br i1 %i.g, label %bb.p, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 64, ptr %i.ak, align 8, !tbaa !19
  %i.al = icmp ugt i64 %i.c, 64
  br i1 %i.al, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm11SmallStringILj64EEC2ENS_9StringRefE.exit

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i: ; preds = %bb.i
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull %i.ai, i64 noundef %i.c, i64 noundef 1) #21
  %.pre8.pre.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !18
  %.pre = load ptr, ptr %5, align 8, !tbaa !15
  br label %_ZN4llvm11SmallStringILj64EEC2ENS_9StringRefE.exit

_ZN4llvm11SmallStringILj64EEC2ENS_9StringRefE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, %bb.i
  %i.am = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ %i.ai, %bb.i ]
  %.pre8.i.i4.i = phi i64 [ %.pre8.pre.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ 0, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.pre8.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.b, i64 %i.c, i1 false)
  %.pre.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.ao = add i64 %.pre.i.i.i, %i.c               ; 11 uses
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %switch.i.i.i = icmp ult i32 %i.aq, 2
  %.pre38 = load ptr, ptr %5, align 8             ; 46 uses
  br i1 %switch.i.i.i, label %_ZN12_GLOBAL__N_111DenormalizeERN4llvm15SmallVectorImplIcEENS0_3sys4path5StyleE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallStringILj64EEC2ENS_9StringRefE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre38, i64 %i.ao
  %.not7.i.i.i = icmp samesign eq i64 %i.ao, 0
  br i1 %.not7.i.i.i, label %_ZN12_GLOBAL__N_111DenormalizeERN4llvm15SmallVectorImplIcEENS0_3sys4path5StyleE.exit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %i.ao, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.ao, 32
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ao, 24
  %n.vec = and i64 %i.ao, -32                     ; 4 uses
  %i.at = getelementptr i8, ptr %.pre38, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue138, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue138 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %.pre38, i64 %index ; 3 uses
  %i.au = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.au, i64 1
  %i.av = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.av, i64 2
  %i.aw = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.aw, i64 3
  %i.ax = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.ax, i64 4
  %i.ay = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.ay, i64 5
  %i.az = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.az, i64 6
  %i.ba = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.ba, i64 7
  %i.bb = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.bb, i64 8
  %i.bc = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 9
  %i.bd = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.bd, i64 10
  %i.be = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.be, i64 11
  %i.bf = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.bf, i64 12
  %i.bg = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.bg, i64 13
  %i.bh = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.bh, i64 14
  %i.bi = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.bi, i64 15
  %i.bj = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.bj, i64 16
  %i.bk = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.bk, i64 17
  %i.bl = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.bl, i64 18
  %i.bm = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.bm, i64 19
  %i.bn = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.bn, i64 20
  %i.bo = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.bo, i64 21
  %i.bp = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.bp, i64 22
  %i.bq = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.bq, i64 23
  %i.br = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.br, i64 24
  %i.bs = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.bs, i64 25
  %i.bt = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.bt, i64 26
  %i.bu = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.bu, i64 27
  %i.bv = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.bv, i64 28
  %i.bw = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.bw, i64 29
  %i.bx = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.bx, i64 30
  %i.by = getelementptr i8, ptr %.pre38, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.by, i64 31
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load76 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !20
  %i.ca = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 16 uses
  %i.cb = icmp eq <16 x i8> %wide.load76, splat (i8 47) ; 16 uses
  %i.cc = extractelement <16 x i1> %i.ca, i64 0
  br i1 %i.cc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 92, ptr %next.gep, align 1, !tbaa !20
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cd = extractelement <16 x i1> %i.ca, i64 1
  br i1 %i.cd, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue
  store i8 92, ptr %next.gep45, align 1, !tbaa !20
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue
  %i.ce = extractelement <16 x i1> %i.ca, i64 2
  br i1 %i.ce, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  store i8 92, ptr %next.gep46, align 1, !tbaa !20
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.cf = extractelement <16 x i1> %i.ca, i64 3
  br i1 %i.cf, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  store i8 92, ptr %next.gep47, align 1, !tbaa !20
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.cg = extractelement <16 x i1> %i.ca, i64 4
  br i1 %i.cg, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  store i8 92, ptr %next.gep48, align 1, !tbaa !20
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.ch = extractelement <16 x i1> %i.ca, i64 5
  br i1 %i.ch, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  store i8 92, ptr %next.gep49, align 1, !tbaa !20
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.ci = extractelement <16 x i1> %i.ca, i64 6
  br i1 %i.ci, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  store i8 92, ptr %next.gep50, align 1, !tbaa !20
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.cj = extractelement <16 x i1> %i.ca, i64 7
  br i1 %i.cj, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  store i8 92, ptr %next.gep51, align 1, !tbaa !20
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.ck = extractelement <16 x i1> %i.ca, i64 8
  br i1 %i.ck, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  store i8 92, ptr %next.gep52, align 1, !tbaa !20
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %i.cl = extractelement <16 x i1> %i.ca, i64 9
  br i1 %i.cl, label %pred.store.if93, label %pred.store.continue94
end_hunk_0
