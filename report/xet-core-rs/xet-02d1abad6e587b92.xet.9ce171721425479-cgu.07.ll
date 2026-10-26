Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.07?download=true
inline.NumInlined: 1304
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs6_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECsQbU2fm3lSD_3xet:bb.a
  %.val6.i = load i64, ptr %i.ad, align 8, !alias.scope !1675, !noundef !11 ; 2 uses
  %i.ae = icmp eq i64 %.val6.i, 0
  br i1 %i.ae, label %_RNvXs3_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !1675, !nonnull !11, !noundef !11
  %i.ag = shl nuw nsw i64 %.val6.i, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ag, i64 noundef 2) #32, !noalias !1676
  br label %_RNvXs3_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsQbU2fm3lSD_3xet.exit

_RNvXs3_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !11 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 88686269585142076
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0                    ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.53.0.copyload.i, 1
  %i.am = lshr i64 %i.al, 1
  %.sroa.0.0 = select i1 %i.ak, i64 %.sroa.53.0.copyload.i, i64 %i.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.ao = add nuw nsw i64 %.sroa.0.0, %i.ai       ; 2 uses
  %i.ap = udiv i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, %i.ao            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1677, !noundef !11
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsdCDTHl3mYPb_4http6header3map14MaxSizeReachedE6expectCsQbU2fm3lSD_3xet.exit

.body:                                            ; preds = %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ed, %bb.eh, %bb.em, %.body.i43, %bb.bs, %bb.bw, %bb.bx, %.body36.thread121, %bb.aa, %bb.h, %.body.i, %bb.y
  %.pn = phi { ptr, i32 } [ %eh.lpad-body37124, %.body36.thread121 ], [ %i.sz, %bb.ed ], [ %i.bq, %bb.h ], [ %i.ev, %bb.y ], [ %i.tq, %bb.eh ], [ %eh.lpad-body.i, %.body.i ], [ %i.ev, %bb.aa ], [ %eh.lpad-body.i44, %.body.i43 ], [ %i.md, %bb.bw ], [ %i.lp, %bb.bs ], [ %i.md, %bb.bx ], [ %i.uh, %bb.em ], [ %lpad.loopexit.split-lp808, %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdCDTHl3mYPb_4http6header3map8IntoIterNtNtBG_5value11HeaderValueEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(72) %i.w) #37
          to label %bb.eo unwind label %bb.ab

bb.c:                                             ; preds = %_RNvXs3_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsQbU2fm3lSD_3xet.exit
  %i.av = icmp samesign ult i64 %i.aq, 2
  %i.aw = add nsw i64 %i.aq, -1
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = lshr i64 -1, %i.ax
  %.sroa.022.0.i = select i1 %i.av, i64 0, i64 %i.ay ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.022.0.i, 1       ; 6 uses
  %or.cond.i = icmp samesign ugt i64 %.sroa.022.0.i, 32767
  br i1 %or.cond.i, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit.thread.invoke, label %bb.d, !prof !1678

bb.d:                                             ; preds = %bb.c
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap8try_growCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.az) #41
          to label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.bb = trunc nuw i64 %i.az to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = add i16 %i.bb, -1
  store i16 %i.bd, ptr %i.bc, align 8, !alias.scope !1677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1679
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.az, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4)
          to label %.noexc21 unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.f
  %i.be = load i64, ptr %i.l, align 8, !range !15, !noalias !1679, !noundef !11
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !38, !noalias !1679, !noundef !11 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.g, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i.i, !prof !12

bb.g:                                             ; preds = %.noexc21
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !1679
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.g
  %i.bk = phi i64 [ %i.bh, %bb.g ], [ %i.cc, %bb.k ]
  %i.bl = phi i64 [ %i.bj, %bb.g ], [ %i.ce, %bb.k ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bl) #36
          to label %.cont unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %.noexc21
  %i.bm = load ptr, ptr %i.bi, align 8, !noalias !1679, !nonnull !11, !noundef !11
  %i.bn = icmp ult i64 %.sroa.022.0.i, %i.bh
  tail call void @llvm.assume(i1 %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1679
  store i64 %i.bh, ptr %i.m, align 8, !noalias !1679
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bm, ptr %i.bo, align 8, !noalias !1679
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.bp, align 8, !noalias !1679
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE11extend_withCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.az, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsQbU2fm3lSD_3xet.exit.i unwind label %bb.h, !noalias !1679

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #37
          to label %.body unwind label %bb.i, !noalias !1679

bb.i:                                             ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1679
  unreachable

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsQbU2fm3lSD_3xet.exit.i: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1679
  %i.bs = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE16into_boxed_sliceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc23 unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsQbU2fm3lSD_3xet.exit.i
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1677
  %.val30.i = load i64, ptr %i.as, align 8, !alias.scope !1677, !noundef !11 ; 2 uses
  %i.bv = icmp eq i64 %.val30.i, 0
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit.i, label %bb.j

bb.j:                                             ; preds = %.noexc23
  %.val.i19 = load ptr, ptr %i.ar, align 8, !alias.scope !1677, !nonnull !11, !noundef !11
  %i.bw = shl nuw nsw i64 %.val30.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i19, i64 noundef range(i64 1, 0) %i.bw, i64 noundef 2) #32, !noalias !1677
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.j, %.noexc23
  store ptr %i.bt, ptr %i.ar, align 8, !alias.scope !1677
  store i64 %i.bu, ptr %i.as, align 8, !alias.scope !1677
  %i.bx = lshr i64 %i.az, 2
  %i.by = sub nuw nsw i64 %i.az, %i.bx            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1677
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.by, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc24 unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit.i
  %i.bz = load i64, ptr %i.n, align 8, !range !15, !noalias !1677, !noundef !11
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !38, !noalias !1677, !noundef !11 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %.noexc24
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !1677
  br label %.invoke

bb.l:                                             ; preds = %.noexc24
  %i.cf = load ptr, ptr %i.cd, align 8, !noalias !1677, !nonnull !11, !noundef !11 ; 2 uses
  %i.cg = icmp samesign ule i64 %i.by, %i.cc
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1677
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit.i unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cj, %bb.p ], [ %i.ch, %bb.m ]
  store i64 %i.cc, ptr %i.an, align 8, !alias.scope !1677
  %.sroa.5.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cf, ptr %.sroa.5.0..sroa_idx.i20, align 8, !alias.scope !1677
  store i64 0, ptr %i.ah, align 8, !alias.scope !1677
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.n
  store i64 %i.cc, ptr %i.an, align 8, !alias.scope !1677
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cf, ptr %.sroa.5.0..sroa_idx18.i, align 8, !alias.scope !1677
  store i64 0, ptr %i.ah, align 8, !alias.scope !1677
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsdCDTHl3mYPb_4http6header3map14MaxSizeReachedE6expectCsQbU2fm3lSD_3xet.exit

_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit: ; preds = %bb.e
  br i1 %i.ba, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit.thread.invoke, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsdCDTHl3mYPb_4http6header3map14MaxSizeReachedE6expectCsQbU2fm3lSD_3xet.exit, !prof !1680

_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit.thread.invoke: ; preds = %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit, %bb.c, %bb.dt
  %i.ck = phi ptr [ @54, %bb.dt ], [ @50, %bb.c ], [ @50, %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck) #39
          to label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit.thread.cont unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit.thread.cont: ; preds = %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit.thread.invoke
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsdCDTHl3mYPb_4http6header3map14MaxSizeReachedE6expectCsQbU2fm3lSD_3xet.exit: ; preds = %_RNvXs3_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsQbU2fm3lSD_3xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit.i, %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap11try_reserveCsQbU2fm3lSD_3xet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.cl = load i64, ptr %i.w, align 8, !range !15, !alias.scope !1682, !noundef !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsdCDTHl3mYPb_4http6header3map14MaxSizeReachedE6expectCsQbU2fm3lSD_3xet.exit
  %i.co = load i64, ptr %i.cm, align 8, !alias.scope !1682, !noundef !11 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !1682, !noundef !11 ; 2 uses
  %i.cr = icmp ult i64 %i.co, %i.cq
  br i1 %i.cr, label %bb.s, label %.invoke616

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsdCDTHl3mYPb_4http6header3map14MaxSizeReachedE6expectCsQbU2fm3lSD_3xet.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.cs = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1684, !nonnull !11, !noundef !11
  %i.ct = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1684, !nonnull !11, !noundef !11 ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.cs
  br i1 %i.cu, label %bb.u, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1684
  %.sroa.0.0.copyload.i = load i64, ptr %i.ct, align 8, !noalias !1685 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %.not.i, label %bb.u, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !1682, !nonnull !11, !noundef !11
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.cx, i64 %i.co ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !range !15, !noalias !1686, !noundef !11
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.t, label %bb.x

.invoke616:                                       ; preds = %.lr.ph, %bb.q
  %i.dc = phi i64 [ %i.co, %bb.q ], [ %i.rx, %.lr.ph ]
  %i.dd = phi i64 [ %i.cq, %bb.q ], [ %i.ry, %.lr.ph ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dc, i64 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #39
          to label %.cont617 unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont617:                                         ; preds = %.invoke616
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.df = load i64, ptr %i.de, align 8, !noalias !1686, !noundef !11
  br label %bb.x

bb.u:                                             ; preds = %bb.r, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.v

bb.v:                                             ; preds = %bb.dx, %bb.u
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdCDTHl3mYPb_4http6header3map8IntoIterNtNtBG_5value11HeaderValueEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(72) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.w:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit.i
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1685
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dh = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  %.sroa.56.0.i = select i1 %i.dh, i64 %.sroa.7.0.copyload.i, i64 undef
  store i64 %.sroa.0.0.copyload.i, ptr %i.w, align 8, !alias.scope !1682
  store i64 %.sroa.56.0.i, ptr %i.cm, align 8, !alias.scope !1682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.dg, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7102.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8105.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.7102.8..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.8105.8..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ej = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.ac

bb.x:                                             ; preds = %bb.t, %bb.s
  %.sroa.5.0.i = phi i64 [ %i.df, %bb.t ], [ undef, %bb.s ]
  %.sroa.0.0.i27 = phi i64 [ 1, %bb.t ], [ 0, %bb.s ]
  store i64 %.sroa.0.0.i27, ptr %i.w, align 8, !alias.scope !1682
  store i64 %.sroa.5.0.i, ptr %i.cm, align 8, !alias.scope !1682
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.54.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.eu, i64 40, i1 false), !noalias !1682
  store i64 0, ptr %i.u, align 8, !alias.scope !1681
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull inttoptr (i64 73 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #36
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load i64, ptr %i.u, align 8, !range !24, !noundef !11
  %.not10 = icmp eq i64 %i.ew, 2
  br i1 %.not10, label %.body, label %bb.aa

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %i.ex = load ptr, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1690, !nonnull !11, !align !13, !noundef !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !1690, !nonnull !11, !noundef !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1690, !noundef !11
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1690, !noundef !11
  invoke void %i.ez(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef %i.fc, i64 noundef %i.fe)
          to label %.body unwind label %bb.ab, !inline_history !4

bb.ab:                                            ; preds = %.body36.thread121, %bb.aa, %.body
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ac:                                            ; preds = %bb.dy, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.833.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  %i.fg = load i64, ptr %i.ah, align 8, !alias.scope !1694, !noundef !11 ; 4 uses
  %i.fh = icmp ult i64 %i.fg, 88686269585142076
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load i64, ptr %0, align 8, !range !24, !alias.scope !1694, !noundef !11
  %i.fj = icmp eq i64 %i.fi, 1
  %i.fk = load i64, ptr %i.as, align 8, !alias.scope !1694, !noundef !11 ; 5 uses
  br i1 %i.fj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = lshr i64 %i.fk, 2
  %i.fm = sub nuw i64 %i.fk, %i.fl
  %i.fn = icmp eq i64 %i.fg, %i.fm
  br i1 %i.fn, label %bb.af, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsQbU2fm3lSD_3xet.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.fo = uitofp nneg i64 %i.fg to float
  %i.fp = uitofp i64 %i.fk to float
  %i.fq = fdiv float %i.fo, %i.fp
  %i.fr = fcmp ult float %i.fq, 2.000000e-01
  br i1 %i.fr, label %bb.as, label %bb.at

bb.af:                                            ; preds = %bb.ad
  %i.fs = icmp eq i64 %i.fg, 0
  br i1 %i.fs, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  store i16 7, ptr %i.di, align 8, !alias.scope !1694
end_hunk_0
begin_hunk_1_@_RINvXs6_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECsQbU2fm3lSD_3xet:bb.a
  %i.ta = load ptr, ptr %i.eq, align 8, !alias.scope !1823, !noalias !1814, !nonnull !11, !align !13, !noundef !11
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  %i.tc = load ptr, ptr %i.tb, align 8, !noalias !1824, !nonnull !11, !noundef !11
  %i.td = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.tf = load ptr, ptr %i.te, align 8, !alias.scope !1823, !noalias !1814, !noundef !11
  %i.tg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.th = load i64, ptr %i.tg, align 8, !alias.scope !1823, !noalias !1814, !noundef !11
  invoke void %i.tc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.td, ptr noundef %i.tf, i64 noundef %i.th)
          to label %.body unwind label %bb.ee, !noalias !1825, !inline_history !1601

bb.ee:                                            ; preds = %bb.ed
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1825
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.ec, %bb.eb
  %i.tj = load ptr, ptr %i.ds, align 8, !alias.scope !1817, !noalias !1811, !nonnull !11, !noundef !11
  %i.tk = getelementptr inbounds nuw [72 x i8], ptr %i.tj, i64 %i.sv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tk, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1825
  %i.tl = add nuw nsw i64 %i.sv, 1                ; 2 uses
  store i64 %i.tl, ptr %i.dt, align 8, !alias.scope !1817, !noalias !1811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1814
  %.not.i.i = icmp ugt i64 %i.su, %i.sv
  br i1 %.not.i.i, label %.noexc.i71, label %bb.ej

bb.ef:                                            ; preds = %bb.ea
  %i.tm = load i64, ptr %i.dt, align 8, !alias.scope !1813, !noalias !1811, !noundef !11 ; 6 uses
  %i.tn = icmp ult i64 %i.tm, 128102389400760776
  call void @llvm.assume(i1 %i.tn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef nonnull align 8 dereferenceable(40) %i.sn, i64 40, i1 false)
  store i64 0, ptr %i.b, align 8, !noalias !1814
  store i64 %.sroa.7.0, ptr %i.en, align 8, !noalias !1814
  store i64 0, ptr %i.eo, align 8, !noalias !1814
  store i64 %.sroa.7.0, ptr %i.ep, align 8, !noalias !1814
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %i.to = load i64, ptr %i.el, align 8, !range !18, !alias.scope !1828, !noalias !1811, !noundef !11
  %i.tp = icmp eq i64 %i.tm, %i.to
  br i1 %i.tp, label %bb.eg, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs9ekcjykjQb7_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.el)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i unwind label %bb.eh, !noalias !1829

bb.eh:                                            ; preds = %bb.eg
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  %i.tr = load ptr, ptr %i.em, align 8, !alias.scope !1834, !noalias !1814, !nonnull !11, !align !13, !noundef !11
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tt = load ptr, ptr %i.ts, align 8, !noalias !1835, !nonnull !11, !noundef !11
  %i.tu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.tv = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.tw = load ptr, ptr %i.tv, align 8, !alias.scope !1834, !noalias !1814, !noundef !11
  %i.tx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ty = load i64, ptr %i.tx, align 8, !alias.scope !1834, !noalias !1814, !noundef !11
  invoke void %i.tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.tu, ptr noundef %i.tw, i64 noundef %i.ty)
          to label %.body unwind label %bb.ei, !noalias !1825, !inline_history !1601

bb.ei:                                            ; preds = %bb.eh
  %i.tz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1825
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i: ; preds = %bb.eg, %bb.ef
  %i.ua = load ptr, ptr %i.ds, align 8, !alias.scope !1828, !noalias !1811, !nonnull !11, !noundef !11
  %i.ub = getelementptr inbounds nuw [72 x i8], ptr %i.ua, i64 %i.tm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ub, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1825
  %i.uc = add nuw nsw i64 %i.tm, 1
  store i64 %i.uc, ptr %i.dt, align 8, !alias.scope !1828, !noalias !1811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1814
  store i64 1, ptr %i.sq, align 8, !alias.scope !1812, !noalias !1811
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store i64 %i.tm, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1812, !noalias !1811
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store i64 %i.tm, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !1812, !noalias !1811
  br label %_RNvMsO_NtNtCsdCDTHl3mYPb_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsQbU2fm3lSD_3xet.exit

bb.ej:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i
  %i.ud = load ptr, ptr %i.ds, align 8, !alias.scope !1813, !noalias !1811, !nonnull !11, !noundef !11
  %i.ue = getelementptr inbounds nuw [72 x i8], ptr %i.ud, i64 %i.su ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store i64 1, ptr %i.uf, align 8, !noalias !1825
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  store i64 %i.sv, ptr %i.ug, align 8, !noalias !1825
  store i64 1, ptr %i.sq, align 8, !alias.scope !1812, !noalias !1811
  store i64 %i.sv, ptr %i.st, align 8, !alias.scope !1812, !noalias !1811
  br label %_RNvMsO_NtNtCsdCDTHl3mYPb_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsQbU2fm3lSD_3xet.exit

.noexc.i71:                                       ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.su, i64 noundef %i.tl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #36
          to label %.noexc72 unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %.noexc.i71
  unreachable

bb.ek:                                            ; preds = %bb.dz
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.0, i64 noundef %i.so, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #36
          to label %bb.el unwind label %bb.em, !noalias !1811

bb.el:                                            ; preds = %bb.ek
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.uh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.ui = load ptr, ptr %i.p, align 8, !alias.scope !1839, !nonnull !11, !align !13, !noundef !11
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  %i.uk = load ptr, ptr %i.uj, align 8, !noalias !1839, !nonnull !11, !noundef !11
  %i.ul = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.um = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !alias.scope !1839, !noundef !11
  %i.uo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.up = load i64, ptr %i.uo, align 8, !alias.scope !1839, !noundef !11
  invoke void %i.uk(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ul, ptr noundef %i.un, i64 noundef %i.up)
          to label %.body unwind label %bb.en, !inline_history !4

bb.en:                                            ; preds = %bb.em
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMsO_NtNtCsdCDTHl3mYPb_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsQbU2fm3lSD_3xet.exit: ; preds = %bb.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ur = load i64, ptr %i.w, align 8, !range !15, !alias.scope !1840, !noundef !11
  %i.us = trunc nuw i64 %i.ur to i1
  br i1 %i.us, label %.lr.ph, label %._crit_edge

.body36.thread121:                                ; preds = %.body36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bm, %.body.i32
  %eh.lpad-body37124 = phi { ptr, i32 } [ %eh.lpad-body.i33, %bb.bm ], [ %eh.lpad-body.i33, %.body.i32 ], [ %lpad.loopexit.split-lp801, %.body36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %i.ut = load ptr, ptr %i.v, align 8, !alias.scope !1844, !nonnull !11, !align !13, !noundef !11
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.uv = load ptr, ptr %i.uu, align 8, !noalias !1844, !nonnull !11, !noundef !11
  %i.uw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8, !alias.scope !1844, !noundef !11
  %i.uz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.va = load i64, ptr %i.uz, align 8, !alias.scope !1844, !noundef !11
  invoke void %i.uv(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uw, ptr noundef %i.uy, i64 noundef %i.va)
          to label %.body unwind label %bb.ab, !inline_history !4

bb.eo:                                            ; preds = %.body
  resume { ptr, i32 } %.pn

infloop:                                          ; preds = %.outer790, %infloop
  br label %infloop

infloop1138:                                      ; preds = %.outer, %infloop1138
  br label %infloop1138

infloop1140:                                      ; preds = %.outer795, %infloop1140
  br label %infloop1140

infloop1142:                                      ; preds = %.outer791, %infloop1142
  br label %infloop1142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashINtNtB8_18passthrough_hasher15U64DirectHasherB15_EECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !11
  store i64 %i.a, ptr %1, align 8, !alias.scope !1847
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !1864
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1864
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !1864
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1864
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !1865, !nonnull !11, !noundef !11 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !noalias !1865, !noundef !11 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  switch i64 %.val1.i, label %.lr.ph.preheader.split.i.split.i.i [
    i64 0, label %._crit_edge.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i
  ]

.lr.ph.preheader.split.i.split.i.i:               ; preds = %bb.a
  %i.j = add i64 %.val1.i, -3                     ; 2 uses
  br label %.lr.ph.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i: ; preds = %bb.r
  %i.k = add i64 %.val1.i, -1                     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bi
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.n = icmp eq i8 %i.m, 47
  br i1 %i.n, label %bb.b, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i: ; preds = %bb.a
  %i.o = load i8, ptr %.val.i, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.p = icmp eq i8 %i.o, 47
  br i1 %i.p, label %.thread.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i
  %i.q = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %i.k, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ] ; 2 uses
  %i.r = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %i.bi, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ]
  %i.s = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %.sroa.012.2.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ]
  %i.t = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %.sroa.0.1.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ]
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.q
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !alias.scope !1866, !noalias !1867
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i

bb.b:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i
  %.not.i.i = icmp ult i64 %i.j, %.sroa.0.1.i.i.i
  br i1 %.not.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = sub nuw i64 %i.bi, %.sroa.0.1.i.i.i      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.1.i.i.i
  %i.w = add i64 %i.u, %.sroa.012.2.i.i.i         ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 62)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u) #41
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i
  %i.y = phi i64 [ %i.bi, %bb.c ], [ %i.bi, %bb.b ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ]
  %i.z = phi i64 [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.012.2.i.i.i, %bb.b ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ]
  %i.aa = sub nuw i64 %.val1.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.z ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 1
  %i.ad = load i8, ptr %i.ab, align 1, !alias.scope !1866, !noalias !1867, !noundef !11 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 46                    ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread.i.i
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.ah = icmp eq i8 %i.ag, 47
  br i1 %i.ah, label %bb.h, label %bb.g

bb.f:                                             ; preds = %.thread.i.i
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.024.0.i.peel.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ]
  %i.ai = add i64 %.sroa.024.0.i.peel.i.i, %i.z
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i

._crit_edge.loopexit.peel.begin.i.peel.next.i.i:  ; preds = %bb.h, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i
  %i.aj = phi i64 [ %i.z, %bb.h ], [ %i.q, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ]
  %i.ak = phi i64 [ %i.y, %bb.h ], [ %i.r, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ] ; 2 uses
  %i.al = phi i8 [ %i.ad, %bb.h ], [ %.pre.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ]
  %.sroa.012.2.i.peel.i.i = phi i64 [ %.sroa.012.3.i.peel.i.i, %bb.h ], [ %i.s, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ] ; 3 uses
  %.sroa.0.1.i.peel.i.i = phi i64 [ %i.ai, %bb.h ], [ %i.t, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ] ; 4 uses
  %i.am = add nuw i64 %i.ak, 2                    ; 8 uses
  %i.an = icmp eq i8 %i.al, 47
  br i1 %i.an, label %bb.i, label %._crit_edge.i.i.i

._crit_edge.loopexit.peel.begin.thread.i.i.i:     ; preds = %bb.a
  %i.ao = load i8, ptr %.val.i, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.ap = icmp eq i8 %i.ao, 47
  br i1 %i.ap, label %.thread48.i.i.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next.i.i
  %.not.i.i.i = icmp ult i64 %i.ak, %.sroa.0.1.i.peel.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = sub nuw i64 %i.aj, %.sroa.0.1.i.peel.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.1.i.peel.i.i
  %i.as = add i64 %i.aq, %.sroa.012.2.i.peel.i.i  ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 62)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.aq) #41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.012.3.peel.i.i.i = phi i64 [ %i.at, %bb.j ], [ %.sroa.012.2.i.peel.i.i, %bb.i ] ; 6 uses
  %i.au = sub nuw i64 %.val1.i, %i.am
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.am ; 3 uses
  %i.aw = icmp eq i64 %i.au, 1
  br i1 %i.aw, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not27.peel.i.i.i = icmp eq i64 %.val1.i, %i.am
  br i1 %.not27.peel.i.i.i, label %.thread48.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i8, ptr %i.av, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.ay = icmp eq i8 %i.ax, 46
  br i1 %i.ay, label %bb.n, label %.thread48.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.bb = icmp eq i8 %i.ba, 47
  br i1 %i.bb, label %bb.p, label %.thread48.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.av, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.bd = icmp eq i8 %i.bc, 46
  br i1 %i.bd, label %bb.p, label %.thread48.i.i.i

.thread48.i.i.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %._crit_edge.loopexit.peel.begin.thread.i.i.i
  %.sroa.012.3.peel45.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i, %bb.o ], [ %.sroa.012.3.peel.i.i.i, %bb.n ], [ %.sroa.012.3.peel.i.i.i, %bb.m ], [ %.sroa.012.3.peel.i.i.i, %bb.l ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i ]
  %i.be = phi i64 [ %i.am, %bb.o ], [ %i.am, %bb.n ], [ %i.am, %bb.m ], [ %.val1.i, %bb.l ], [ 1, %._crit_edge.loopexit.peel.begin.thread.i.i.i ]
  br label %bb.p

bb.p:                                             ; preds = %.thread48.i.i.i, %bb.o, %bb.n
  %.sroa.012.3.peel44.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i, %bb.o ], [ %.sroa.012.3.peel45.i.i.i, %.thread48.i.i.i ], [ %.sroa.012.3.peel.i.i.i, %bb.n ]
  %i.bf = phi i64 [ %i.am, %bb.o ], [ %i.be, %.thread48.i.i.i ], [ %i.am, %bb.n ]
  %.sroa.024.0.peel.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %.thread48.i.i.i ], [ 1, %bb.n ]
  %i.bg = add i64 %.sroa.024.0.peel.i.i.i, %i.bf
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.p, %._crit_edge.loopexit.peel.begin.thread.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i, %bb.a
  %.sroa.012.0.lcssa.i.i.i = phi i64 [ %.val1.i, %bb.a ], [ %.sroa.012.3.peel44.i.i.i, %bb.p ], [ %.sroa.012.2.i.peel.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.val1.i, %bb.a ], [ %i.bg, %bb.p ], [ %.sroa.0.1.i.peel.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i ] ; 3 uses
  %i.bh = icmp ult i64 %.sroa.0.0.lcssa.i.i.i, %.val1.i
  br i1 %i.bh, label %bb.q, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.preheader.split.i.split.i.i
  %.sroa.0.032.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %bb.r ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i = phi i64 [ %.sroa.012.2.i.i.i, %bb.r ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i = phi i64 [ %i.bi, %bb.r ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 5 uses
  %i.bi = add nuw i64 %.sroa.019.030.i.i.i, 1     ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.019.030.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.bl = icmp eq i8 %i.bk, 47
  br i1 %i.bl, label %bb.s, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = sub nuw i64 %.val1.i, %.sroa.0.0.lcssa.i.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.lcssa.i.i.i
  %i.bo = add i64 %i.bm, %.sroa.012.0.lcssa.i.i.i ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 62)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef range(i64 0, -9223372036854775808) %i.bm) #41
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit

bb.r:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %.sroa.012.2.i.i.i = phi i64 [ %.sroa.012.3.i.i.i, %bb.x ], [ %.sroa.012.031.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.ca, %bb.x ], [ %.sroa.0.032.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.019.030.i.i.i, %i.j
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i, label %.lr.ph.i.i.i, !llvm.loop !1856

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = icmp ugt i64 %.sroa.019.030.i.i.i, %.sroa.0.032.i.i.i
  br i1 %i.bq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.012.3.i.i.i = phi i64 [ %i.bz, %bb.u ], [ %.sroa.012.031.i.i.i, %bb.s ]
  %i.br = sub nuw i64 %.val1.i, %i.bi
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bi ; 2 uses
  %i.bt = icmp eq i64 %i.br, 1
  %i.bu = load i8, ptr %i.bs, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.bv = icmp eq i8 %i.bu, 46                    ; 2 uses
  br i1 %i.bt, label %bb.v, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bw = sub nuw i64 %.sroa.019.030.i.i.i, %.sroa.0.032.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.032.i.i.i
  %i.by = add i64 %i.bw, %.sroa.012.031.i.i.i     ; 2 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 62)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef range(i64 0, -9223372036854775808) %i.bw) #41
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  br i1 %i.bv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.y, %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w, %bb.v
  %.sroa.024.0.i.i.i = phi i64 [ 1, %bb.v ], [ 0, %bb.w ], [ 1, %bb.z ]
  %i.ca = add i64 %.sroa.024.0.i.i.i, %i.bi
  br label %bb.r

bb.y:                                             ; preds = %bb.t
  br i1 %i.bv, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.cd = icmp eq i8 %i.cc, 47
  br i1 %i.cd, label %bb.x, label %bb.w

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit: ; preds = %._crit_edge.i.i.i, %bb.q
  %.sroa.012.1.i.i.i = phi i64 [ %i.bp, %bb.q ], [ %.sroa.012.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1869
  store i64 %.sroa.012.1.i.i.i, ptr %i.a, align 8, !noalias !1869
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #41, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1869
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !1870
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1870
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1870 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1870
  %i.ce = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !1870, !noundef !11
  %i.cf = shl i64 %i.ce, 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1870, !noundef !11
  %i.ci = or i64 %i.cf, %i.ch                     ; 2 uses
  %i.cj = xor i64 %i.ci, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.ck = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.cl = add i64 %i.cj, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.cn = xor i64 %i.cm, %i.ck                    ; 3 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 16)
  %i.cp = xor i64 %i.co, %i.cl                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 32)
  %i.cr = add i64 %i.cl, %i.cn                    ; 3 uses
  %i.cs = add i64 %i.cp, %i.cq                    ; 2 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 17)
  %i.cu = xor i64 %i.cr, %i.ct                    ; 3 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 21)
  %i.cw = xor i64 %i.cv, %i.cs                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 32)
  %i.cy = xor i64 %i.cs, %i.ci
  %i.cz = xor i64 %i.cx, 255
  %i.da = add i64 %i.cy, %i.cu                    ; 3 uses
  %i.db = add i64 %i.cw, %i.cz                    ; 2 uses
  %i.dc = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 13)
  %i.dd = xor i64 %i.da, %i.dc                    ; 3 uses
  %i.de = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 16)
  %i.df = xor i64 %i.de, %i.db                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.dh = add i64 %i.dd, %i.db                    ; 3 uses
  %i.di = add i64 %i.df, %i.dg                    ; 2 uses
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 17)
  %i.dk = xor i64 %i.dh, %i.dj                    ; 3 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 21)
  %i.dm = xor i64 %i.dl, %i.di                    ; 3 uses
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 32)
  %i.do = add i64 %i.dk, %i.di                    ; 3 uses
  %i.dp = add i64 %i.dm, %i.dn                    ; 2 uses
  %i.dq = tail call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 13)
  %i.dr = xor i64 %i.dq, %i.do                    ; 3 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 16)
  %i.dt = xor i64 %i.ds, %i.dp                    ; 3 uses
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 32)
  %i.dv = add i64 %i.dr, %i.dp                    ; 3 uses
  %i.dw = add i64 %i.dt, %i.du                    ; 2 uses
  %i.dx = tail call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 17)
  %i.dy = xor i64 %i.dx, %i.dv                    ; 3 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 21)
  %i.ea = xor i64 %i.dz, %i.dw                    ; 3 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 32)
  %i.ec = add i64 %i.dy, %i.dw
  %i.ed = add i64 %i.ea, %i.eb                    ; 2 uses
  %i.ee = tail call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 13)
  %i.ef = xor i64 %i.ee, %i.ec                    ; 3 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 16)
  %i.eh = xor i64 %i.eg, %i.ed                    ; 2 uses
  %i.ei = add i64 %i.ef, %i.ed                    ; 3 uses
  %i.ej = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 17)
  %i.ek = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 21)
  %i.el = tail call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 32)
  %i.em = xor i64 %i.ek, %i.ej
  %i.en = xor i64 %i.em, %i.el
  %i.eo = xor i64 %i.en, %i.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.eo
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !1887
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1887
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !1887
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1887
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !1888, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !noalias !1888, !noundef !11
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1889
  store i8 -1, ptr %i.a, align 1, !noalias !1889
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #41, !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1889
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !1891
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1891
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1891 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1891
  %i.j = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !1891, !noundef !11
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1891, !noundef !11
  %i.n = or i64 %i.k, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
end_hunk_1
begin_hunk_2_@_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB6_29AdaptiveConcurrencyController17report_and_update0CsQbU2fm3lSD_3xet:bb.a

_RNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB8_29AdaptiveConcurrencyController17report_and_update0s1_0CsQbU2fm3lSD_3xet.exit: ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.critedge113

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync5mutex10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateEECsQbU2fm3lSD_3xet.exit: ; preds = %.body193, %bb.bk, %bb.ex
  %.pn101 = phi { ptr, i32 } [ %i.un, %bb.ex ], [ %.pn92.pn.pn.pn.pn.pn.pn.pn, %bb.bk ], [ %eh.lpad-body194, %.body193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.w

bb.ex:                                            ; preds = %bb.ei
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync5mutex10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateEECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync5mutex10MutexGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateEECsQbU2fm3lSD_3xet.exit245: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %common.ret

bb.ey:                                            ; preds = %bb.ew, %bb.eu
  %.pn92.pn = phi { ptr, i32 } [ %i.um, %bb.ew ], [ %i.ty, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ez

bb.ez:                                            ; preds = %bb.eq, %bb.ey
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.ey ], [ %i.tq, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.em, %bb.ez
  %.pn92.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn, %bb.ez ], [ %i.ta, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dg
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCsUrhh0HcRih_5tokio4task8join_setINtB2_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultTjNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB1B_5error9DataErrorEEE3newCsQbU2fm3lSD_3xet() unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs2_NtNtCsUrhh0HcRih_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTjNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB2D_5error9DataErrorEEEE3newCsQbU2fm3lSD_3xet()
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCsUrhh0HcRih_5tokio4task8join_setINtB2_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEE3newCsQbU2fm3lSD_3xet() unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs2_NtNtCsUrhh0HcRih_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEE3newCsQbU2fm3lSD_3xet()
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB2_2TxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE5closeCsQbU2fm3lSD_3xet(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 acquire, align 8 ; 2 uses
  %i.c = and i64 %i.b, -32                        ; 3 uses
  %i.d = load atomic ptr, ptr %0 acquire, align 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1536
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.c
  br i1 %i.g, label %_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB2_2TxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE10find_blockCsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = sub i64 %i.c, %i.f
  %i.i = lshr i64 %i.h, 5
  %i.j = and i64 %i.b, 31
  %i.k = icmp samesign ugt i64 %i.i, %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.010.i = phi i1 [ %i.k, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.e ]
  %.sroa.05.09.i = phi ptr [ %i.d, %.lr.ph.i ], [ %.sroa.02.0.i, %bb.e ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1544
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull ptr @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE4growCsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %.sroa.05.09.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1552 ; 2 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp eq i64 %i.r, 4294967295
  %i.t = and i1 %.sroa.0.010.i, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.1.i = phi i1 [ true, %bb.g ], [ false, %bb.d ], [ false, %bb.f ]
  tail call void @llvm.x86.sse2.pause()
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 1536
  %i.v = load i64, ptr %i.u, align 8, !noundef !11
  %i.w = icmp eq i64 %i.v, %i.c
  br i1 %i.w, label %_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB2_2TxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE10find_blockCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.x = cmpxchg ptr %0, ptr %.sroa.05.09.i, ptr %.sroa.02.0.i release monotonic, align 8
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.z = atomicrmw or ptr %i.a, i64 0 release, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1560
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = atomicrmw or ptr %i.p, i64 4294967296 release, align 8 ; 0 uses
  br label %bb.e

_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB2_2TxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE10find_blockCsQbU2fm3lSD_3xet.exit: ; preds = %bb.e, %bb.a
  %.sroa.05.0.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %.sroa.02.0.i, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.lcssa.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 1552
  %i.ad = atomicrmw or ptr %i.ac, i64 8589934592 release, align 8 ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB2_16SyncWriterThread10next_write(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.912.i = alloca [40 x i8], align 8        ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.610 = alloca [32 x i8], align 8          ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 3 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [64 x i8], align 8                ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 17 uses
  %i.q = alloca [8 x i8], align 8                 ; 13 uses
  %.sroa.18 = alloca [39 x i8], align 1           ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %.not = icmp eq i64 %i.s, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit, %bb.a
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit ], [ %i.s, %bb.a ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 2, ptr %1, align 8
  switch i64 %.sroa.0.0.copyload, label %bb.ag [
    i64 2, label %bb.af
    i64 0, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  br i1 %2, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8, !noalias !2118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2118
  call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE3popCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.w), !noalias !2119
  %i.z = load i64, ptr %i.c, align 8, !range !25, !noalias !2118, !noundef !11 ; 2 uses
  switch i64 %i.z, label %bb.f [
    i64 -1, label %bb.e
    i64 2, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2117, !noalias !2120, !noundef !11
  %i.ac = icmp eq i64 %i.y, %i.ab
  %spec.select.i = select i1 %i.ac, i64 2, i64 4
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i

bb.f:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx9.i, i64 40, i1 false), !noalias !2121
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.copyload73 = phi i64 [ %i.z, %bb.f ], [ 3, %bb.d ], [ %spec.select.i, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2118
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload73, i64 1) ; 2 uses
  switch i64 %i.ad, label %.loopexit.i [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.m
    i64 3, label %bb.i
  ]

.loopexit.i:                                      ; preds = %bb.u, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i
  unreachable

bb.g:                                             ; preds = %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2120
  store i64 %.sroa.0.0.copyload73, ptr %i.f, align 8, !noalias !2120
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !2120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  invoke void @_RNvXsf_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.ae)
          to label %bb.l unwind label %bb.k, !noalias !2120

bb.h:                                             ; preds = %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.ag = load i8, ptr %i.af, align 8, !range !14, !noalias !2120, !noundef !11
  br label %bb.m

bb.i:                                             ; preds = %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 256 ; 2 uses
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ah), !noalias !2120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2120
  %i.ai = call { ptr, ptr } @_RNvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a), !noalias !2120 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_4task4wake5WakerNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE6unwrapCsQbU2fm3lSD_3xet.exit.i, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #39, !noalias !2122
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_4task4wake5WakerNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE6unwrapCsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.i
  %i.al = extractvalue { ptr, ptr } %i.ai, 1      ; 3 uses
  store ptr %i.aj, ptr %i.e, align 8, !noalias !2120
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.al, ptr %i.am, align 8, !noalias !2120
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %.sroa.912.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #37
          to label %common.resume unwind label %bb.n, !noalias !2120

bb.l:                                             ; preds = %bb.g
  %.sroa.12.0.copyload77 = load i8, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2123
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18, ptr noundef nonnull align 1 dereferenceable(39) %i.ap, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2120
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i, %bb.l
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload77, %bb.l ], [ %i.ag, %bb.h ], [ 1, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload73, %bb.l ], [ 2, %bb.h ], [ %i.ad, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE7try_popCsQbU2fm3lSD_3xet.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE8try_recv0CsQbU2fm3lSD_3xet.exit

bb.n:                                             ; preds = %bb.y, %bb.p, %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !2120
  unreachable

common.resume:                                    ; preds = %bb.ae, %.noexc51, %bb.bw, %.thread59, %bb.an, %bb.ao, %bb.ap, %bb.k, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.an ], [ %.pn.i, %bb.p ], [ %i.ao, %bb.k ], [ %i.bv, %bb.ap ], [ %i.bv, %bb.ao ], [ %.pn4162, %bb.bw ], [ %i.dw, %.noexc51 ], [ %i.bl, %bb.ae ], [ %i.bn, %.thread59 ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.x, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_4task4wake5WakerNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE6unwrapCsQbU2fm3lSD_3xet.exit.i
  invoke void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.r unwind label %bb.q, !noalias !2120

bb.p:                                             ; preds = %bb.y, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.bc, %bb.y ], [ %i.at, %bb.q ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !2120, !nonnull !11, !noundef !11
  invoke void %i.as(ptr noundef %i.al)
          to label %common.resume unwind label %bb.n, !noalias !2120, !inline_history !2086

bb.q:                                             ; preds = %bb.x, %bb.r, %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.912.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  %i.au = load atomic i64, ptr %i.x acquire, align 8, !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2125
  invoke void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4listINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE3popCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.w)
          to label %.noexc.i unwind label %bb.q, !noalias !2120

.noexc.i:                                         ; preds = %bb.r
  %i.av = load i64, ptr %i.b, align 8, !range !25, !noalias !2125, !noundef !11 ; 2 uses
  switch i64 %i.av, label %bb.t [
    i64 -1, label %bb.s
    i64 2, label %bb.u
  ]

bb.s:                                             ; preds = %.noexc.i
  %i.aw = load i64, ptr %i.an, align 8, !alias.scope !2124, !noalias !2120, !noundef !11
  %i.ax = icmp eq i64 %i.au, %i.aw
  %spec.select14.i = select i1 %i.ax, i64 2, i64 4
  br label %bb.u

bb.t:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.912.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.912.0..sroa_idx13.i, i64 40, i1 false), !noalias !2126
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.noexc.i
  %.sroa.0.0.copyload72 = phi i64 [ %i.av, %bb.t ], [ 3, %.noexc.i ], [ %spec.select14.i, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2125
  %i.ay = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload72, i64 1) ; 2 uses
  switch i64 %i.ay, label %.loopexit.i [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %.loopexit
    i64 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2120
  store i64 %.sroa.0.0.copyload72, ptr %i.d, align 8, !noalias !2120
  %.sroa.912.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.912.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.912.i, i64 40, i1 false), !noalias !2120
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  invoke void @_RNvXsf_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.az)
          to label %bb.z unwind label %bb.y, !noalias !2120

bb.w:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.bb = load i8, ptr %i.ba, align 8, !range !14, !noalias !2120, !noundef !11
  br label %.loopexit

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.912.i)
  invoke void @_RNvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %i.a)
          to label %bb.o unwind label %bb.q, !noalias !2120

bb.y:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #37
          to label %bb.p unwind label %bb.n, !noalias !2120

bb.z:                                             ; preds = %bb.v
  %.sroa.12.0.copyload75 = load i8, ptr %.sroa.912.0..sroa_idx.i, align 8, !noalias !2123
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.912.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18, ptr noundef nonnull align 1 dereferenceable(39) %i.bd, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2120
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.w, %bb.z
  %.sroa.12.1 = phi i8 [ %.sroa.12.0.copyload75, %bb.z ], [ %i.bb, %bb.w ], [ 1, %bb.u ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload72, %bb.z ], [ 2, %bb.w ], [ %i.ay, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.912.i)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2120, !nonnull !11, !noundef !11
  call void %i.bf(ptr noundef %i.al), !noalias !2120, !inline_history !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2120
  br label %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE8try_recv0CsQbU2fm3lSD_3xet.exit

_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE8try_recv0CsQbU2fm3lSD_3xet.exit: ; preds = %bb.m, %.loopexit
  %.sroa.12.2 = phi i8 [ %.sroa.12.0, %bb.m ], [ %.sroa.12.1, %.loopexit ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.m ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0.2, 2
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5error12TryRecvErrorEECsQbU2fm3lSD_3xet.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.bh, ptr %i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %i.bi, align 8
  call void @_RINvNtNtCsUrhh0HcRih_5tokio6future8block_on8block_onNCNvMs1_NtNtNtB6_4sync4mpsc9unboundedINtBW_17UnboundedReceiverNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemE4recv0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ac

bb.ab:                                            ; preds = %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE8try_recv0CsQbU2fm3lSD_3xet.exit
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.582.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18, i64 39, i1 false)
  %.sroa.4.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 %.sroa.12.2, ptr %.sroa.4.0..sroa_idx81, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5error12TryRecvErrorEECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5error12TryRecvErrorEECsQbU2fm3lSD_3xet.exit: ; preds = %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE8try_recv0CsQbU2fm3lSD_3xet.exit, %bb.ab
  store i64 %.sroa.0.2, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc5error12TryRecvErrorEECsQbU2fm3lSD_3xet.exit, %bb.aa
  %i.bj = load i64, ptr %1, align 8, !range !24, !alias.scope !2127, !noundef !11
  %i.bk = icmp eq i64 %i.bj, 2
  br i1 %i.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.0.0.copyload.pr = load i64, ptr %1, align 8
  br label %bb.b

bb.af:                                            ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.bs

bb.ag:                                            ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 1, ptr %i.bm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.bs

bb.ah:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %.sroa.6.0.copyload, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  br i1 %2, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs1_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesE8try_recvCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ak unwind label %bb.bt

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvNtNtCsUrhh0HcRih_5tokio6future8block_on8block_onINtNtNtB6_4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef %.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %bb.bh unwind label %bb.bt

.thread59:                                        ; preds = %bb.aw
  %i.bn = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8
  store ptr %i.ci, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, i64 32, i1 false)
  br label %common.resume

bb.ak:                                            ; preds = %bb.ai
  %i.bo = load ptr, ptr %i.l, align 8, !noundef !11
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !range !14, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.au, label %bb.av

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet.exit48

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet.exit48: ; preds = %bb.be, %bb.bf, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXs2_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.aq unwind label %bb.an

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet.exit48
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.bw = load ptr, ptr %i.q, align 8, !alias.scope !2129, !noundef !11 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !2130
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.ap, label %common.resume

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #40
          to label %common.resume unwind label %bb.at

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet.exit48
  call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  %i.ca = load ptr, ptr %i.q, align 8, !alias.scope !2132, !noundef !11 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cc = atomicrmw add ptr %i.ca, i64 -1 release, align 8, !noalias !2133
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit

bb.as:                                            ; preds = %bb.ar
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #40
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit

bb.at:                                            ; preds = %bb.ap
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.au:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !11, !noundef !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  invoke void @_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction9run_stateNtB4_8RunState11check_error(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.ch)
          to label %bb.ay unwind label %bb.bt

bb.av:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610)
  %i.ci = load ptr, ptr %i.q, align 8, !noundef !11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.cj = load i64, ptr %1, align 8, !range !24, !alias.scope !2134, !noundef !11
  %i.ck = icmp eq i64 %i.cj, 2
  br i1 %i.ck, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit45, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit45 unwind label %.thread59

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit45: ; preds = %bb.av, %bb.aw
  store i64 0, ptr %1, align 8
  store ptr %i.ci, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemEECsQbU2fm3lSD_3xet.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit

bb.ay:                                            ; preds = %bb.au
  %i.cl = load i64, ptr %i.j, align 8, !range !2135, !noundef !11
  %.not38 = icmp eq i64 %i.cl, -1
  br i1 %.not38, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %0, align 8
end_hunk_2
