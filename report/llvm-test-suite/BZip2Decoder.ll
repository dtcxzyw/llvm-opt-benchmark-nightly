Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BZip2Decoder?download=true
inline.NumInlined: 186
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZThn8_N9NCompress6NBZip28CDecoder6AddRefEv:bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !33
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress6NBZip28CDecoder7ReleaseEv(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress6NBZip28CDecoder7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(28988) %i.d) #20, !inline_history !140
  br label %_ZN9NCompress6NBZip28CDecoder7ReleaseEv.exit

_ZN9NCompress6NBZip28CDecoder7ReleaseEv.exit:     ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

declare void @_ZN9CInBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(45)) unnamed_addr #1

declare i32 @CriticalSection_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #15

declare i32 @Event_Close(ptr noundef) local_unnamed_addr #1

declare void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare i32 @ManualResetEvent_CreateNotSignaled(ptr noundef) local_unnamed_addr #1

declare i32 @Thread_Close(ptr noundef) local_unnamed_addr #1

declare i32 @Event_Set(ptr noundef) local_unnamed_addr #1

declare i32 @Thread_Wait(ptr noundef) local_unnamed_addr #1

declare i32 @Event_Reset(ptr noundef) local_unnamed_addr #1

declare i32 @Event_Wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 16777216) i32 @_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj(ptr noundef %0, i32 noundef range(i32 3, 25) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = add i32 %i.c, %1                         ; 3 uses
  store i32 %i.d, ptr %0, align 8, !tbaa !27
  %i.e = icmp ugt i32 %i.d, 7
  br i1 %i.e, label %.lr.ph.i.i.i, label %_ZN5NBitm8CDecoderI9CInBufferE8ReadBitsEj.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i, %.lr.ph.i.i.i
  %i.h = phi i32 [ %i.d, %.lr.ph.i.i.i ], [ %i.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i ]
  %i.i = phi i32 [ %i.b, %.lr.ph.i.i.i ], [ %i.r, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i ]
  %i.j = shl i32 %i.i, 8
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not.i.i.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.f)
  %.pre1.i.i.i = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !28
  %i.o = load i8, ptr %i.k, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i:              ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %.pre1.i.i.i, %bb.c ], [ %i.h, %bb.d ]
  %.0.i.i.i.i = phi i8 [ %i.m, %bb.c ], [ %i.o, %bb.d ]
  %i.q = zext i8 %.0.i.i.i.i to i32
  %i.r = or disjoint i32 %i.j, %i.q               ; 2 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !20
  %i.s = add i32 %i.p, -8                         ; 3 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !27
  %i.t = icmp ugt i32 %i.s, 7
  br i1 %i.t, label %bb.b, label %_ZN5NBitm8CDecoderI9CInBufferE8ReadBitsEj.exit, !llvm.loop !31

_ZN5NBitm8CDecoderI9CInBufferE8ReadBitsEj.exit:   ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i, %bb.a
  %i.u = sub i32 8, %i.c
  %i.v = lshr i32 %i.b, %i.u
  %i.w = and i32 %i.v, 16777215
  %i.x = sub nuw nsw i32 24, %1
  %i.y = lshr i32 %i.w, %i.x
  ret i32 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9NCompress8NHuffman8CDecoderILi20ELj258EE14SetCodeLengthsEPKh(ptr noundef nonnull align 4 dereferenceable(1712) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
.preheader53:
  %i.a = alloca [21 x i32], align 16              ; 8 uses
  %i.b = alloca [21 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %scevgep, i8 0, i64 80, i1 false), !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.preheader53
  %indvars.iv = phi i64 [ 0, %.preheader53 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !30    ; 2 uses
  %i.f = icmp ult i8 %i.e, 21
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 -1, ptr %i.k, align 4, !tbaa !4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  %i.n = icmp ult i8 %i.m, 21
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 258
  br i1 %exitcond.not.1, label %bb.d, label %bb.a, !llvm.loop !141

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 16, !tbaa !4
  store i32 0, ptr %0, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %scevgep67 = getelementptr inbounds nuw i8, ptr %0, i64 1200
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv73 = phi i64 [ 1, %bb.d ], [ %indvars.iv.next74, %.loopexit ] ; 10 uses
  %.061 = phi i32 [ 0, %bb.d ], [ %.2, %.loopexit ] ; 5 uses
  %.04060 = phi i32 [ 0, %bb.d ], [ %i.z, %.loopexit ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = trunc i64 %indvars.iv73 to i32
  %i.x = sub i32 20, %i.w
  %i.y = shl i32 %i.v, %i.x
  %i.z = add i32 %i.y, %.04060                    ; 4 uses
  %i.aa = icmp ugt i32 %i.z, 1048576
  br i1 %i.aa, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i64 %indvars.iv73, 20
  %i.ac = select i1 %i.ab, i32 1048576, i32 %i.z
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  %i.ae = add nsw i64 %indvars.iv73, -1           ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add i32 %i.ai, %i.ag                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv73
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv73
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !4
  %i.am = icmp samesign ult i64 %indvars.iv73, 10
  br i1 %i.am, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.an = lshr i32 %i.z, 11                       ; 3 uses
  %i.ao = icmp ult i32 %.061, %i.an
  br i1 %i.ao, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %indvars.iv73 to i8
  %i.aq = zext nneg i32 %.061 to i64              ; 5 uses
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.aq
  %i.ar = xor i32 %.061, -1
  %i.as = add nsw i32 %i.an, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep68, i8 %i.ap, i64 %i.au, i1 false), !tbaa !30
  %2 = zext nneg i32 %i.an to i64                 ; 3 uses
  %3 = sub nsw i64 %2, %i.aq
  %xtraiter = and i64 %3, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv69.prol = phi i64 [ %indvars.iv.next70.prol, %.prol.preheader ], [ %i.aq, %.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !142

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv69.unr = phi i64 [ %i.aq, %.lr.ph ], [ %indvars.iv.next70.prol, %.prol.preheader ]
  %indvars.iv.next70.lcssa.unr = phi i64 [ poison, %.lr.ph ], [ %indvars.iv.next70.prol, %.prol.preheader ]
  %4 = sub nsw i64 %i.aq, %2
  %5 = icmp ugt i64 %4, -8
  br i1 %5, label %.loopexit.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.7, %.lr.ph.new ], [ %indvars.iv69.unr, %.prol.loopexit ]
  %indvars.iv.next70.7 = add nuw nsw i64 %indvars.iv69, 8 ; 3 uses
  %6 = icmp samesign ult i64 %indvars.iv.next70.7, %2
  br i1 %6, label %.lr.ph.new, label %.loopexit.loopexit, !llvm.loop !143

.loopexit.loopexit:                               ; preds = %.lr.ph.new, %.prol.loopexit
  %indvars.iv.next70.lcssa = phi i64 [ %indvars.iv.next70.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next70.7, %.lr.ph.new ]
  %7 = trunc nuw nsw i64 %indvars.iv.next70.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g, %bb.f
  %.2 = phi i32 [ %.061, %bb.f ], [ %.061, %bb.g ], [ %7, %.loopexit.loopexit ]
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76 = icmp eq i64 %indvars.iv.next74, 21
  br i1 %exitcond76, label %.preheader, label %bb.e, !llvm.loop !144

.preheader:                                       ; preds = %.loopexit, %bb.j
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.1, %bb.j ], [ 0, %.loopexit ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv77
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !30  ; 2 uses
  %.not = icmp eq i8 %i.aw, 0
  br i1 %.not, label %.preheader.1, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !4
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bb
  %i.bd = trunc nuw nsw i64 %indvars.iv77 to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !4
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.h, %.preheader
  %indvars.iv.next78 = or disjoint i64 %indvars.iv77, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next78
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30  ; 2 uses
  %.not.1 = icmp eq i8 %i.bf, 0
  br i1 %.not.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4  ; 2 uses
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !4
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bk
  %i.bm = trunc nuw nsw i64 %indvars.iv.next78 to i32
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.1
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %exitcond80.not.1 = icmp eq i64 %indvars.iv.next78.1, 258
  br i1 %exitcond80.not.1, label %.critedge, label %.preheader, !llvm.loop !145

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.e, %bb.j
  %.3 = phi i1 [ true, %bb.j ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NHuffman8CDecoderILi20ELj258EE12DecodeSymbolIN5NBitm8CDecoderI9CInBufferEEEEjPT_(ptr noundef nonnull align 4 dereferenceable(1712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.d = sub i32 8, %i.c
  %i.e = lshr i32 %i.b, %i.d
  %i.f = lshr i32 %i.e, 4
  %i.g = and i32 %i.f, 1048575                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.l = lshr i32 %i.g, 11
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !30
  %i.p = zext i8 %i.o to i32
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 10, %bb.a ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %.not = icmp ult i32 %i.g, %i.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !146

.loopexit.loopexit:                               ; preds = %.preheader
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.1 = phi i32 [ %i.p, %bb.b ], [ %i.s, %.loopexit.loopexit ] ; 3 uses
  %i.t = add i32 %.1, %i.c                        ; 3 uses
  store i32 %i.t, ptr %1, align 8, !tbaa !27
  %i.u = icmp ugt i32 %i.t, 7
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit

.lr.ph.i.i:                                       ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i, %.lr.ph.i.i
  %i.x = phi i32 [ %i.t, %.lr.ph.i.i ], [ %i.ai, %_ZN9CInBuffer8ReadByteEv.exit.i.i ]
  %i.y = phi i32 [ %i.b, %.lr.ph.i.i ], [ %i.ah, %_ZN9CInBuffer8ReadByteEv.exit.i.i ]
  %i.z = shl i32 %i.y, 8
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !28  ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i.i = icmp ult ptr %i.aa, %i.ab
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.v)
  %.pre1.i.i = load i32, ptr %1, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !28
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.af = phi i32 [ %.pre1.i.i, %bb.d ], [ %i.x, %bb.e ]
  %.0.i.i.i = phi i8 [ %i.ac, %bb.d ], [ %i.ae, %bb.e ]
  %i.ag = zext i8 %.0.i.i.i to i32
  %i.ah = or disjoint i32 %i.z, %i.ag             ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !20
  %i.ai = add i32 %i.af, -8                       ; 3 uses
  store i32 %i.ai, ptr %1, align 8, !tbaa !27
  %i.aj = icmp ugt i32 %i.ai, 7
  br i1 %i.aj, label %bb.c, label %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit, !llvm.loop !31

_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i, %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.al = zext nneg i32 %.1 to i64                ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = sub i32 %i.g, %i.aq
  %i.as = sub nsw i32 20, %.1
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = add i32 %i.at, %i.an                    ; 2 uses
  %i.av = icmp ugt i32 %i.au, 257
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit, %bb.f
  %.015 = phi i32 [ %i.az, %bb.f ], [ -1, %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit ]
  ret i32 %.015
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN9NCompress12CMtf8Decoder10GetAndMoveEj(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = lshr i32 %1, 3                           ; 3 uses
  %i.b = shl i32 %1, 3
  %i.c = and i32 %i.b, 56
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85
  %i.g = zext nneg i32 %i.c to i64                ; 2 uses
  %i.h = lshr i64 %i.f, %i.g
  %i.i = and i64 %i.h, 255                        ; 2 uses
  %i.j = and i32 %1, 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.l = shl i64 %i.k, 8
  %i.m = or disjoint i64 %i.l, %i.i
  store i64 %i.m, ptr %0, align 8, !tbaa !85
  %i.n = lshr i64 %i.k, 56
  %i.o = add nsw i32 %i.a, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.030 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %.029 = phi i64 [ %i.n, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %i.p = icmp ult i32 %.030, %.0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = zext nneg i32 %.030 to i64
  %i.r = zext i32 %.0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.133 = phi i64 [ %.029, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !85   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 2 uses
  %i.x = shl i64 %i.t, 8
  %i.y = or i64 %i.x, %.133
  store i64 %i.y, ptr %i.s, align 8, !tbaa !85
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.t, i64 8)
  store i64 %i.z, ptr %i.v, align 8, !tbaa !85
  %i.aa = lshr i64 %i.w, 56                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.ab, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !147

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ac = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.131.lcssa = phi i32 [ %.030, %bb.c ], [ %i.ac, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.029, %bb.c ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ad = zext i32 %.131.lcssa to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !85 ; 2 uses
  %i.ag = shl i64 256, %i.g                       ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = and i64 %i.af, %i.ai
  %i.ak = shl i64 %i.af, 8
  %i.al = or i64 %i.ak, %.1.lcssa
  %i.am = and i64 %i.al, %i.ah
  %i.an = or i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.ae, align 8, !tbaa !85
  %i.ao = load i64, ptr %0, align 8, !tbaa !85
  %i.ap = trunc i64 %i.ao to i8
  ret i8 %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare i32 @AutoResetEvent_CreateNotSignaled(ptr noundef) local_unnamed_addr #1

declare i32 @Thread_Create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

declare noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45), i32 noundef) local_unnamed_addr #1

declare void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #1

declare void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN9NCompress6NBZip26CStateE", !10, i64 0, !12, i64 8, !13, i64 16, !16, i64 32, !17, i64 40, !17, i64 144, !17, i64 248, !6, i64 352}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN9NCompress6NBZip28CDecoderE", !11, i64 0}
!13 = !{!"_ZTSN8NWindows7CThreadE", !14, i64 0}
!14 = !{!"_ZTS8_CThread", !15, i64 0, !5, i64 8}
!15 = !{!"long", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTSN8NWindows16NSynchronization15CAutoResetEventE", !18, i64 0}
!18 = !{!"_ZTSN8NWindows16NSynchronization10CBaseEventE", !19, i64 0}
!19 = !{!"_ZTS7_CEvent", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!20 = !{!21, !5, i64 4}
!21 = !{!"_ZTSN5NBitm8CDecoderI9CInBufferEE", !5, i64 0, !5, i64 4, !22, i64 8}
!22 = !{!"_ZTS9CInBuffer", !23, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !26, i64 32, !5, i64 40, !16, i64 44}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !25, i64 0}
!25 = !{!"p1 _ZTS19ISequentialInStream", !11, i64 0}
!26 = !{!"long long", !6, i64 0}
!27 = !{!21, !5, i64 0}
!28 = !{!22, !23, i64 0}
!29 = !{!22, !23, i64 8}
!30 = !{!6, !6, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !5, i64 0}
!34 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !7, i64 0}
!37 = !{!38, !23, i64 0}
!38 = !{!"_ZTS10COutBuffer", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !39, i64 24, !26, i64 32, !23, i64 40, !16, i64 48}
!39 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !40, i64 0}
!40 = !{!"p1 _ZTS20ISequentialOutStream", !11, i64 0}
!41 = !{!38, !5, i64 8}
!42 = !{!39, !40, i64 0}
!43 = !{!38, !23, i64 40}
!44 = !{!45, !5, i64 0}
!45 = !{!"_ZTS17CBZip2CombinedCrc", !5, i64 0}
!46 = !{!18, !5, i64 0}
!47 = !{!48, !53, i64 28696}
!48 = !{!"_ZTSN9NCompress6NBZip28CDecoderE", !49, i64 0, !51, i64 8, !34, i64 16, !38, i64 24, !6, i64 80, !21, i64 336, !6, i64 392, !6, i64 18396, !26, i64 28672, !16, i64 28680, !45, i64 28684, !52, i64 28688, !53, i64 28696, !5, i64 28704, !54, i64 28712, !55, i64 28816, !5, i64 28856, !16, i64 28860, !5, i64 28864, !16, i64 28868, !16, i64 28869, !16, i64 28870, !54, i64 28872, !5, i64 28976, !5, i64 28980, !5, i64 28984}
!49 = !{!"_ZTS14ICompressCoder", !50, i64 0}
!50 = !{!"_ZTS8IUnknown"}
!51 = !{!"_ZTS19ICompressSetCoderMt", !50, i64 0}
!52 = !{!"p1 _ZTS21ICompressProgressInfo", !11, i64 0}
!53 = !{!"p1 _ZTSN9NCompress6NBZip26CStateE", !11, i64 0}
!54 = !{!"_ZTSN8NWindows16NSynchronization17CManualResetEventE", !18, i64 0}
!55 = !{!"_ZTSN8NWindows16NSynchronization16CCriticalSectionE", !56, i64 0}
!56 = !{!"_ZTS16CCriticalSection", !6, i64 0}
!57 = !{!48, !5, i64 28704}
!58 = !{!48, !5, i64 28856}
!59 = !{!48, !16, i64 28680}
!60 = !{!24, !25, i64 0}
!61 = !{!48, !16, i64 28868}
!62 = !{!48, !16, i64 28860}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = distinct !{!65, !32}
!66 = !{ptr @_ZN9NCompress6NBZip28CDecoderD0Ev}
!67 = !{!13, !5, i64 8}
!68 = !{!9, !12, i64 8}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !32, !71}
!71 = !{!"llvm.loop.unswitch.partial.disable"}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!16, !16, i64 0}
!75 = !{!48, !52, i64 28688}
!76 = distinct !{!76, !32}
!77 = !{!48, !5, i64 28984}
!78 = !{!48, !5, i64 28980}
!79 = !{!48, !5, i64 28976}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = !{!22, !26, i64 32}
!83 = !{!22, !23, i64 16}
!84 = !{!48, !26, i64 28672}
!85 = !{!26, !26, i64 0}
!86 = !{ptr @_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy}
!87 = distinct !{!87, !32}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32, !98, !99}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = distinct !{!100, !73}
!101 = distinct !{!101, !32, !98}
!102 = !{!103, !103, i64 0}
!103 = !{!"short", !6, i64 0}
!104 = !{!38, !5, i64 12}
!105 = distinct !{!105, !32}
!106 = distinct !{!106, !32}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = !{!110, !12, i64 0}
!110 = !{!"_ZTSN9NCompress6NBZip28CDecoder15CDecoderFlusherE", !12, i64 0, !16, i64 8, !16, i64 9}
!111 = !{!110, !16, i64 8}
!112 = !{!110, !16, i64 9}
!113 = distinct !{null}
!114 = !{!115, !5, i64 0}
!115 = !{!"_ZTS16CSystemException", !5, i64 0}
!116 = distinct !{null, null, null}
!117 = !{!48, !16, i64 28869}
!118 = distinct !{!118, !32}
!119 = !{!48, !5, i64 28864}
!120 = !{!48, !16, i64 28870}
!121 = distinct !{ptr @_ZN9NCompress6NBZip212CNsisDecoder15ReleaseInStreamEv, null, null, null}
!122 = !{!123, !5, i64 28976}
!123 = !{!"_ZTSN9NCompress6NBZip212CNsisDecoderE", !124, i64 0, !125, i64 8, !126, i64 16, !34, i64 24, !21, i64 32, !6, i64 88, !6, i64 18092, !9, i64 28368, !5, i64 28976, !5, i64 28980, !5, i64 28984, !5, i64 28988, !5, i64 28992, !5, i64 28996}
!124 = !{!"_ZTS19ISequentialInStream", !50, i64 0}
!125 = !{!"_ZTS20ICompressSetInStream", !50, i64 0}
!126 = !{!"_ZTS25ICompressSetOutStreamSize", !50, i64 0}
!127 = !{!123, !5, i64 28980}
!128 = !{!123, !5, i64 28984}
!129 = !{!123, !5, i64 28992}
!130 = !{!123, !5, i64 28996}
!131 = !{!123, !5, i64 28988}
!132 = distinct !{!132, !32}
!133 = distinct !{!133, !32}
!134 = distinct !{!134, !32}
!135 = !{!11, !11, i64 0}
!136 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoderD2Ev}
!137 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoder7ReleaseEv}
!138 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoderD0Ev, ptr @_ZN9NCompress6NBZip212CNsisDecoderD2Ev}
!139 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoderD0Ev}
!140 = !{ptr @_ZN9NCompress6NBZip28CDecoder7ReleaseEv}
!141 = distinct !{!141, !32}
!142 = distinct !{!142, !73}
!143 = distinct !{!143, !32}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !32}
!146 = distinct !{!146, !32}
!147 = distinct !{!147, !32}
end_hunk_0
