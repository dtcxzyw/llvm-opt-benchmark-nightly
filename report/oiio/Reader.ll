inline.NumInlined: 43
inline.NumDeleted: 35
begin_hunk_0_@_ZN3dpx6Reader5ResetEv:bb.a

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not9 = icmp eq ptr %i.au, null
  br i1 %.not9, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 3 uses
  invoke void @_ZN3dpx17ElementReadStreamC1EP8InStream(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull %i.au)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !9
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #15
  resume { ptr, i32 } %i.aw

bb.w:                                             ; preds = %bb.u, %bb.s
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3dpx6ReaderD0Ev(ptr noundef nonnull align 8 dead_on_return(2144) dereferenceable(2144) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3dpx6ReaderE, i64 16), ptr %0, align 8, !tbaa !7
  invoke void @_ZN3dpx6Reader5ResetEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
          to label %bb.b unwind label %bb.d, !inline_history !23

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN3dpx6ReaderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #12, !inline_history !23
  br label %_ZN3dpx6ReaderD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #13, !inline_history !23
  unreachable

_ZN3dpx6ReaderD2Ev.exit:                          ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2144) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN3dpx17ElementReadStreamC1EP8InStream(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3dpx6Reader11SetInStreamEP8InStream(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2144) initializes((2064, 2072)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  tail call void @_ZN3dpx6Reader5ResetEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Reader10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = tail call noundef zeroext i1 @_ZN3dpx6Header4ReadEP8InStream(ptr noundef nonnull align 4 dereferenceable(2049) %i.a, ptr noundef %i.c)
  ret i1 %i.d
}

declare noundef zeroext i1 @_ZN3dpx6Header4ReadEP8InStream(ptr noundef nonnull align 4 dereferenceable(2049), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Reader9ReadImageEiPv(ptr noundef nonnull align 8 dereferenceable(2144) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.dpx::Block", align 4       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %i.a)
  %i.c = add i32 %i.b, -1                         ; 3 uses
  %i.d = tail call noundef i32 @_ZNK3dpx6Header6HeightEv(ptr noundef nonnull align 4 dereferenceable(2049) %i.a)
  %i.e = add i32 %i.d, -1                         ; 3 uses
  store i32 0, ptr %3, align 4, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.c, ptr %i.g, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 %i.e, ptr %i.h, align 4, !tbaa !28
  %i.i = icmp slt i32 %i.c, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %3, align 4, !tbaa !24
  store i32 0, ptr %i.g, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = icmp slt i32 %i.e, 0
  br i1 %i.j, label %bb.d, label %_ZN3dpx5BlockC2Eiiii.exit

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.f, align 4, !tbaa !26
  store i32 0, ptr %i.h, align 4, !tbaa !28
  br label %_ZN3dpx5BlockC2Eiiii.exit

_ZN3dpx5BlockC2Eiiii.exit:                        ; preds = %bb.c, %bb.d
  %i.k = call noundef zeroext i1 @_ZN3dpx6Reader9ReadBlockEiPhRNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(2144) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %i.k
}

declare noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049)) local_unnamed_addr #1

declare noundef i32 @_ZNK3dpx6Header6HeightEv(ptr noundef nonnull align 4 dereferenceable(2049)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Reader9ReadBlockEiPhRNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(2144) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %.thread65, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit:  ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = zext nneg i32 %1 to i64                  ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.e = load i8, ptr %i.d, align 8, !tbaa !29
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %.thread65, label %_ZNK3dpx13GenericHeader13ImageEncodingEi.exit

_ZNK3dpx13GenericHeader13ImageEncodingEi.exit:    ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.g = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %i.a, i32 noundef %1) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 803
  %i.i = load i8, ptr %i.h, align 1, !tbaa !31    ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 806
  %i.k = load i16, ptr %i.j, align 2, !tbaa !32
  %i.l = icmp eq i16 %i.k, 1
  %i.m = tail call noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664) %i.a, i32 noundef %1) ; 6 uses
  br i1 %i.l, label %.thread, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %_ZNK3dpx13GenericHeader13ImageEncodingEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 812
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  %i.p = add i32 %i.o, 1
  %i.q = icmp ult i32 %i.p, 2
  br i1 %i.q, label %bb.b, label %bb.k

bb.b:                                             ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = icmp eq i8 %i.i, 8
  %i.s = icmp eq i32 %i.m, 0
  %or.cond3 = and i1 %i.r, %i.s
  br i1 %or.cond3, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i8 %i.i, 16
  %i.u = icmp eq i32 %i.m, 1
  %or.cond5 = and i1 %i.t, %i.u
  br i1 %or.cond5, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i8 %i.i, 32
  %i.w = icmp eq i32 %i.m, 3
  %or.cond7 = and i1 %i.v, %i.w
  br i1 %or.cond7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i8 %i.i, 64
  %i.y = icmp eq i32 %i.m, 4
  %or.cond9 = and i1 %i.x, %i.y
  br i1 %or.cond9, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.old = load i32, ptr %3, align 4, !tbaa !24
  %.old56 = icmp eq i32 %.old, 0
  br i1 %.old56, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27
  %i.ab = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %i.a)
  %i.ac = add i32 %i.ab, -1
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK3dpx13GenericHeader10DataOffsetEi.exit, label %bb.k

_ZNK3dpx13GenericHeader10DataOffsetEi.exit:       ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ak = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %i.a)
  %i.al = lshr i8 %i.i, 3
  %i.am = zext nneg i8 %i.al to i32
  %i.an = mul i32 %i.g, %i.am
  %i.ao = mul i32 %i.an, %i.aj
  %i.ap = mul i32 %i.ao, %i.ak
  %i.aq = add i32 %i.ap, %i.ah
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 noundef %i.ar, i32 noundef 0)
  br i1 %i.av, label %bb.h, label %.thread65

bb.h:                                             ; preds = %_ZNK3dpx13GenericHeader10DataOffsetEi.exit
  %i.aw = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %i.a)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ba = add i32 %i.ay, 1
  %i.bb = sub i32 %i.ba, %i.az
  %i.bc = mul i32 %i.aw, %i.g
  %i.bd = mul i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = zext nneg i8 %i.i to i64
  %i.bg = mul nuw nsw i64 %i.be, %i.bf
  %i.bh = lshr i64 %i.bg, 3                       ; 2 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef %2, i64 noundef %i.bh)
  %.not = icmp eq i64 %i.bm, %i.bh
  br i1 %.not, label %bb.i, label %.thread65

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !35
  %i.bo = tail call noundef zeroext i1 @_ZNK3dpx6Header17DetermineByteSwapEj(ptr noundef nonnull align 4 dereferenceable(2049) %i.a, i32 noundef %i.bn)
  br i1 %i.bo, label %bb.j, label %.thread65

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3dpx21EndianSwapImageBufferENS_8DataSizeEPvi(i32 noundef %i.m, ptr noundef %2, i32 noundef %i.bd)
  br label %.thread65

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.b ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.l, label %bb.o

.thread:                                          ; preds = %_ZNK3dpx13GenericHeader13ImageEncodingEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.b
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.thread65, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bx = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 4 uses
  invoke void @_ZN3dpx5CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bx, ptr %i.bq, align 8, !tbaa !20
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 16) #15
  resume { ptr, i32 } %i.by

bb.o:                                             ; preds = %.thread, %bb.m, %bb.k
  %i.bz = phi ptr [ %i.bv, %.thread ], [ %i.bx, %bb.m ], [ %i.br, %bb.k ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !9
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 4 dereferenceable(2049) %i.a, ptr noundef %i.cb, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %2, i32 noundef %i.m)
  br label %.thread65

.thread65:                                        ; preds = %.thread, %bb.o, %_ZNK3dpx13GenericHeader10DataOffsetEi.exit, %bb.i, %bb.j, %bb.h, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %bb.a
  %.2 = phi i1 [ false, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit ], [ false, %bb.a ], [ false, %bb.h ], [ %i.cf, %bb.o ], [ false, %_ZNK3dpx13GenericHeader10DataOffsetEi.exit ], [ true, %bb.i ], [ true, %bb.j ], [ false, %.thread ]
  ret i1 %.2
}

declare noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3dpx21EndianSwapImageBufferENS_8DataSizeEPvi(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  switch i32 %0, label %_ZN3dpx10SwapBufferItEEvPT_m.exit [
    i32 4, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %2 to i64                       ; 5 uses
  %.not.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i, label %_ZN3dpx10SwapBufferItEEvPT_m.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check47 = icmp ult i32 %2, 4
  br i1 %min.iters.check47, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i32 %2, 16
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph49

vector.ph49:                                      ; preds = %vector.main.loop.iter.check
  %n.vec51 = and i64 %i.a, -16                    ; 4 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph49
  %index53 = phi i64 [ 0, %vector.ph49 ], [ %index.next56, %vector.body52 ] ; 2 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index53 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load54 = load <8 x i16>, ptr %i.b, align 2, !tbaa !36
  %wide.load55 = load <8 x i16>, ptr %i.c, align 2, !tbaa !36
  %i.d = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load54)
  %i.e = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load55)
  store <8 x i16> %i.d, ptr %i.b, align 2, !tbaa !36
  store <8 x i16> %i.e, ptr %i.c, align 2, !tbaa !36
  %index.next56 = add nuw i64 %index53, 16        ; 2 uses
  %i.f = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.f, label %middle.block57, label %vector.body52, !llvm.loop !37

middle.block57:                                   ; preds = %vector.body52
  %cmp.n58 = icmp eq i64 %n.vec51, %i.a
  br i1 %cmp.n58, label %_ZN3dpx10SwapBufferItEEvPT_m.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block57
  %i.g = and i32 %2, 12
  %min.epilog.iters.check = icmp eq i32 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec51, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.a, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index61 ; 2 uses
  %wide.load62 = load <4 x i16>, ptr %i.h, align 2, !tbaa !36
  %i.i = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load62)
  store <4 x i16> %i.i, ptr %i.h, align 2, !tbaa !36
  %index.next63 = add nuw i64 %index61, 4         ; 2 uses
  %i.j = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.j, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %n.vec60, %i.a
  br i1 %cmp.n64, label %_ZN3dpx10SwapBufferItEEvPT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec51, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.06.i.i ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !36
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  store i16 %i.m, ptr %i.k, align 2, !tbaa !36
  %i.n = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.a
  br i1 %exitcond.not.i.i, label %_ZN3dpx10SwapBufferItEEvPT_m.exit, label %.lr.ph.i.i, !llvm.loop !43

bb.c:                                             ; preds = %bb.a
  %i.o = sext i32 %2 to i64                       ; 3 uses
  %.not.i.i8 = icmp eq i32 %2, 0
  br i1 %.not.i.i8, label %_ZN3dpx10SwapBufferItEEvPT_m.exit, label %.lr.ph.i.i9.preheader

.lr.ph.i.i9.preheader:                            ; preds = %bb.c
  %min.iters.check34 = icmp ult i32 %2, 8
  br i1 %min.iters.check34, label %.lr.ph.i.i9.preheader81, label %vector.ph35

vector.ph35:                                      ; preds = %.lr.ph.i.i9.preheader
  %n.vec37 = and i64 %i.o, -8                     ; 3 uses
end_hunk_0
