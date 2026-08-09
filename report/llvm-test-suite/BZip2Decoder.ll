inline.NumInlined: 186
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN9NCompress6NBZip2L12DecodeBlock2EPKjjjR10COutBuffer:bb.a
.lr.ph:                                           ; preds = %.preheader
  %i.q = trunc nuw i32 %.021 to i8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10COutBuffer9WriteByteEh.exit
  %.033 = phi i32 [ %i.k, %.lr.ph ], [ %i.ag, %_ZN10COutBuffer9WriteByteEh.exit ]
  %.sroa.0.132 = phi i32 [ %.sroa.0.0, %.lr.ph ], [ %i.x, %_ZN10COutBuffer9WriteByteEh.exit ] ; 2 uses
  %i.r = lshr i32 %.sroa.0.132, 24
  %i.s = xor i32 %i.r, %.021
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = shl i32 %.sroa.0.132, 8
  %i.x = xor i32 %i.v, %i.w                       ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !37
  %i.z = load i32, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.i, align 8, !tbaa !41
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  store i8 %i.q, ptr %i.ac, align 1, !tbaa !30
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !41
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !102
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN10COutBuffer9WriteByteEh.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %3)
  br label %_ZN10COutBuffer9WriteByteEh.exit

_ZN10COutBuffer9WriteByteEh.exit:                 ; preds = %bb.c, %bb.d
  %i.ag = add nsw i32 %.033, -1                   ; 2 uses
  %.not26 = icmp eq i32 %i.ag, 0
  br i1 %.not26, label %_ZN10COutBuffer9WriteByteEh.exit28, label %bb.c, !llvm.loop !105

bb.e:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.k, %.021
  %i.ah = add i32 %.020, 1
  %i.ai = select i1 %.not, i32 %i.ah, i32 1       ; 2 uses
  %i.aj = lshr i32 %.sroa.0.0, 24
  %i.ak = xor i32 %i.k, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = shl i32 %.sroa.0.0, 8
  %i.ap = xor i32 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i32 %.023 to i8
  %i.ar = load ptr, ptr %3, align 8, !tbaa !37
  %i.as = load i32, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.i, align 8, !tbaa !41
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au
  store i8 %i.aq, ptr %i.av, align 1, !tbaa !30
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !41
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !102
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN10COutBuffer9WriteByteEh.exit28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %3)
  br label %_ZN10COutBuffer9WriteByteEh.exit28

_ZN10COutBuffer9WriteByteEh.exit28:               ; preds = %_ZN10COutBuffer9WriteByteEh.exit, %.preheader, %bb.f, %bb.e
  %.sroa.0.2 = phi i32 [ %i.ap, %bb.f ], [ %i.ap, %bb.e ], [ %.sroa.0.0, %.preheader ], [ %i.x, %_ZN10COutBuffer9WriteByteEh.exit ] ; 2 uses
  %.122 = phi i32 [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %.021, %.preheader ], [ %.021, %_ZN10COutBuffer9WriteByteEh.exit ]
  %.2 = phi i32 [ %i.ai, %bb.f ], [ %i.ai, %bb.e ], [ 0, %.preheader ], [ 0, %_ZN10COutBuffer9WriteByteEh.exit ]
  %i.az = add i32 %.024, -1                       ; 2 uses
  %.not27 = icmp eq i32 %i.az, 0
  br i1 %.not27, label %bb.g, label %bb.b, !llvm.loop !106

bb.g:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit28
  %i.ba = xor i32 %.sroa.0.2, -1
  ret i32 %i.ba
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamRbP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(28988) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.NCompress::NBZip2::CDecoder::CDecoderFlusher", align 8 ; 7 uses
  store i8 0, ptr %3, align 1, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 10 uses
  %i.c = invoke noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45) %i.b, i32 noundef 131072)
          to label %_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit unwind label %bb.b

_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit:     ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.ac

bb.b:                                             ; preds = %bb.f, %bb.a, %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr @_ZTI19COutBufferException
          catch ptr null
  br label %bb.x

bb.c:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = invoke noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49) %i.e, i32 noundef 131072)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ne ptr %1, null                     ; 3 uses
  br i1 %i.g, label %bb.f, label %_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45) %i.b, ptr noundef nonnull %1)
          to label %_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit unwind label %bb.b

_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = zext i1 %i.g to i8
  store ptr %0, ptr %5, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 1, ptr %i.i, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %i.h, ptr %i.j, align 1, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28680 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !59, !range !63, !noundef !64
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit._crit_edge

_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit._crit_edge: ; preds = %_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit
  %.pre = load i32, ptr %i.a, align 8, !tbaa !27
  br label %bb.k

bb.g:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit
  invoke void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  store i32 32, ptr %i.a, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i, %.noexc
  %i.p = phi i32 [ 32, %.noexc ], [ %i.aa, %_ZN9CInBuffer8ReadByteEv.exit.i.i ]
  %i.q = phi i32 [ %.pre.i.i, %.noexc ], [ %i.z, %_ZN9CInBuffer8ReadByteEv.exit.i.i ]
  %i.r = shl i32 %i.q, 8
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !29
  %.not.i.i.i = icmp ult ptr %i.s, %i.t
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = invoke noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.b)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %bb.i
  %.pre1.i.i = load i32, ptr %i.a, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.v, ptr %i.b, align 8, !tbaa !28
  %i.w = load i8, ptr %i.s, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i:                ; preds = %bb.j, %.noexc24
  %i.x = phi i32 [ %.pre1.i.i, %.noexc24 ], [ %i.p, %bb.j ]
  %.0.i.i.i = phi i8 [ %i.u, %.noexc24 ], [ %i.w, %bb.j ]
  %i.y = zext i8 %.0.i.i.i to i32
  %i.z = or disjoint i32 %i.r, %i.y               ; 2 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !20
  %i.aa = add i32 %i.x, -8                        ; 4 uses
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !27
  %i.ab = icmp ugt i32 %i.aa, 7
  br i1 %i.ab, label %bb.h, label %_ZN5NBitm8CDecoderI9CInBufferE4InitEv.exit, !llvm.loop !31

_ZN5NBitm8CDecoderI9CInBufferE4InitEv.exit:       ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i
  store i8 0, ptr %i.k, align 8, !tbaa !59
  br label %bb.k

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr @_ZTI19COutBufferException
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i
  %lpad.loopexit30 = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr @_ZTI19COutBufferException
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.s, %bb.g, %bb.o, %_ZN5NBitm8CDecoderI9CInBufferE11AlignToByteEv.exit
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr @_ZTI19COutBufferException
          catch ptr null
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit._crit_edge, %_ZN5NBitm8CDecoderI9CInBufferE4InitEv.exit
  %i.ac = phi i32 [ %.pre, %_ZN5NBitm8CDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit._crit_edge ], [ %i.aa, %_ZN5NBitm8CDecoderI9CInBufferE4InitEv.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i32 32, %i.ac
  %i.al = lshr i32 %i.ak, 3
  %i.am = zext nneg i32 %i.al to i64
  %.neg29 = add i64 %i.ae, %i.ai
  %i.an = add i64 %i.aj, %i.am
  %i.ao = sub i64 %.neg29, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28672
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !81
  %6 = add i32 %i.ac, 7                           ; 2 uses
  %i.aq = and i32 %6, -8                          ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !27
  %i.ar = icmp ugt i32 %6, 7
  br i1 %i.ar, label %.lr.ph.i.i.i, label %_ZN5NBitm8CDecoderI9CInBufferE11AlignToByteEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.pre.i.i.i = load i32, ptr %i.as, align 4, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i, %.lr.ph.i.i.i
  %i.au = phi i32 [ %i.aq, %.lr.ph.i.i.i ], [ %i.bf, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i ]
  %i.av = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.be, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i ]
  %i.aw = shl i32 %i.av, 8
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !29
  %.not.i.i.i.i = icmp ult ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = invoke noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.b)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.m
  %.pre1.i.i.i = load i32, ptr %i.a, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !28
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i:              ; preds = %bb.n, %.noexc25
  %i.bc = phi i32 [ %.pre1.i.i.i, %.noexc25 ], [ %i.au, %bb.n ]
  %.0.i.i.i.i = phi i8 [ %i.az, %.noexc25 ], [ %i.bb, %bb.n ]
  %i.bd = zext i8 %.0.i.i.i.i to i32
  %i.be = or disjoint i32 %i.aw, %i.bd            ; 2 uses
  store i32 %i.be, ptr %i.as, align 4, !tbaa !20
  %i.bf = add i32 %i.bc, -8                       ; 3 uses
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !27
  %i.bg = icmp ugt i32 %i.bf, 7
  br i1 %i.bg, label %bb.l, label %_ZN5NBitm8CDecoderI9CInBufferE11AlignToByteEv.exit, !llvm.loop !31

_ZN5NBitm8CDecoderI9CInBufferE11AlignToByteEv.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i, %bb.k
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.e, ptr noundef %2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE11AlignToByteEv.exit
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.bh = invoke noundef i32 @_ZN9NCompress6NBZip28CDecoder10DecodeFileERbP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(28988) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.not.not = icmp eq i32 %i.bh, 0
  br i1 %.not.not, label %bb.s, label %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr @_ZTI19COutBufferException
          catch ptr null
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  store i8 0, ptr %i.i, align 8, !tbaa !109
  %i.bj = invoke noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e)
          to label %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN9NCompress6NBZip28CDecoder5FlushEv.exit:       ; preds = %bb.q
  %i.bk = invoke noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e)
          to label %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit.i unwind label %bb.w ; 0 uses

_ZN9NCompress6NBZip28CDecoder5FlushEv.exit.i:     ; preds = %bb.s, %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit
  %.143 = phi i32 [ %i.bh, %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit ], [ %i.bj, %bb.s ]
  br i1 %i.g, label %bb.t, label %_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit.i.i

bb.t:                                             ; preds = %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %.noexc.i unwind label %bb.w, !inline_history !111 ; 0 uses

.noexc.i:                                         ; preds = %bb.u
  store ptr null, ptr %i.bl, align 8, !tbaa !60
  br label %_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit.i.i

_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit.i.i: ; preds = %.noexc.i, %bb.t, %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i27, label %_ZN9NCompress6NBZip28CDecoder15CDecoderFlusherD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %.noexc1.i unwind label %bb.w, !inline_history !111 ; 0 uses

.noexc1.i:                                        ; preds = %bb.v
  store ptr null, ptr %i.br, align 8, !tbaa !42
  br label %_ZN9NCompress6NBZip28CDecoder15CDecoderFlusherD2Ev.exit

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN9NCompress6NBZip28CDecoder5FlushEv.exit
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #19
  unreachable

_ZN9NCompress6NBZip28CDecoder15CDecoderFlusherD2Ev.exit: ; preds = %_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit.i.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit30, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN9NCompress6NBZip28CDecoder15CDecoderFlusherD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.d, %bb.b ] ; 2 uses
  %.118 = extractvalue { ptr, i32 } %.pn.pn, 0    ; 2 uses
  %.121 = extractvalue { ptr, i32 } %.pn.pn, 1    ; 2 uses
  %i.bz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI18CInBufferException) #20
  %i.ca = icmp eq i32 %.121, %i.bz
  br i1 %i.ca, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cb = call ptr @__cxa_begin_catch(ptr %.118) #20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !112
  call void @__cxa_end_catch()
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.cd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #20
  %i.ce = icmp eq i32 %.121, %i.cd
  %i.cf = call ptr @__cxa_begin_catch(ptr %.118) #20
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !112
  call void @__cxa_end_catch()
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @__cxa_end_catch()
  br label %bb.ac

bb.ac:                                            ; preds = %bb.d, %_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit, %bb.ab, %bb.aa, %bb.y, %_ZN9NCompress6NBZip28CDecoder15CDecoderFlusherD2Ev.exit
  %.2 = phi i32 [ %.143, %_ZN9NCompress6NBZip28CDecoder15CDecoderFlusherD2Ev.exit ], [ %i.cc, %bb.y ], [ %i.cg, %bb.aa ], [ -2147467259, %bb.ab ], [ -2147024882, %_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit ], [ -2147024882, %bb.d ]
  ret i32 %.2
}

declare noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5NBitm8CDecoderI9CInBufferE4InitEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45) %i.a)
  store i32 32, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !20
  br label %bb.a

bb.a:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i, %.lr.ph.i
  %i.d = phi i32 [ 32, %.lr.ph.i ], [ %i.o, %_ZN9CInBuffer8ReadByteEv.exit.i ]
  %i.e = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.n, %_ZN9CInBuffer8ReadByteEv.exit.i ]
  %i.f = shl i32 %i.e, 8
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !29
  %.not.i.i = icmp ult ptr %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.a)
  %.pre1.i = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.j, ptr %i.a, align 8, !tbaa !28
  %i.k = load i8, ptr %i.g, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i

_ZN9CInBuffer8ReadByteEv.exit.i:                  ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %.pre1.i, %bb.b ], [ %i.d, %bb.c ]
  %.0.i.i = phi i8 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  %i.m = zext i8 %.0.i.i to i32
  %i.n = or disjoint i32 %i.f, %i.m               ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !20
  %i.o = add i32 %i.l, -8                         ; 3 uses
  store i32 %i.o, ptr %0, align 8, !tbaa !27
  %i.p = icmp ugt i32 %i.o, 7
  br i1 %i.p, label %bb.a, label %_ZN5NBitm8CDecoderI9CInBufferE9NormalizeEv.exit, !llvm.loop !31

_ZN5NBitm8CDecoderI9CInBufferE9NormalizeEv.exit:  ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i
  ret void
}
end_hunk_0
