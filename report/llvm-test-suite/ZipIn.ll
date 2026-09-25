Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipIn?download=true
inline.NumInlined: 215
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE:bb.a
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.o, %bb.n, %bb.e, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit, %bb.c, %bb.j, %bb.a, %bb.s
  %.3 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 1, %bb.j ], [ 0, %bb.e ], [ 1, %bb.s ], [ %i.ae, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit ], [ %spec.select36, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) initializes((177, 178)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [42 x i8], align 16               ; 17 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 1, ptr %i.d, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 42, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.f, align 4, !tbaa !50
  call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.h, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.i = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !50
  call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.j = load i8, ptr %i.b, align 16, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 %i.j, ptr %i.k, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 %i.m, ptr %i.n, align 1, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.p = load i8, ptr %i.o, align 2, !tbaa !34
  store i8 %i.p, ptr %1, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load <2 x i16>, ptr %i.t, align 4, !tbaa !36
  store <2 x i16> %i.v, ptr %i.u, align 2, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load <2 x i32>, ptr %i.w, align 8, !tbaa !10
  store <2 x i32> %i.y, ptr %i.x, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.z, align 16, !tbaa !10
  %i.ac = zext <2 x i32> %i.ab to <2 x i64>
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !36 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !36
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  store i32 %i.al, ptr %i.c, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.an = load i16, ptr %i.am, align 16, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 82
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.aq = load i32, ptr %i.ap, align 2, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.at = load i32, ptr %i.as, align 2, !tbaa !10
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !78
  %i.aw = zext i16 %i.ae to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE(ptr noundef nonnull align 8 dereferenceable(138) %0, i32 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = zext i16 %i.ag to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj(ptr noundef nonnull align 8 dereferenceable(138) %0, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
  %i.bb = phi i32 [ %.pre, %bb.d ], [ %i.al, %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit ]
  %.not24 = icmp eq i32 %i.bb, 0
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 5, ptr %i.bc, align 4, !tbaa !50
  call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.be = zext i16 %i.ai to i32
  call void @_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i32 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE(ptr noundef nonnull align 8 dereferenceable(138) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [56 x i8], align 16               ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %1, i32 noundef 0, ptr noundef null), !inline_history !79 ; 2 uses
  %.not.not = icmp eq i32 %i.g, 0
  br i1 %.not.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.h = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 56, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.i, align 4, !tbaa !50
  call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit: ; preds = %bb.b
  %i.j = load i32, ptr %i.a, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit
  %i.l = load i32, ptr %i.b, align 16, !tbaa !10
  %i.m = load i32, ptr @_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE, align 4, !tbaa !10
  %.not8 = icmp eq i32 %i.l, %i.m
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load <2 x i64>, ptr %i.n, align 8, !tbaa !38
  store <2 x i64> %i.o, ptr %2, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit, %bb.e
  %.1 = phi i32 [ 1, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit ], [ 0, %bb.e ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.g, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [56 x i8], align 16               ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [56 x i8], align 16               ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.g = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.f) ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %bb.v

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.a
  %i.l = call noalias noundef nonnull dereferenceable(65578) ptr @_Znam(i64 noundef 65578) #20 ; 4 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !38   ; 3 uses
  %i.n = call i64 @llvm.umin.i64(i64 %i.m, i64 65578) ; 4 uses
  %i.o = trunc nuw nsw i64 %i.n to i32            ; 2 uses
  %i.p = icmp ult i64 %i.m, 22
  br i1 %i.p, label %_ZN7CBufferIhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.q = sub nuw i64 %i.m, %i.n                   ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.q, i32 noundef 0, ptr noundef nonnull %i.s)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i32 %i.w, 0
  br i1 %.not66, label %bb.e, label %_ZN7CBufferIhED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit87

bb.e:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.s, align 8, !tbaa !30
  %.not67 = icmp eq i64 %i.y, %i.q
  br i1 %.not67, label %bb.f, label %_ZN7CBufferIhED2Ev.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.z = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.l, i32 noundef %i.o, ptr noundef nonnull %i.e)
          to label %.noexc72 unwind label %bb.i

.noexc72:                                         ; preds = %bb.f
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc72
  %i.aa = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.aa, align 4, !tbaa !50
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.noexc73 unwind label %bb.i

.noexc73:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc72
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !10
  %i.ac = icmp eq i32 %i.ab, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br i1 %i.ac, label %.lr.ph, label %_ZN7CBufferIhED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit87

.lr.ph:                                           ; preds = %bb.h
  %2 = add nuw nsw i64 %i.n, 4294967274
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %3 = and i64 %2, 4294967295
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv ; 6 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10
  %i.ah = load i32, ptr @_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE, align 4, !tbaa !10
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp samesign ugt i64 %indvars.iv, 19
  br i1 %i.aj, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = load i32, ptr @_ZN8NArchive4NZip10NSignature28kZip64EndOfCentralDirLocatorE, align 4, !tbaa !10
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 -12
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !38 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.ap, i32 noundef 0, ptr noundef null)
          to label %.noexc74 unwind label %.loopexit109, !inline_history !121

.noexc74:                                         ; preds = %bb.m
  %.not.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.not.i, label %bb.n, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread

bb.n:                                             ; preds = %.noexc74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.av = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.d, i32 noundef 56, ptr noundef nonnull %i.c)
          to label %.noexc75 unwind label %.loopexit109

.noexc75:                                         ; preds = %bb.n
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %.invoke

.invoke:                                          ; preds = %.noexc75, %.noexc84
  %i.aw = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.aw, align 4, !tbaa !50
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %.noexc75
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ay = icmp eq i32 %i.ax, 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br i1 %i.ay, label %bb.o, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread95

bb.o:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.az = load i32, ptr %i.d, align 16, !tbaa !10
  %i.ba = load i32, ptr @_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE, align 4, !tbaa !10
  %.not8.i = icmp eq i32 %i.az, %i.ba
  br i1 %.not8.i, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread95

_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread95: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread

_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit: ; preds = %bb.o
  %i.bb = trunc nuw i64 %indvars.iv to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !38
  store <2 x i64> %i.bd, ptr %1, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.loopexit

.loopexit109:                                     ; preds = %bb.m, %bb.n, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit87

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit87

_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread: ; preds = %.noexc74, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread95
  %i.be = load i64, ptr %i.ae, align 8, !tbaa !39
  %i.bf = add i64 %i.be, %i.ap
  %i.bg = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bf, i32 noundef 0, ptr noundef null)
          to label %.noexc83 unwind label %.loopexit109, !inline_history !121

.noexc83:                                         ; preds = %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit.thread
  %.not.not.i77 = icmp eq i32 %i.bk, 0
  br i1 %.not.not.i77, label %bb.p, label %.thread

bb.p:                                             ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bl = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 56, ptr noundef nonnull %i.a)
          to label %.noexc84 unwind label %.loopexit109

.noexc84:                                         ; preds = %bb.p
  %.not.i.i79 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i79, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i80, label %.invoke

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i80: ; preds = %.noexc84
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bn = icmp eq i32 %i.bm, 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.bn, label %bb.q, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit86.thread98

bb.q:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i80
  %i.bo = load i32, ptr %i.b, align 16, !tbaa !10
  %i.bp = load i32, ptr @_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE, align 4, !tbaa !10
  %.not8.i82 = icmp eq i32 %i.bo, %i.bp
  br i1 %.not8.i82, label %bb.r, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit86.thread98

_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit86.thread98: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i80, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bq = trunc nuw i64 %indvars.iv to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bt = load <2 x i64>, ptr %i.bs, align 8, !tbaa !38
  store <2 x i64> %i.bt, ptr %1, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bu = load i64, ptr %i.ae, align 8, !tbaa !39
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !77
  br label %.loopexit

.thread:                                          ; preds = %.noexc83, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit86.thread98, %bb.l, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread
  %i.by = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !10
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  store i64 %i.cb, ptr %1, align 8, !tbaa !91
  %i.cc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !10
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !92
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !38
  %i.ch = sub i64 %i.cg, %i.n
  %i.ci = add i64 %i.ch, %indvars.iv              ; 2 uses
  %i.cj = add nuw nsw i64 %i.ce, %i.cb            ; 2 uses
  %.not70 = icmp eq i64 %i.ci, %i.cj
  br i1 %.not70, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !77
  br label %.loopexit

bb.u:                                             ; preds = %bb.j, %.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cm = trunc nuw i64 %indvars.iv to i32
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %.loopexit, label %bb.j, !llvm.loop !120

.loopexit:                                        ; preds = %bb.u, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit, %bb.r, %bb.s, %bb.t
  %.0119 = phi i32 [ %i.by, %bb.t ], [ %i.bb, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit ], [ %i.bq, %bb.r ], [ %i.by, %bb.s ], [ -1, %bb.u ]
  %.0.lobit = lshr i32 %.0119, 31
  br label %_ZN7CBufferIhED2Ev.exit

_ZN7CBufferIhED2Ev.exit:                          ; preds = %.loopexit, %bb.c, %bb.e, %bb.h, %_ZN7CBufferIhE11SetCapacityEm.exit
  %.10 = phi i32 [ 1, %_ZN7CBufferIhE11SetCapacityEm.exit ], [ %i.w, %bb.c ], [ 1, %bb.h ], [ %.0.lobit, %.loopexit ], [ 1, %bb.e ]
  call void @_ZdaPv(ptr noundef nonnull %i.l) #18, !inline_history !40
  br label %bb.v

_ZN7CBufferIhED2Ev.exit87:                        ; preds = %.loopexit109, %.loopexit.split-lp, %bb.i, %bb.d
  %.pn.pn.ph = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.ad, %bb.i ], [ %lpad.loopexit, %.loopexit109 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.l) #18, !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  resume { ptr, i32 } %.pn.pn.ph

bb.v:                                             ; preds = %bb.a, %_ZN7CBufferIhED2Ev.exit
  %.11 = phi i32 [ %.10, %_ZN7CBufferIhED2Ev.exit ], [ %i.k, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  ret i32 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %5 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 19 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %2, i32 noundef 0, ptr noundef nonnull %i.d) ; 2 uses
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !30
  %.not38 = icmp eq i64 %i.i, %2
  br i1 %.not38, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = tail call noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45) %i.j, i32 noundef 32768)
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  tail call void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45) %i.j, ptr noundef %i.l)
  tail call void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45) %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 180
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not40 = icmp ne ptr %4, null
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 168
  br label %bb.e

bb.e:                                             ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit, %bb.d
  %.129 = phi i32 [ 0, %bb.d ], [ %.5, %_ZN8NArchive4NZip5CItemD2Ev.exit ] ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !30
  %i.ad = sub i64 %i.ac, %2                       ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %3
  br i1 %i.ae, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.af = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
  %.not.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.ag, align 4, !tbaa !50
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i: ; preds = %bb.f
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ai = icmp eq i32 %i.ah, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.ai, label %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %i.aj = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !50
  call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.al = load i32, ptr @_ZN8NArchive4NZip10NSignature18kCentralFileHeaderE, align 4, !tbaa !10
  %.not39 = icmp eq i32 %i.ak, %i.al
  br i1 %.not39, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.am = call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20 ; 10 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !52
  %i.ap = icmp sgt i32 %i.ao, 0
  %.pre1.i.i.i.i = load i32, ptr %i.o, align 8, !tbaa !54 ; 6 uses
  br i1 %i.ap, label %.preheader.i.i.i.i.i, label %_ZN8NArchive4NZip7CItemExC2Ev.exit

.preheader.i.i.i.i.i:                             ; preds = %bb.i
  %i.aq = icmp sgt i32 %.pre1.i.i.i.i, 0
  %.pre.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !53 ; 10 uses
  br i1 %i.aq, label %iter.check, label %._crit_edge.i.i.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i.i.i
  %.pre.i.i.i.i.i103 = ptrtoaddr ptr %.pre.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %.pre1.i.i.i.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre1.i.i.i.i, 4
  %i.ar = sub i64 %.pre.i.i.i.i.i103, %i.an
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond111 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond111, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check104 = icmp ult i32 %.pre1.i.i.i.i, 32
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %wide.trip.count.i.i.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !34
  %wide.load105 = load <16 x i8>, ptr %i.au, align 1, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !34
  store <16 x i8> %wide.load105, ptr %i.aw, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec106 = and i64 %wide.trip.count.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next109, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %index107
  %wide.load108 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 %index107
  store <4 x i8> %wide.load108, ptr %i.az, align 1, !tbaa !34
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next109, %n.vec106
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n110 = icmp eq i64 %n.vec106, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n110, label %._crit_edge.thread.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip10CLocalItemC2ERKS1_:bb.a
  %wide.load9 = load <16 x i8>, ptr %i.r, align 1, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %wide.load, ptr %i.s, align 1, !tbaa !34
  store <16 x i8> %wide.load9, ptr %i.t, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.v, align 1, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.w, align 1, !tbaa !34
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !176

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %n.vec10, %wide.trip.count.i.i
  br i1 %cmp.n14, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i.prol
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !34
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !177

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %bb.c, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !34
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !34
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !34
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !34
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !178

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.b
  %i.aq = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.b ]
  store ptr %i.j, ptr %i.a, align 8, !tbaa !53
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.j, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !34
  store i32 %i.g, ptr %i.d, align 4, !tbaa !52
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.at = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ]
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.at, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.ax, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.au, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.av, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.aw = load i8, ptr %.0.i.i, align 1, !tbaa !34 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.aw, ptr %.04.i.i, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2ERKS0_.exit, label %bb.d, !llvm.loop !2

_ZN11CStringBaseIcEC2ERKS0_.exit:                 ; preds = %bb.d
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !54
  store i32 %i.ay, ptr %i.c, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.bb, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.az, align 8, !tbaa !27
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %_ZN11CStringBaseIcEC2ERKS0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !62
  %i.bg = add nsw i32 %i.bf, %i.bd
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.bg)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  %i.bh = icmp sgt i32 %i.bd, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.noexc3.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bd to i64
  br label %bb.e

bb.e:                                             ; preds = %.noexc4.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.noexc4.i.i ] ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.i.i.i.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bm = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %.noexc4.i.i unwind label %.loopexit.i.i ; 0 uses

.noexc4.i.i:                                      ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit, label %bb.e, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i.i, %_ZN11CStringBaseIcEC2ERKS0_.exit
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.az) #19
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.f

_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit:      ; preds = %.noexc4.i.i, %.noexc3.i.i
  ret void

bb.f:                                             ; preds = %.body
  tail call void @_ZdaPv(ptr noundef nonnull %i.bn) #18
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %.body, %bb.f
  resume { ptr, i32 } %lpad.phi.i.i
}

declare noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { cold noreturn }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS9IInStream", !11, i64 0}
!13 = !{!"_ZTS9CMyComPtrI9IInStreamE", !12, i64 0}
!14 = !{!"long long", !8, i64 0}
!15 = !{!"bool", !8, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"p1 _ZTS19ISequentialInStream", !11, i64 0}
!18 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !17, i64 0}
!19 = !{!"_ZTS9CInBuffer", !16, i64 0, !16, i64 8, !16, i64 16, !18, i64 24, !14, i64 32, !9, i64 40, !15, i64 44}
!20 = !{!"long", !8, i64 0}
!21 = !{!"_ZTS7CBufferIhE", !20, i64 8, !16, i64 16}
!22 = !{!"_ZTSN8NArchive4NZip14CInArchiveInfoE", !14, i64 0, !14, i64 8, !14, i64 16, !21, i64 24}
!23 = !{!"_ZTSN8NArchive4NZip10CInArchiveE", !13, i64 0, !9, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !19, i64 40, !22, i64 88, !15, i64 136, !15, i64 137}
!24 = !{!23, !15, i64 32}
!25 = !{!18, !17, i64 0}
!26 = !{!"vtable pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!13, !12, i64 0}
!29 = !{!23, !14, i64 16}
!30 = !{!23, !14, i64 24}
!31 = !{!21, !20, i64 8}
!32 = !{!21, !16, i64 16}
!33 = !{!20, !20, i64 0}
!34 = !{!8, !8, i64 0}
!35 = !{!"short", !8, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!14, !14, i64 0}
!39 = !{!23, !14, i64 96}
!40 = !{ptr @_ZN7CBufferIhED2Ev}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!19, !16, i64 8}
!44 = !{!19, !16, i64 0}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!"_ZTS16CSystemException", !9, i64 0}
!47 = !{!46, !9, i64 0}
!48 = !{!"_ZTSN8NArchive4NZip19CInArchiveException10ECauseTypeE", !8, i64 0}
!49 = !{!"_ZTSN8NArchive4NZip19CInArchiveExceptionE", !48, i64 0}
!50 = !{!49, !48, i64 0}
!51 = !{!"_ZTS11CStringBaseIcE", !16, i64 0, !9, i64 8, !9, i64 12}
!52 = !{!51, !9, i64 12}
!53 = !{!51, !16, i64 0}
!54 = !{!51, !9, i64 8}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 4, i32 28}
!58 = !{!"_ZTSN8NArchive4NZip14CExtraSubBlockE", !35, i64 0, !21, i64 8}
!59 = !{!58, !35, i64 0}
!60 = !{!"_ZTS17CBaseRecordVector", !9, i64 8, !9, i64 12, !11, i64 16, !20, i64 24}
!61 = !{!60, !11, i64 16}
!62 = !{!60, !9, i64 12}
!63 = !{!11, !11, i64 0}
!64 = !{!"_ZTSN8NArchive4NZip8CVersionE", !8, i64 0, !8, i64 1}
!65 = !{!"_ZTS13CRecordVectorIPvE", !60, i64 0}
!66 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE", !65, i64 0}
!67 = !{!"_ZTSN8NArchive4NZip11CExtraBlockE", !66, i64 0}
!68 = !{!"_ZTSN8NArchive4NZip10CLocalItemE", !64, i64 0, !35, i64 2, !35, i64 4, !9, i64 8, !9, i64 12, !14, i64 16, !14, i64 24, !51, i64 32, !67, i64 48}
!69 = !{!68, !8, i64 0}
!70 = !{!68, !8, i64 1}
!71 = !{!"_ZTS9_FILETIME", !9, i64 0, !9, i64 4}
!72 = !{!"_ZTSN8NArchive4NZip5CItemE", !68, i64 0, !64, i64 80, !35, i64 82, !9, i64 84, !14, i64 88, !71, i64 96, !71, i64 104, !71, i64 112, !67, i64 120, !21, i64 152, !15, i64 176, !15, i64 177, !15, i64 178}
!73 = !{!"_ZTSN8NArchive4NZip7CItemExE", !72, i64 0, !9, i64 180, !35, i64 184}
!74 = !{!73, !35, i64 184}
!75 = !{!73, !9, i64 180}
!76 = !{!72, !15, i64 176}
!77 = !{!23, !14, i64 88}
!78 = !{!72, !14, i64 88}
!79 = !{ptr @_ZN8NArchive4NZip10CInArchive4SeekEy}
!80 = !{!60, !20, i64 24}
!81 = !{!68, !35, i64 4}
!82 = !{!68, !9, i64 12}
!83 = !{!68, !14, i64 16}
!84 = !{!68, !14, i64 24}
!85 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev}
!86 = !{!68, !35, i64 2}
!87 = !{!72, !15, i64 177}
!88 = !{!72, !35, i64 82}
!89 = !{!72, !9, i64 84}
!90 = !{!"_ZTSN8NArchive4NZip7CCdInfoE", !14, i64 0, !14, i64 8}
!91 = !{!90, !14, i64 0}
!92 = !{!90, !14, i64 8}
!93 = !{!23, !9, i64 8}
!94 = distinct !{ptr @_ZN8NArchive4NZip10CInArchive5CloseEv, null, null}
!95 = distinct !{ptr @_ZN8NArchive4NZip10CInArchive5CloseEv, null}
!96 = distinct !{null}
!97 = distinct !{null, null}
!98 = distinct !{null}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !45}
!101 = distinct !{!101, !37}
!102 = distinct !{!102, !37}
!103 = distinct !{!103, !37, !55, !56}
!104 = distinct !{!104, !37, !55, !56}
!105 = distinct !{!105, !45}
!106 = distinct !{!106, !37, !55}
!107 = distinct !{!107, !37, !55, !56}
!108 = distinct !{!108, !37, !55, !56}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !37, !55}
!111 = distinct !{!111, !37}
!112 = distinct !{!112, !37, !55, !56}
!113 = distinct !{!113, !37, !55, !56}
!114 = distinct !{!114, !45}
!115 = distinct !{!115, !37, !55}
!116 = distinct !{!116, !37}
!117 = !{ptr @_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy}
!118 = !{!72, !8, i64 80}
!119 = !{!72, !8, i64 81}
!120 = distinct !{!120, !37}
!121 = !{ptr @_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE}
!122 = distinct !{!122, !37, !55, !56}
!123 = distinct !{!123, !37, !55, !56}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, !37, !55}
!126 = distinct !{!126, !37, !55, !56}
!127 = distinct !{!127, !37, !55, !56}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !37, !55}
!130 = distinct !{!130, !37, !55, !56}
!131 = distinct !{!131, !37, !55, !56}
!132 = distinct !{!132, !45}
!133 = distinct !{!133, !37, !55}
!134 = distinct !{!134, !37}
!135 = distinct !{!135, !37, !55, !56}
!136 = distinct !{!136, !37, !55, !56}
!137 = distinct !{!137, !45}
!138 = distinct !{!138, !37, !55}
!139 = distinct !{!139, !37}
!140 = distinct !{!140, !37}
!141 = distinct !{!141, !45}
!142 = !{!"_ZTSN8NArchive4NZip4CEcdE", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !9, i64 8, !9, i64 12, !35, i64 16}
!143 = !{!142, !35, i64 0}
!144 = !{!142, !35, i64 2}
!145 = !{!142, !35, i64 4}
!146 = !{!142, !35, i64 6}
!147 = !{!142, !9, i64 8}
!148 = !{!142, !9, i64 12}
!149 = !{!142, !35, i64 16}
!150 = !{!"_ZTSN8NArchive4NZip6CEcd64E", !35, i64 0, !35, i64 2, !9, i64 4, !9, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!151 = !{!150, !35, i64 0}
!152 = !{!150, !35, i64 2}
!153 = !{!150, !9, i64 4}
!154 = !{!150, !9, i64 8}
!155 = !{!150, !14, i64 16}
!156 = !{!150, !14, i64 24}
!157 = !{!150, !14, i64 32}
!158 = !{!150, !14, i64 40}
!159 = !{!23, !15, i64 136}
!160 = !{!23, !15, i64 137}
!161 = !{!23, !14, i64 104}
!162 = distinct !{null}
!163 = distinct !{null}
!164 = !{!"_ZTS13CMyUnknownImp", !9, i64 0}
!165 = !{!164, !9, i64 0}
!166 = !{ptr @_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy}
!167 = !{!"_ZTS8IUnknown"}
!168 = !{!"_ZTS19ISequentialInStream", !167, i64 0}
end_hunk_1
