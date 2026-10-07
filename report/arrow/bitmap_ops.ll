Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bitmap_ops?download=true
inline.NumInlined: 424
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5arrow8internal12CountSetBitsEPKhll:bb.a
  %.560 = phi i64 [ %spec.select44, %.lr.ph63 ], [ %.4, %._crit_edge58 ]
  %i.cm = lshr i64 %.061, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.cp = trunc i64 %.061 to i8
  %i.cq = and i8 %i.cp, 7
  %i.cr = lshr i8 %i.co, %i.cq
  %i.cs = and i8 %i.cr, 1
  %i.ct = zext nneg i8 %i.cs to i64
  %spec.select44 = add nsw i64 %.560, %i.ct       ; 2 uses
  %i.cu = add nsw i64 %.061, 1                    ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %i.ck
  br i1 %i.cv, label %.lr.ph63, label %._crit_edge64, !llvm.loop !60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN5arrow8internal15CountAndSetBitsEPKhlS2_ll(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i = select i1 %.not.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %0, !prof !12
  %i.a = sdiv i64 %1, 8
  %i.b = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i, i64 %i.a
  %i.c = srem i64 %1, 8                           ; 5 uses
  %.not.i7.i = icmp eq ptr %2, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i = select i1 %.not.i7.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %2, !prof !12
  %i.d = sdiv i64 %3, 8
  %i.e = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i, i64 %i.d
  %i.f = srem i64 %3, 8                           ; 5 uses
  %.not31.i = icmp eq i64 %i.c, 0
  %i.g = sub nsw i64 128, %i.c
  %spec.select.i = select i1 %.not31.i, i64 64, i64 %i.g
  %.not32.i = icmp eq i64 %i.f, 0
  %i.h = sub nsw i64 128, %i.f
  %i.i = select i1 %.not32.i, i64 64, i64 %i.h
  %i.j = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.i)
  %i.k = or i64 %i.f, %i.c
  %brmerge.not.i = icmp eq i64 %i.k, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, %bb.a
  %.sroa.17.0 = phi i64 [ %4, %bb.a ], [ %.sroa.17.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.9.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.07 = phi i64 [ 0, %bb.a ], [ %i.bd, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.17.0, 0
  br i1 %.not.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %.sroa.17.0, %i.j
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated26.i = tail call i64 @llvm.smin.i64(i64 %.sroa.17.0, i64 64) ; 3 uses
  %i.m = trunc i64 %.sroa.speculated26.i to i16
  %sext.i = shl i64 %.sroa.speculated26.i, 48
  %i.n = ashr exact i64 %sext.i, 48               ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.p = zext i16 %spec.select20.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %.016.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.p, %._crit_edge.i.loopexit ]
  %i.q = sdiv i16 %i.m, 8
  %i.r = sext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %.sroa.9.0, i64 %i.r
  %i.u = sub nsw i64 %.sroa.17.0, %i.n
  %i.v = and i64 %.sroa.speculated26.i, 65535
  %i.w = icmp eq i64 %i.v, 0
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01535.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %.01634.i = phi i16 [ %spec.select20.i, %.lr.ph.i ], [ 0, %bb.d ]
  %i.x = add nsw i64 %.01535.i, %i.c              ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = trunc i64 %i.x to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = lshr i8 %i.aa, %i.ac
  %i.ae = add nsw i64 %.01535.i, %i.f             ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = lshr i8 %i.ah, %i.aj
  %i.al = and i8 %i.ad, 1
  %i.am = and i8 %i.al, %i.ak
  %i.an = zext nneg i8 %i.am to i16
  %spec.select20.i = add i16 %.01634.i, %i.an     ; 2 uses
  %i.ao = add nuw nsw i64 %.01535.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !62

bb.e:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %.sroa.0.0, align 1       ; 2 uses
  br i1 %brmerge.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %.sroa.9.0, align 1
  %i.ar = and i64 %i.aq, %i.ap
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.at = load i64, ptr %i.as, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.at, i64 %i.ap, i64 %i.c)
  %i.au = load i64, ptr %.sroa.9.0, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.aw = load i64, ptr %i.av, align 1
  %.0.i22.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.aw, i64 %i.au, i64 %i.f)
  %i.ax = and i64 %.0.i22.i, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.ax, %bb.g ], [ %i.ar, %bb.f ]
  %i.ay = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.bb = add nsw i64 %.sroa.17.0, -64
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit: ; preds = %._crit_edge.i, %bb.h
  %.sroa.17.1 = phi i64 [ %i.u, %._crit_edge.i ], [ %i.bb, %bb.h ]
  %.sroa.9.1 = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ba, %bb.h ]
  %.sroa.0.1 = phi ptr [ %i.s, %._crit_edge.i ], [ %i.az, %bb.h ]
  %.sroa.0.0.i = phi i1 [ %i.w, %._crit_edge.i ], [ false, %bb.h ]
  %.sroa.4.0.i = phi i64 [ %.016.lcssa.i, %._crit_edge.i ], [ %i.ay, %bb.h ]
  %sext = shl nuw i64 %.sroa.4.0.i, 48
  %i.bc = ashr exact i64 %sext, 48
  %i.bd = add nsw i64 %i.bc, %.07
  br i1 %.sroa.0.0.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.b

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread: ; preds = %bb.b, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit
  ret i64 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = or i64 %3, %1
  %i.b = and i64 %i.a, 7
  %or.cond.not = icmp eq i64 %i.b, 0
  br i1 %or.cond.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = srem i64 %1, 8                           ; 10 uses
  %i.d = sdiv i64 %1, 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 8 uses
  %i.f = lshr i64 %2, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1) ; 5 uses
  %i.g = shl nuw i64 %spec.select.i, 6
  %i.h = sub i64 %2, %i.g                         ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %sext.i = shl i64 %i.h, 32
  %i.j = ashr i64 %sext.i, 35
  %i.k = and i64 %2, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = trunc nsw i64 %i.n to i32
  %.not.i = icmp ult i64 %2, 128                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.e, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

bb.d:                                             ; preds = %bb.b
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.e, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.q to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit: ; preds = %bb.c, %bb.e
  %.sroa.23.2 = phi i64 [ %i.p, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.e ] ; 5 uses
  %i.r = srem i64 %3, 8                           ; 9 uses
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %4, i64 %i.s ; 7 uses
  %i.u = trunc nsw i64 %i.r to i32                ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.u
  %i.v = xor i32 %notmask.i, -1
  %i.w = zext nneg i32 %i.v to i64                ; 8 uses
  %.not.i39 = icmp eq i64 %i.r, 0                 ; 3 uses
  br i1 %.not.i39, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.f

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread: ; preds = %bb.d
  %i.x = srem i64 %3, 8                           ; 3 uses
  %i.y = sdiv i64 %3, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  %i.aa = trunc nsw i64 %i.x to i32               ; 2 uses
  %notmask.i132 = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i132, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %.not.i39133 = icmp eq i64 %i.x, 0
  br label %.preheader

bb.f:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit
  %i.ad = icmp sgt i64 %2, 63
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.t, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %2, 0
  br i1 %i.af, label %bb.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.t, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ag to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit, %bb.g, %bb.h
  %i.ah = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.u, %bb.g ], [ %i.u, %bb.h ] ; 4 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.ae, %bb.g ], [ undef, %bb.h ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ai = sub nsw i64 64, %i.r
  %i.aj = xor i64 %i.w, -1                        ; 2 uses
  br i1 %.not.i39, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.ak = add nsw i64 %i.f, -1
  %i.al = icmp ne i64 %i.f, 0
  %umin.neg = sext i1 %i.al to i64
  %i.am = add nsw i64 %i.ak, %umin.neg
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol
  %.0102.us.prol = phi i64 [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.6.0101.us.prol = phi ptr [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ] ; 2 uses
  %.sroa.669.099.us.prol = phi ptr [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.23.098.us.prol = phi i64 [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ 0, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %i.an = add nsw i64 %.0102.us.prol, -1          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.669.099.us.prol, i64 8 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = freeze i64 %i.ap                        ; 4 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.aq, i64 %.sroa.23.098.us.prol, i64 %i.c)
  store i64 %.0.i.us.prol, ptr %.sroa.6.0101.us.prol, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.6.0101.us.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, !llvm.loop !63

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa167.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa166.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.0102.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0101.us.unr = phi ptr [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.669.099.us.unr = phi ptr [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.098.us.unr = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.at = and i64 %.sroa.22.2, %i.w
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.0102.us = phi i64 [ %i.bg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.0102.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0101.us = phi ptr [ %i.bk, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0101.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 5 uses
  %.sroa.669.099.us = phi ptr [ %i.bh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.669.099.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 4 uses
  %.sroa.23.098.us = phi i64 [ %i.bj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.098.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.669.099.us, i64 8
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = freeze i64 %i.av                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.aw, i64 %.sroa.23.098.us, i64 %i.c)
  store i64 %.0.i.us, ptr %.sroa.6.0101.us, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.6.0101.us, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.669.099.us, i64 16
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = freeze i64 %i.az                        ; 2 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.ba, i64 %i.aw, i64 %i.c)
  store i64 %.0.i.us.1, ptr %i.ax, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.6.0101.us, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.669.099.us, i64 24
  %i.bd = load i64, ptr %i.bc, align 1
  %i.be = freeze i64 %i.bd                        ; 2 uses
  %.0.i.us.2 = tail call noundef i64 @llvm.fshr.i64(i64 %i.be, i64 %i.ba, i64 %i.c)
  store i64 %.0.i.us.2, ptr %i.bb, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.0101.us, i64 24
  %i.bg = add nsw i64 %.0102.us, -4               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.669.099.us, i64 32 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = freeze i64 %i.bi                        ; 3 uses
  %.0.i.us.3 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bj, i64 %i.be, i64 %i.c)
  store i64 %.0.i.us.3, ptr %i.bf, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.6.0101.us, i64 32 ; 2 uses
  %.not37.us.3 = icmp eq i64 %i.bg, 0
  br i1 %.not37.us.3, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !64

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, %bb.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bl = phi i64 [ %i.r, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.r, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.x, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.r, %bb.i ], [ %i.r, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.r, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bm = phi i32 [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aa, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.u, %bb.i ], [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.bn = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.w, %bb.i ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i39137151 = phi i1 [ %.not.i39, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i39133, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ false, %bb.i ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.23.2, %bb.i ], [ %.lcssa166.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ca, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.669.0.lcssa = phi ptr [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.e, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.e, %bb.i ], [ %.lcssa167.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.by, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.22.32.insert.ext, %bb.i ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ck, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bk, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.z, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.t, %bb.i ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ce, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not38109 = icmp eq i64 %i.n, 0
  br i1 %.not38109, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader
  %.not.i41 = icmp eq i64 %i.c, 0
  %i.bo = trunc nsw i64 %i.c to i32               ; 2 uses
  %i.bp = sub nsw i32 8, %i.bo
  %i.bq = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bl
  %i.br = sub nsw i32 8, %i.bm
  %i.bs = xor i64 %i.bn, -1                       ; 2 uses
  %i.bt = trunc nsw i64 %i.c to i32
  %i.bu = shl nuw nsw i32 1, %i.bt
  %i.bv = add nsw i64 %i.c, 1                     ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 8
  br label %bb.j

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.0102 = phi i64 [ %i.bx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0101 = phi ptr [ %i.ce, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0100 = phi i64 [ %i.cj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.at, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.669.099 = phi ptr [ %i.by, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.098 = phi i64 [ %i.ca, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.bx = add nsw i64 %.0102, -1                  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.669.099, i64 8 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = freeze i64 %i.bz                        ; 3 uses
  %.0.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ca, i64 %.sroa.23.098, i64 %i.c) ; 2 uses
  %i.cb = shl i64 %.0.i, %i.r
  %i.cc = lshr i64 %.0.i, %i.ai
  %i.cd = or disjoint i64 %i.cc, %i.cb            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.6.0101, i64 8 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 1
  %i.cg = and i64 %i.cd, %i.aj
  %i.ch = or disjoint i64 %i.cg, %.sroa.22.0100
  %i.ci = and i64 %i.cf, %i.aj
  %i.cj = and i64 %i.cd, %i.w                     ; 2 uses
  %i.ck = or disjoint i64 %i.ci, %i.cj            ; 2 uses
  store i64 %i.ch, ptr %.sroa.6.0101, align 1
  store i64 %i.ck, ptr %i.ce, align 1
  %.not37 = icmp eq i64 %i.bx, 0
  br i1 %.not37, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, !llvm.loop !64

bb.j:                                             ; preds = %.lr.ph117, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit
  %.035116 = phi i32 [ %i.o, %.lr.ph117 ], [ %i.cl, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ]
  %.sroa.6.1115 = phi ptr [ %.sroa.6.0.lcssa, %.lr.ph117 ], [ %.sroa.6.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.22.1114 = phi i64 [ %.sroa.22.0.lcssa, %.lr.ph117 ], [ %.sroa.22.5, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 5 uses
  %.sroa.669.1113 = phi ptr [ %.sroa.669.0.lcssa, %.lr.ph117 ], [ %.sroa.669.292, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 13 uses
  %.sroa.15.0112 = phi i32 [ %i.i, %.lr.ph117 ], [ %.sroa.15.190, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 20 uses
  %.sroa.23.1110 = phi i64 [ %.sroa.23.0.lcssa, %.lr.ph117 ], [ %.sroa.23.386, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 6 uses
  %i.cl = add nsw i32 %.035116, -1                ; 2 uses
  %i.cm = icmp slt i32 %.sroa.15.0112, 9
  br i1 %i.cm, label %bb.k, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cn = icmp sgt i32 %.sroa.15.0112, 0
  br i1 %i.cn, label %.lr.ph.preheader.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.co = load i8, ptr %.sroa.669.1113, align 1, !tbaa !9 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.15.0112 to i64 ; 2 uses
  %i.cp = zext i8 %i.co to i32
  %i.cq = and i32 %i.bu, %i.cp
  %.not21.i = icmp eq i32 %i.cq, 0
  %spec.select.i42 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.bw, label %bb.l, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !12

bb.l:                                             ; preds = %.lr.ph.preheader.i
  %.not173 = icmp eq i32 %.sroa.15.0112, 1
  br i1 %.not173, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.669.1113, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i:   ; preds = %bb.m, %bb.l, %.lr.ph.preheader.i
  %.sroa.1319.1.i = phi i64 [ 1, %bb.m ], [ 1, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.m ], [ 0, %bb.l ], [ %i.bv, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.2.i = phi i8 [ %i.cs, %bb.m ], [ %i.co, %bb.l ], [ %i.co, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.sroa.15.0112, 1
  br i1 %exitcond.not.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %i.ct = lshr exact i8 %spec.select.i42, 1       ; 2 uses
  %i.cu = zext i8 %.sroa.9.2.i to i32
  %i.cv = trunc nsw i64 %.sroa.16.1.i to i32
  %i.cw = shl nuw nsw i32 1, %i.cv
  %i.cx = and i32 %i.cw, %i.cu
  %.not21.i.1 = icmp eq i32 %i.cx, 0
  %i.cy = or disjoint i8 %i.ct, -128
  %spec.select.i42.1 = select i1 %.not21.i.1, i8 %i.ct, i8 %i.cy ; 2 uses
  %i.cz = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.da = icmp eq i64 %i.cz, 8
  br i1 %i.da, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !12

bb.n:                                             ; preds = %.lr.ph.i.1
  %i.db = add nuw nsw i64 %.sroa.1319.1.i, 1      ; 3 uses
  %i.dc = icmp sgt i32 %.sroa.15.0112, 2
  br i1 %i.dc, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.669.1113, i64 %i.db
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1: ; preds = %bb.o, %bb.n, %.lr.ph.i.1
  %.sroa.1319.1.i.1 = phi i64 [ %i.db, %bb.o ], [ %i.db, %bb.n ], [ %.sroa.1319.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.16.1.i.1 = phi i64 [ 0, %bb.o ], [ 0, %bb.n ], [ %i.cz, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.9.2.i.1 = phi i8 [ %i.de, %bb.o ], [ %.sroa.9.2.i, %bb.n ], [ %.sroa.9.2.i, %.lr.ph.i.1 ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.sroa.15.0112, 2
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1
  %i.df = lshr exact i8 %spec.select.i42.1, 1     ; 2 uses
  %i.dg = zext i8 %.sroa.9.2.i.1 to i32
  %i.dh = trunc nsw i64 %.sroa.16.1.i.1 to i32
  %i.di = shl nuw nsw i32 1, %i.dh
  %i.dj = and i32 %i.di, %i.dg
  %.not21.i.2 = icmp eq i32 %i.dj, 0
  %i.dk = or disjoint i8 %i.df, -128
  %spec.select.i42.2 = select i1 %.not21.i.2, i8 %i.df, i8 %i.dk ; 2 uses
  %i.dl = add nsw i64 %.sroa.16.1.i.1, 1          ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 8
  br i1 %i.dm, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !12

bb.p:                                             ; preds = %.lr.ph.i.2
  %i.dn = add nsw i64 %.sroa.1319.1.i.1, 1        ; 3 uses
  %i.do = icmp sgt i32 %.sroa.15.0112, 3
  br i1 %i.do, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds i8, ptr %.sroa.669.1113, i64 %i.dn
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2: ; preds = %bb.q, %bb.p, %.lr.ph.i.2
  %.sroa.1319.1.i.2 = phi i64 [ %i.dn, %bb.q ], [ %i.dn, %bb.p ], [ %.sroa.1319.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.16.1.i.2 = phi i64 [ 0, %bb.q ], [ 0, %bb.p ], [ %i.dl, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.9.2.i.2 = phi i8 [ %i.dq, %bb.q ], [ %.sroa.9.2.i.1, %bb.p ], [ %.sroa.9.2.i.1, %.lr.ph.i.2 ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i32 %.sroa.15.0112, 3
  br i1 %exitcond.not.i.2, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.dr = lshr i8 %spec.select.i42.2, 1           ; 2 uses
  %i.ds = zext i8 %.sroa.9.2.i.2 to i32
  %i.dt = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = and i32 %i.du, %i.ds
  %.not21.i.3 = icmp eq i32 %i.dv, 0
  %i.dw = or disjoint i8 %i.dr, -128
  %spec.select.i42.3 = select i1 %.not21.i.3, i8 %i.dr, i8 %i.dw ; 2 uses
  %i.dx = add nsw i64 %.sroa.16.1.i.2, 1          ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 8
  br i1 %i.dy, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !12

bb.r:                                             ; preds = %.lr.ph.i.3
  %i.dz = add nsw i64 %.sroa.1319.1.i.2, 1        ; 3 uses
  %i.ea = icmp sgt i32 %.sroa.15.0112, 4
  br i1 %i.ea, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds i8, ptr %.sroa.669.1113, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3: ; preds = %bb.s, %bb.r, %.lr.ph.i.3
  %.sroa.1319.1.i.3 = phi i64 [ %i.dz, %bb.s ], [ %i.dz, %bb.r ], [ %.sroa.1319.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.16.1.i.3 = phi i64 [ 0, %bb.s ], [ 0, %bb.r ], [ %i.dx, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.9.2.i.3 = phi i8 [ %i.ec, %bb.s ], [ %.sroa.9.2.i.2, %bb.r ], [ %.sroa.9.2.i.2, %.lr.ph.i.3 ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i32 %.sroa.15.0112, 4
  br i1 %exitcond.not.i.3, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3
  %i.ed = lshr i8 %spec.select.i42.3, 1           ; 2 uses
  %i.ee = zext i8 %.sroa.9.2.i.3 to i32
  %i.ef = trunc nsw i64 %.sroa.16.1.i.3 to i32
  %i.eg = shl nuw nsw i32 1, %i.ef
  %i.eh = and i32 %i.eg, %i.ee
  %.not21.i.4 = icmp eq i32 %i.eh, 0
  %i.ei = or disjoint i8 %i.ed, -128
  %spec.select.i42.4 = select i1 %.not21.i.4, i8 %i.ed, i8 %i.ei ; 2 uses
  %i.ej = add nsw i64 %.sroa.16.1.i.3, 1          ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 8
  br i1 %i.ek, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !12

bb.t:                                             ; preds = %.lr.ph.i.4
  %i.el = add nsw i64 %.sroa.1319.1.i.3, 1        ; 3 uses
  %i.em = icmp sgt i32 %.sroa.15.0112, 5
  br i1 %i.em, label %bb.u, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr inbounds i8, ptr %.sroa.669.1113, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4: ; preds = %bb.u, %bb.t, %.lr.ph.i.4
  %.sroa.1319.1.i.4 = phi i64 [ %i.el, %bb.u ], [ %i.el, %bb.t ], [ %.sroa.1319.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.16.1.i.4 = phi i64 [ 0, %bb.u ], [ 0, %bb.t ], [ %i.ej, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.9.2.i.4 = phi i8 [ %i.eo, %bb.u ], [ %.sroa.9.2.i.3, %bb.t ], [ %.sroa.9.2.i.3, %.lr.ph.i.4 ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i32 %.sroa.15.0112, 5
  br i1 %exitcond.not.i.4, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4
  %i.ep = lshr i8 %spec.select.i42.4, 1           ; 2 uses
  %i.eq = zext i8 %.sroa.9.2.i.4 to i32
  %i.er = trunc nsw i64 %.sroa.16.1.i.4 to i32
  %i.es = shl nuw nsw i32 1, %i.er
  %i.et = and i32 %i.es, %i.eq
  %.not21.i.5 = icmp eq i32 %i.et, 0
  %i.eu = or disjoint i8 %i.ep, -128
  %spec.select.i42.5 = select i1 %.not21.i.5, i8 %i.ep, i8 %i.eu ; 2 uses
  %i.ev = add nsw i64 %.sroa.16.1.i.4, 1          ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 8
  br i1 %i.ew, label %bb.v, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !12

bb.v:                                             ; preds = %.lr.ph.i.5
  %i.ex = add nsw i64 %.sroa.1319.1.i.4, 1        ; 3 uses
  %i.ey = icmp sgt i32 %.sroa.15.0112, 6
  br i1 %i.ey, label %bb.w, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.ez = getelementptr inbounds i8, ptr %.sroa.669.1113, i64 %i.ex
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5: ; preds = %bb.w, %bb.v, %.lr.ph.i.5
  %.sroa.1319.1.i.5 = phi i64 [ %i.ex, %bb.w ], [ %i.ex, %bb.v ], [ %.sroa.1319.1.i.4, %.lr.ph.i.5 ]
  %.sroa.16.1.i.5 = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.ev, %.lr.ph.i.5 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh:bb.a
  %i.fz = zext i8 %i.fv to i32
  %i.ga = shl nuw nsw i32 %i.fz, %i.bp
  %i.gb = or i32 %i.ga, %i.fy
  %i.gc = trunc i32 %i.gb to i8
  %.2.i = select i1 %.not.i41, i8 %.sroa.23.40.extract.trunc, i8 %i.gc
  %.sroa.23.40.insert.ext76 = zext i8 %i.fv to i64
  %i.gd = add nsw i32 %.sroa.15.0112, -8
  br label %bb.z

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit: ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i42.lcssa = phi i8 [ %spec.select.i42, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i42.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i42.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i42.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i42.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i42.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i42.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i42.7, %.lr.ph.i.7 ]
  %i.ge = zext i8 %spec.select.i42.lcssa to i32
  %i.gf = sub nuw nsw i32 8, %.sroa.15.0112
  %i.gg = lshr i32 %i.ge, %i.gf
  %i.gh = trunc nuw i32 %i.gg to i8               ; 2 uses
  %i.gi = icmp eq i32 %.sroa.15.0112, 8
  br i1 %i.gi, label %bb.z, label %.lr.ph.preheader.i43

bb.z:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %.3.i94 = phi i8 [ %.2.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %i.gh, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ] ; 2 uses
  %.sroa.669.293 = phi ptr [ %i.fu, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.669.1113, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.15.191 = phi i32 [ %i.gd, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  %.sroa.23.387 = phi i64 [ %.sroa.23.40.insert.ext76, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread ], [ %.sroa.23.1110, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit ]
  br i1 %.not.i39137151, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = zext i8 %.3.i94 to i32                  ; 2 uses
  %i.gk = shl nuw nsw i32 %i.gj, %i.bm
  %i.gl = lshr i32 %i.gj, %i.br
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.6.1115, i64 1 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = and i64 %.sroa.22.1114, %i.bn
  %i.gp = or i32 %i.gk, %i.gl
  %i.gq = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gr = and i64 %i.gq, %i.bs
  %i.gs = or disjoint i64 %i.gr, %i.go
  %i.gt = trunc i64 %i.gs to i8
  %i.gu = zext i8 %i.gn to i64
  %i.gv = and i64 %i.gu, %i.bs
  %i.gw = and i64 %i.bn, %i.gq
  %i.gx = or disjoint i64 %i.gv, %i.gw            ; 2 uses
  %i.gy = trunc i64 %i.gx to i8
  store i8 %i.gy, ptr %i.gm, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink = phi i8 [ %i.gt, %bb.aa ], [ %.3.i94, %bb.z ]
  %.sroa.22.4 = phi i64 [ %i.gx, %bb.aa ], [ %.sroa.22.1114, %bb.z ]
  store i8 %.sink, ptr %.sroa.6.1115, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.6.1115, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i43:                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.ha = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.hb = load i8, ptr %.sroa.6.1115, align 1, !tbaa !9
  br label %.lr.ph.i45

._crit_edge.i48:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i48
  %i.hc = getelementptr inbounds i8, ptr %.sroa.6.1115, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.hc, align 1, !tbaa !9
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i45:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i43
  %.01537.i = phi i8 [ %i.hp, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.gh, %.lr.ph.preheader.i43 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.hi, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i43 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.hb, %.lr.ph.preheader.i43 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.ha, %.lr.ph.preheader.i43 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i43 ] ; 3 uses
  %i.hd = and i8 %.01537.i, 1
  %.not.i46 = icmp eq i8 %i.hd, 0
  %i.he = xor i8 %.sroa.22.034.i, -1
  %i.hf = and i8 %.sroa.14.035.i, %i.he
  %i.hg = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i46, i8 %i.hf, i8 %i.hg ; 3 uses
  %i.hh = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.hi = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.hj = icmp eq i8 %i.hh, 0
  br i1 %i.hj, label %bb.ad, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.ad:                                            ; preds = %.lr.ph.i45
  %i.hk = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.hl = getelementptr inbounds i8, ptr %.sroa.6.1115, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.hl, align 1, !tbaa !9
  %i.hm = icmp samesign ult i64 %i.hi, %wide.trip.count.i
  br i1 %i.hm, label %bb.ae, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !14

bb.ae:                                            ; preds = %bb.ad
  %i.hn = getelementptr inbounds i8, ptr %.sroa.6.1115, i64 %i.hk
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.ae, %bb.ad, %.lr.ph.i45
  %.sroa.2930.1.i = phi i64 [ %i.hk, %bb.ae ], [ %i.hk, %bb.ad ], [ %.sroa.2930.033.i, %.lr.ph.i45 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.ad ], [ %i.hh, %.lr.ph.i45 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.ho, %bb.ae ], [ %.sroa.14.1.i, %bb.ad ], [ %.sroa.14.1.i, %.lr.ph.i45 ] ; 2 uses
  %i.hp = lshr i8 %.01537.i, 1
  %exitcond.not.i47 = icmp eq i64 %i.hi, %wide.trip.count.i
  br i1 %exitcond.not.i47, label %._crit_edge.i48, label %.lr.ph.i45, !llvm.loop !0

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.k, %bb.ab, %._crit_edge.i48, %bb.ac
  %.sroa.669.292 = phi ptr [ %.sroa.669.293, %bb.ab ], [ %.sroa.669.1113, %._crit_edge.i48 ], [ %.sroa.669.1113, %bb.ac ], [ %.sroa.669.1113, %bb.k ]
  %.sroa.15.190 = phi i32 [ %.sroa.15.191, %bb.ab ], [ 0, %._crit_edge.i48 ], [ 0, %bb.ac ], [ 0, %bb.k ]
  %.sroa.23.386 = phi i64 [ %.sroa.23.387, %bb.ab ], [ %.sroa.23.1110, %._crit_edge.i48 ], [ %.sroa.23.1110, %bb.ac ], [ %.sroa.23.1110, %bb.k ]
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ab ], [ %.sroa.22.1114, %._crit_edge.i48 ], [ %.sroa.22.1114, %bb.ac ], [ %.sroa.22.1114, %bb.k ]
  %.sroa.6.2 = phi ptr [ %i.gz, %bb.ab ], [ %.sroa.6.1115, %._crit_edge.i48 ], [ %.sroa.6.1115, %bb.ac ], [ %.sroa.6.1115, %bb.k ]
  %.not38 = icmp eq i32 %i.cl, 0
  br i1 %.not38, label %.loopexit, label %bb.j, !llvm.loop !65

bb.af:                                            ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hq = ashr i64 %2, 3
  %i.hr = and i64 %2, 7
  %i.hs = icmp ne i64 %i.hr, 0
  %i.ht = zext i1 %i.hs to i64
  %i.hu = add nsw i64 %i.hq, %i.ht                ; 2 uses
  %i.hv = sdiv i64 %1, 8
  %i.hw = getelementptr inbounds i8, ptr %0, i64 %i.hv ; 2 uses
  %i.hx = sdiv i64 %3, 8
  %i.hy = getelementptr inbounds i8, ptr %4, i64 %i.hx ; 2 uses
  %i.hz = shl nsw i64 %i.hu, 3
  %.neg = sub i64 %2, %i.hz
  %i.ia = trunc i64 %.neg to i32
  %i.ib = add i32 %i.ia, 8
  %notmask = shl nsw i32 -1, %i.ib
  %i.ic = add nsw i64 %i.hu, -1                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hy, ptr align 1 %i.hw, i64 %i.ic, i1 false)
  %i.id = getelementptr inbounds i8, ptr %i.hw, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !9
  %i.if = getelementptr inbounds i8, ptr %i.hy, i64 %i.ic ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !9
  %i.ih = trunc i32 %notmask to i8                ; 2 uses
  %i.ii = and i8 %i.ig, %i.ih
  %i.ij = xor i8 %i.ih, -1
  %i.ik = and i8 %i.ie, %i.ij
  %i.il = or i8 %i.ii, %i.ik
  store i8 %i.il, ptr %i.if, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %bb.ag
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal12InvertBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = or i64 %3, %1
  %i.d = and i64 %i.c, 7
  %or.cond.not = icmp eq i64 %i.d, 0
  br i1 %or.cond.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = srem i64 %1, 8                           ; 10 uses
  %i.f = sdiv i64 %1, 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 8 uses
  %i.h = lshr i64 %2, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 1) ; 5 uses
  %i.i = shl nuw i64 %spec.select.i, 6
  %i.j = sub i64 %2, %i.i                         ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %sext.i = shl i64 %i.j, 32
  %i.l = ashr i64 %sext.i, 35
  %i.m = and i64 %2, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i64
  %i.p = add nsw i64 %i.l, %i.o                   ; 2 uses
  %i.q = trunc nsw i64 %i.p to i32
  %.not.i = icmp ult i64 %2, 128                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.g, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

bb.d:                                             ; preds = %bb.b
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.g, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.s to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit: ; preds = %bb.c, %bb.e
  %.sroa.23.2 = phi i64 [ %i.r, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.e ] ; 5 uses
  %i.t = srem i64 %3, 8                           ; 9 uses
  %i.u = sdiv i64 %3, 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u ; 7 uses
  %i.w = trunc nsw i64 %i.t to i32                ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.w
  %i.x = xor i32 %notmask.i, -1
  %i.y = zext nneg i32 %i.x to i64                ; 8 uses
  %.not.i45 = icmp eq i64 %i.t, 0                 ; 3 uses
  br i1 %.not.i45, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.f

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread: ; preds = %bb.d
  %i.z = srem i64 %3, 8                           ; 3 uses
  %i.aa = sdiv i64 %3, 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  %i.ac = trunc nsw i64 %i.z to i32               ; 2 uses
  %notmask.i140 = shl nsw i32 -1, %i.ac
  %i.ad = xor i32 %notmask.i140, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %.not.i45141 = icmp eq i64 %i.z, 0
  br label %.preheader

bb.f:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit
  %i.af = icmp sgt i64 %2, 63
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %i.v, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp sgt i64 %2, 0
  br i1 %i.ah, label %bb.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.v, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ai to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit, %bb.g, %bb.h
  %i.aj = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.w, %bb.g ], [ %i.w, %bb.h ] ; 4 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.ag, %bb.g ], [ undef, %bb.h ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ak = sub nsw i64 64, %i.t
  %i.al = xor i64 %i.y, -1                        ; 2 uses
  br i1 %.not.i45, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.am = add nsw i64 %i.h, -1
  %i.an = icmp ne i64 %i.h, 0
  %umin.neg = sext i1 %i.an to i64
  %i.ao = add nsw i64 %i.am, %umin.neg
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol
  %.040107.us.prol = phi i64 [ %i.ap, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.6.0106.us.prol = phi ptr [ %i.au, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ] ; 2 uses
  %.sroa.675.0104.us.prol = phi ptr [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.23.0103.us.prol = phi i64 [ %i.as, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ 0, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %i.ap = add nsw i64 %.040107.us.prol, -1        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us.prol, i64 8 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = freeze i64 %i.ar                        ; 4 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.as, i64 %.sroa.23.0103.us.prol, i64 %i.e)
  %i.at = xor i64 %.0.i.us.prol, -1
  store i64 %i.at, ptr %.sroa.6.0106.us.prol, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, !llvm.loop !66

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa182.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa181.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.as, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.au, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.040107.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ap, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0106.us.unr = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.au, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.675.0104.us.unr = phi ptr [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.as, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.av = icmp ult i64 %i.ao, 3
  br i1 %i.av, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.aw = and i64 %.sroa.22.2, %i.y
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.040107.us = phi i64 [ %i.bm, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.040107.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0106.us = phi ptr [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 5 uses
  %.sroa.675.0104.us = phi ptr [ %i.bn, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.675.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 4 uses
  %.sroa.23.0103.us = phi i64 [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 8
  %i.ay = load i64, ptr %i.ax, align 1
  %i.az = freeze i64 %i.ay                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.az, i64 %.sroa.23.0103.us, i64 %i.e)
  %i.ba = xor i64 %.0.i.us, -1
  store i64 %i.ba, ptr %.sroa.6.0106.us, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 16
  %i.bd = load i64, ptr %i.bc, align 1
  %i.be = freeze i64 %i.bd                        ; 2 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.be, i64 %i.az, i64 %i.e)
  %i.bf = xor i64 %.0.i.us.1, -1
  store i64 %i.bf, ptr %i.bb, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 24
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = freeze i64 %i.bi                        ; 2 uses
  %.0.i.us.2 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bj, i64 %i.be, i64 %i.e)
  %i.bk = xor i64 %.0.i.us.2, -1
  store i64 %i.bk, ptr %i.bg, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 24
  %i.bm = add nsw i64 %.040107.us, -4             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.675.0104.us, i64 32 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 1
  %i.bp = freeze i64 %i.bo                        ; 3 uses
  %.0.i.us.3 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bp, i64 %i.bj, i64 %i.e)
  %i.bq = xor i64 %.0.i.us.3, -1
  store i64 %i.bq, ptr %i.bl, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 32 ; 2 uses
  %.not43.us.3 = icmp eq i64 %i.bm, 0
  br i1 %.not43.us.3, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !67

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, %bb.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bs = phi i64 [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.z, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.t, %bb.i ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bt = phi i32 [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.w, %bb.i ], [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.aj, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.bu = phi i64 [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ae, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.y, %bb.i ], [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.y, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i45145159 = phi i1 [ %.not.i45, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i45141, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ false, %bb.i ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.23.2, %bb.i ], [ %.lcssa181.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ch, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.675.0.lcssa = phi ptr [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bn, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.g, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.g, %bb.i ], [ %.lcssa182.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.22.32.insert.ext, %bb.i ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.cs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ab, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.v, %bb.i ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cm, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not44114 = icmp eq i64 %i.p, 0
  br i1 %.not44114, label %.loopexit, label %.lr.ph122

.lr.ph122:                                        ; preds = %.preheader
  %.not.i47 = icmp eq i64 %i.e, 0
  %i.bv = trunc nsw i64 %i.e to i32               ; 2 uses
  %i.bw = sub nsw i32 8, %i.bv
  %i.bx = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bs
  %i.by = sub nsw i32 8, %i.bt
  %i.bz = xor i64 %i.bu, -1                       ; 2 uses
  %i.ca = trunc nsw i64 %i.e to i32
  %i.cb = shl nuw nsw i32 1, %i.ca
  %i.cc = add nsw i64 %i.e, 1                     ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 8
  br label %bb.j

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.040107 = phi i64 [ %i.ce, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0106 = phi ptr [ %i.cm, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0105 = phi i64 [ %i.cr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.675.0104 = phi ptr [ %i.cf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.g, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0103 = phi i64 [ %i.ch, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.ce = add nsw i64 %.040107, -1                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.675.0104, i64 8 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = freeze i64 %i.cg                        ; 3 uses
  %.0.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ch, i64 %.sroa.23.0103, i64 %i.e)
  %i.ci = xor i64 %.0.i, -1                       ; 2 uses
  %i.cj = shl i64 %i.ci, %i.t
  %i.ck = lshr i64 %i.ci, %i.ak
  %i.cl = or disjoint i64 %i.ck, %i.cj            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.6.0106, i64 8 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 1
  %i.co = and i64 %i.cl, %i.al
  %i.cp = or disjoint i64 %i.co, %.sroa.22.0105
  %i.cq = and i64 %i.cn, %i.al
  %i.cr = and i64 %i.cl, %i.y                     ; 2 uses
  %i.cs = or disjoint i64 %i.cq, %i.cr            ; 2 uses
  store i64 %i.cp, ptr %.sroa.6.0106, align 1
  store i64 %i.cs, ptr %i.cm, align 1
  %.not43 = icmp eq i64 %i.ce, 0
  br i1 %.not43, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, !llvm.loop !67

bb.j:                                             ; preds = %.lr.ph122, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit
  %.039121 = phi i32 [ %i.q, %.lr.ph122 ], [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ]
  %.sroa.6.1120 = phi ptr [ %.sroa.6.0.lcssa, %.lr.ph122 ], [ %.sroa.6.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.22.1119 = phi i64 [ %.sroa.22.0.lcssa, %.lr.ph122 ], [ %.sroa.22.5, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 5 uses
  %.sroa.675.1118 = phi ptr [ %.sroa.675.0.lcssa, %.lr.ph122 ], [ %.sroa.675.298, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 13 uses
  %.sroa.15.0117 = phi i32 [ %i.k, %.lr.ph122 ], [ %.sroa.15.196, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 20 uses
  %.sroa.23.1115 = phi i64 [ %.sroa.23.0.lcssa, %.lr.ph122 ], [ %.sroa.23.392, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 6 uses
  %i.ct = add nsw i32 %.039121, -1                ; 2 uses
  %i.cu = icmp slt i32 %.sroa.15.0117, 9
  br i1 %i.cu, label %bb.k, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cv = icmp sgt i32 %.sroa.15.0117, 0
  br i1 %i.cv, label %.lr.ph.preheader.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.cw = load i8, ptr %.sroa.675.1118, align 1, !tbaa !9 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.15.0117 to i64 ; 2 uses
  %i.cx = zext i8 %i.cw to i32
  %i.cy = and i32 %i.cb, %i.cx
  %.not21.i = icmp eq i32 %i.cy, 0
  %spec.select.i48 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cd, label %bb.l, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !12

bb.l:                                             ; preds = %.lr.ph.preheader.i
  %.not191 = icmp eq i32 %.sroa.15.0117, 1
  br i1 %.not191, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.675.1118, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i:   ; preds = %bb.m, %bb.l, %.lr.ph.preheader.i
  %.sroa.1319.1.i = phi i64 [ 1, %bb.m ], [ 1, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.m ], [ 0, %bb.l ], [ %i.cc, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.2.i = phi i8 [ %i.da, %bb.m ], [ %i.cw, %bb.l ], [ %i.cw, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.sroa.15.0117, 1
  br i1 %exitcond.not.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %i.db = lshr exact i8 %spec.select.i48, 1       ; 2 uses
  %i.dc = zext i8 %.sroa.9.2.i to i32
  %i.dd = trunc nsw i64 %.sroa.16.1.i to i32
  %i.de = shl nuw nsw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not21.i.1 = icmp eq i32 %i.df, 0
  %i.dg = or disjoint i8 %i.db, -128
  %spec.select.i48.1 = select i1 %.not21.i.1, i8 %i.db, i8 %i.dg ; 2 uses
  %i.dh = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.di = icmp eq i64 %i.dh, 8
  br i1 %i.di, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !12

bb.n:                                             ; preds = %.lr.ph.i.1
  %i.dj = add nuw nsw i64 %.sroa.1319.1.i, 1      ; 3 uses
  %i.dk = icmp sgt i32 %.sroa.15.0117, 2
  br i1 %i.dk, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.675.1118, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1: ; preds = %bb.o, %bb.n, %.lr.ph.i.1
  %.sroa.1319.1.i.1 = phi i64 [ %i.dj, %bb.o ], [ %i.dj, %bb.n ], [ %.sroa.1319.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.16.1.i.1 = phi i64 [ 0, %bb.o ], [ 0, %bb.n ], [ %i.dh, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.9.2.i.1 = phi i8 [ %i.dm, %bb.o ], [ %.sroa.9.2.i, %bb.n ], [ %.sroa.9.2.i, %.lr.ph.i.1 ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.sroa.15.0117, 2
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1
  %i.dn = lshr exact i8 %spec.select.i48.1, 1     ; 2 uses
  %i.do = zext i8 %.sroa.9.2.i.1 to i32
  %i.dp = trunc nsw i64 %.sroa.16.1.i.1 to i32
  %i.dq = shl nuw nsw i32 1, %i.dp
  %i.dr = and i32 %i.dq, %i.do
  %.not21.i.2 = icmp eq i32 %i.dr, 0
  %i.ds = or disjoint i8 %i.dn, -128
  %spec.select.i48.2 = select i1 %.not21.i.2, i8 %i.dn, i8 %i.ds ; 2 uses
  %i.dt = add nsw i64 %.sroa.16.1.i.1, 1          ; 2 uses
  %i.du = icmp eq i64 %i.dt, 8
  br i1 %i.du, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !12

bb.p:                                             ; preds = %.lr.ph.i.2
  %i.dv = add nsw i64 %.sroa.1319.1.i.1, 1        ; 3 uses
  %i.dw = icmp sgt i32 %.sroa.15.0117, 3
  br i1 %i.dw, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds i8, ptr %.sroa.675.1118, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2: ; preds = %bb.q, %bb.p, %.lr.ph.i.2
  %.sroa.1319.1.i.2 = phi i64 [ %i.dv, %bb.q ], [ %i.dv, %bb.p ], [ %.sroa.1319.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.16.1.i.2 = phi i64 [ 0, %bb.q ], [ 0, %bb.p ], [ %i.dt, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.9.2.i.2 = phi i8 [ %i.dy, %bb.q ], [ %.sroa.9.2.i.1, %bb.p ], [ %.sroa.9.2.i.1, %.lr.ph.i.2 ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i32 %.sroa.15.0117, 3
  br i1 %exitcond.not.i.2, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.dz = lshr i8 %spec.select.i48.2, 1           ; 2 uses
  %i.ea = zext i8 %.sroa.9.2.i.2 to i32
  %i.eb = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ec = shl nuw nsw i32 1, %i.eb
  %i.ed = and i32 %i.ec, %i.ea
  %.not21.i.3 = icmp eq i32 %i.ed, 0
  %i.ee = or disjoint i8 %i.dz, -128
  %spec.select.i48.3 = select i1 %.not21.i.3, i8 %i.dz, i8 %i.ee ; 2 uses
  %i.ef = add nsw i64 %.sroa.16.1.i.2, 1          ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 8
  br i1 %i.eg, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !12

bb.r:                                             ; preds = %.lr.ph.i.3
  %i.eh = add nsw i64 %.sroa.1319.1.i.2, 1        ; 3 uses
  %i.ei = icmp sgt i32 %.sroa.15.0117, 4
  br i1 %i.ei, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds i8, ptr %.sroa.675.1118, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3: ; preds = %bb.s, %bb.r, %.lr.ph.i.3
  %.sroa.1319.1.i.3 = phi i64 [ %i.eh, %bb.s ], [ %i.eh, %bb.r ], [ %.sroa.1319.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.16.1.i.3 = phi i64 [ 0, %bb.s ], [ 0, %bb.r ], [ %i.ef, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.9.2.i.3 = phi i8 [ %i.ek, %bb.s ], [ %.sroa.9.2.i.2, %bb.r ], [ %.sroa.9.2.i.2, %.lr.ph.i.3 ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i32 %.sroa.15.0117, 4
  br i1 %exitcond.not.i.3, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3
  %i.el = lshr i8 %spec.select.i48.3, 1           ; 2 uses
  %i.em = zext i8 %.sroa.9.2.i.3 to i32
  %i.en = trunc nsw i64 %.sroa.16.1.i.3 to i32
  %i.eo = shl nuw nsw i32 1, %i.en
  %i.ep = and i32 %i.eo, %i.em
  %.not21.i.4 = icmp eq i32 %i.ep, 0
  %i.eq = or disjoint i8 %i.el, -128
  %spec.select.i48.4 = select i1 %.not21.i.4, i8 %i.el, i8 %i.eq ; 2 uses
  %i.er = add nsw i64 %.sroa.16.1.i.3, 1          ; 2 uses
  %i.es = icmp eq i64 %i.er, 8
  br i1 %i.es, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !12

bb.t:                                             ; preds = %.lr.ph.i.4
  %i.et = add nsw i64 %.sroa.1319.1.i.3, 1        ; 3 uses
  %i.eu = icmp sgt i32 %.sroa.15.0117, 5
  br i1 %i.eu, label %bb.u, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds i8, ptr %.sroa.675.1118, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4: ; preds = %bb.u, %bb.t, %.lr.ph.i.4
  %.sroa.1319.1.i.4 = phi i64 [ %i.et, %bb.u ], [ %i.et, %bb.t ], [ %.sroa.1319.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.16.1.i.4 = phi i64 [ 0, %bb.u ], [ 0, %bb.t ], [ %i.er, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.9.2.i.4 = phi i8 [ %i.ew, %bb.u ], [ %.sroa.9.2.i.3, %bb.t ], [ %.sroa.9.2.i.3, %.lr.ph.i.4 ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i32 %.sroa.15.0117, 5
  br i1 %exitcond.not.i.4, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4
  %i.ex = lshr i8 %spec.select.i48.4, 1           ; 2 uses
  %i.ey = zext i8 %.sroa.9.2.i.4 to i32
  %i.ez = trunc nsw i64 %.sroa.16.1.i.4 to i32
  %i.fa = shl nuw nsw i32 1, %i.ez
  %i.fb = and i32 %i.fa, %i.ey
  %.not21.i.5 = icmp eq i32 %i.fb, 0
  %i.fc = or disjoint i8 %i.ex, -128
  %spec.select.i48.5 = select i1 %.not21.i.5, i8 %i.ex, i8 %i.fc ; 2 uses
  %i.fd = add nsw i64 %.sroa.16.1.i.4, 1          ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 8
  br i1 %i.fe, label %bb.v, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !12

bb.v:                                             ; preds = %.lr.ph.i.5
  %i.ff = add nsw i64 %.sroa.1319.1.i.4, 1        ; 3 uses
  %i.fg = icmp sgt i32 %.sroa.15.0117, 6
  br i1 %i.fg, label %bb.w, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.fh = getelementptr inbounds i8, ptr %.sroa.675.1118, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5: ; preds = %bb.w, %bb.v, %.lr.ph.i.5
  %.sroa.1319.1.i.5 = phi i64 [ %i.ff, %bb.w ], [ %i.ff, %bb.v ], [ %.sroa.1319.1.i.4, %.lr.ph.i.5 ]
  %.sroa.16.1.i.5 = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.fd, %.lr.ph.i.5 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !9
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  store i8 %i.u, ptr %i.s, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !9
  store i8 %i.y, ptr %i.x, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !54    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !9
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !54
  store i64 %.0, ptr %i.h, align 8, !tbaa !9
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = srem i64 %1, 8                           ; 8 uses
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 8 uses
  %i.d = lshr i64 %6, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 1) ; 5 uses
  %i.e = shl nuw i64 %spec.select.i, 6
  %i.f = sub i64 %6, %i.e                         ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr i64 %sext.i, 35
  %i.i = and i64 %6, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k                   ; 2 uses
  %i.m = trunc nsw i64 %i.l to i32
  %.not.i = icmp ult i64 %6, 128                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq i64 %6, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.c, align 1
  %i.o = sdiv i64 %3, 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.c, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.r to i64
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %.sroa.21.40.insert.ext = zext i8 %i.u to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16: ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.23.2153 = phi i64 [ %i.n, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.d ] ; 5 uses
  %.sroa.21.2 = phi i64 [ %i.q, %bb.c ], [ %.sroa.21.40.insert.ext, %bb.d ] ; 5 uses
  %i.w = srem i64 %3, 8                           ; 9 uses
  %i.x = srem i64 %5, 8                           ; 9 uses
  %i.y = sdiv i64 %5, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y ; 8 uses
  %i.aa = trunc nsw i64 %i.x to i32               ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i, -1
  %i.ac = zext nneg i32 %i.ab to i64              ; 8 uses
  %.not.i17 = icmp eq i64 %i.x, 0                 ; 3 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread: ; preds = %bb.b
  %i.ad = srem i64 %3, 8
  %i.ae = sdiv i64 %3, 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.ag = srem i64 %5, 8                          ; 3 uses
  %i.ah = sdiv i64 %5, 8
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah
  %i.aj = trunc nsw i64 %i.ag to i32              ; 2 uses
  %notmask.i159 = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask.i159, -1
  %i.al = zext nneg i32 %i.ak to i64
  %.not.i17160 = icmp eq i64 %i.ag, 0
  br label %.preheader

bb.e:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16
  %i.am = icmp sgt i64 %6, 63
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.z, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp sgt i64 %6, 0
  br i1 %i.ao, label %bb.h, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.z, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ap to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16, %bb.f, %bb.g
  %i.aq = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ] ; 4 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.an, %bb.f ], [ undef, %bb.g ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ar = sub nsw i64 64, %i.x
  %i.as = xor i64 %i.ac, -1                       ; 2 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.at = add nsw i64 %i.d, -1
  %i.au = icmp ne i64 %i.d, 0
  %umin.neg.neg = zext i1 %i.au to i64
  %xtraiter = and i64 %spec.select.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %i.av = add nsw i64 %spec.select.i, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = freeze i64 %i.ax                        ; 3 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.ay, i64 %.sroa.23.2153, i64 %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = freeze i64 %i.ba                        ; 3 uses
  %.0.i18.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.bb, i64 %.sroa.21.2, i64 %i.w)
  %i.bc = and i64 %.0.i18.us.prol, %.0.i.us.prol
  store i64 %i.bc, ptr %i.z, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa213.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa212.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa211.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa210.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.010109.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0108.us.unr = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.675.0106.us.unr = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.21.0105.us.unr = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.687.0104.us.unr = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.be = icmp eq i64 %i.at, %umin.neg.neg
  br i1 %i.be, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.bf = and i64 %.sroa.22.2, %i.ac
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.010109.us = phi i64 [ %i.bo, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.010109.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0108.us = phi ptr [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0108.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 3 uses
  %.sroa.675.0106.us = phi ptr [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.675.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.21.0105.us = phi i64 [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.21.0105.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.687.0104.us = phi ptr [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.687.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.23.0103.us = phi i64 [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 8
  %i.bh = load i64, ptr %i.bg, align 1
  %i.bi = freeze i64 %i.bh                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bi, i64 %.sroa.23.0103.us, i64 %i.a)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 8
  %i.bk = load i64, ptr %i.bj, align 1
  %i.bl = freeze i64 %i.bk                        ; 2 uses
  %.0.i18.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bl, i64 %.sroa.21.0105.us, i64 %i.w)
  %i.bm = and i64 %.0.i18.us, %.0.i.us
  store i64 %i.bm, ptr %.sroa.6.0108.us, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 8
  %i.bo = add nsw i64 %.010109.us, -2             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 1
  %i.br = freeze i64 %i.bq                        ; 3 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.br, i64 %i.bi, i64 %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 16 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 1
  %i.bu = freeze i64 %i.bt                        ; 3 uses
  %.0.i18.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bu, i64 %i.bl, i64 %i.w)
  %i.bv = and i64 %.0.i18.us.1, %.0.i.us.1
  store i64 %i.bv, ptr %i.bn, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 16 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.us.1, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !177

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, %bb.h, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bx = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ad, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.w, %bb.h ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 4 uses
  %i.by = phi i64 [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ag, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.x, %bb.h ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bz = phi i32 [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aj, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.aa, %bb.h ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.ca = phi i64 [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.al, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.ac, %bb.h ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i17166187 = phi i1 [ %.not.i17, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i17160, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ false, %bb.h ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.23.2153, %bb.h ], [ %.lcssa212.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.687.0.lcssa = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.c, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.c, %bb.h ], [ %.lcssa213.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.21.0.lcssa = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.21.2, %bb.h ], [ %.lcssa210.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.675.0.lcssa = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.af, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.v, %bb.h ], [ %.lcssa211.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.22.32.insert.ext, %bb.h ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.dh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ai, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.z, %bb.h ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.db, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not11120 = icmp eq i64 %i.l, 0
  br i1 %.not11120, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  %.not.i20 = icmp eq i64 %i.a, 0
  %i.cb = trunc nsw i64 %i.a to i32               ; 2 uses
  %i.cc = sub nsw i32 8, %i.cb
  %.not.i22 = icmp eq i64 %i.bx, 0
  %i.cd = trunc nsw i64 %i.bx to i32              ; 2 uses
  %i.ce = sub nsw i32 8, %i.cd
  %i.cf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.by
  %i.cg = sub nsw i32 8, %i.bz
  %i.ch = xor i64 %i.ca, -1                       ; 2 uses
  %i.ci = trunc nsw i64 %i.a to i32
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = add nsw i64 %i.a, 1                     ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 8
  %i.cm = trunc nsw i64 %i.bx to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = add nsw i64 %i.bx, 1                    ; 2 uses
  %i.cp = icmp eq i64 %i.co, 8
  br label %bb.i

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.010109 = phi i64 [ %i.cq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0108 = phi ptr [ %i.db, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0107 = phi i64 [ %i.dg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.bf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.675.0106 = phi ptr [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.21.0105 = phi i64 [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.687.0104 = phi ptr [ %i.cr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0103 = phi i64 [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.cq = add nsw i64 %.010109, -1                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.687.0104, i64 8 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 1
  %i.ct = freeze i64 %i.cs                        ; 3 uses
  %.0.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ct, i64 %.sroa.23.0103, i64 %i.a)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.675.0106, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = freeze i64 %i.cv                        ; 3 uses
  %.0.i18 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cw, i64 %.sroa.21.0105, i64 %i.w)
  %i.cx = and i64 %.0.i18, %.0.i                  ; 2 uses
  %i.cy = shl i64 %i.cx, %i.x
  %i.cz = lshr i64 %i.cx, %i.ar
  %i.da = or disjoint i64 %i.cz, %i.cy            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.6.0108, i64 8 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 1
  %i.dd = and i64 %i.da, %i.as
  %i.de = or disjoint i64 %i.dd, %.sroa.22.0107
  %i.df = and i64 %i.dc, %i.as
  %i.dg = and i64 %i.da, %i.ac                    ; 2 uses
  %i.dh = or disjoint i64 %i.df, %i.dg            ; 2 uses
  store i64 %i.de, ptr %.sroa.6.0108, align 1
  store i64 %i.dh, ptr %i.db, align 1
  %.not = icmp eq i64 %i.cq, 0
  br i1 %.not, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, !llvm.loop !177

bb.i:                                             ; preds = %.lr.ph132, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit
  %.0131 = phi i32 [ %i.m, %.lr.ph132 ], [ %i.di, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ]
  %.sroa.6.1130 = phi ptr [ %.sroa.6.0.lcssa, %.lr.ph132 ], [ %.sroa.6.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.22.1129 = phi i64 [ %.sroa.22.0.lcssa, %.lr.ph132 ], [ %.sroa.22.5, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 5 uses
  %.sroa.675.1128 = phi ptr [ %.sroa.675.0.lcssa, %.lr.ph132 ], [ %.sroa.675.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.14.0127 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.14.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 18 uses
  %.sroa.21.1125 = phi i64 [ %.sroa.21.0.lcssa, %.lr.ph132 ], [ %.sroa.21.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %.sroa.687.1124 = phi ptr [ %.sroa.687.0.lcssa, %.lr.ph132 ], [ %.sroa.687.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.15.0123 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.15.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 19 uses
  %.sroa.23.1121 = phi i64 [ %.sroa.23.0.lcssa, %.lr.ph132 ], [ %.sroa.23.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %i.di = add nsw i32 %.0131, -1                  ; 2 uses
  %i.dj = icmp slt i32 %.sroa.15.0123, 9
  br i1 %i.dj, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.dk = icmp sgt i32 %.sroa.15.0123, 0
  br i1 %i.dk, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dl = load i8, ptr %.sroa.687.1124, align 1, !tbaa !9 ; 3 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = and i32 %i.cj, %i.dm
  %.not21.i = icmp eq i32 %i.dn, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cl, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !12

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i21.lcssa = phi i8 [ %spec.select.i21, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i21.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i21.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i21.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i21.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i21.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i21.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i21.7, %.lr.ph.i.7 ]
  %i.do = zext i8 %spec.select.i21.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.015.lcssa.i = phi i32 [ %i.do, %._crit_edge.loopexit.i ], [ 0, %bb.j ]
  %i.dp = sub nsw i32 8, %.sroa.15.0123
  %i.dq = lshr i32 %.015.lcssa.i, %i.dp
  %i.dr = trunc nuw i32 %i.dq to i8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %.not221 = icmp eq i32 %.sroa.15.0123, 1
  br i1 %.not221, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i:   ; preds = %bb.l, %bb.k, %.lr.ph.preheader.i
  %.sroa.1319.1.i = phi i64 [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.ck, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.2.i = phi i8 [ %i.dt, %bb.l ], [ %i.dl, %bb.k ], [ %i.dl, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.sroa.15.0123, 1
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %i.du = lshr exact i8 %spec.select.i21, 1       ; 2 uses
  %i.dv = zext i8 %.sroa.9.2.i to i32
  %i.dw = trunc nsw i64 %.sroa.16.1.i to i32
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = and i32 %i.dx, %i.dv
  %.not21.i.1 = icmp eq i32 %i.dy, 0
  %i.dz = or disjoint i8 %i.du, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %i.du, i8 %i.dz ; 2 uses
  %i.ea = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 8
  br i1 %i.eb, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !12

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.ec = add nuw nsw i64 %.sroa.1319.1.i, 1      ; 3 uses
  %i.ed = icmp sgt i32 %.sroa.15.0123, 2
  br i1 %i.ed, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1: ; preds = %bb.n, %bb.m, %.lr.ph.i.1
  %.sroa.1319.1.i.1 = phi i64 [ %i.ec, %bb.n ], [ %i.ec, %bb.m ], [ %.sroa.1319.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.16.1.i.1 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.ea, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.9.2.i.1 = phi i8 [ %i.ef, %bb.n ], [ %.sroa.9.2.i, %bb.m ], [ %.sroa.9.2.i, %.lr.ph.i.1 ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.sroa.15.0123, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1
  %i.eg = lshr exact i8 %spec.select.i21.1, 1     ; 2 uses
  %i.eh = zext i8 %.sroa.9.2.i.1 to i32
  %i.ei = trunc nsw i64 %.sroa.16.1.i.1 to i32
  %i.ej = shl nuw nsw i32 1, %i.ei
  %i.ek = and i32 %i.ej, %i.eh
  %.not21.i.2 = icmp eq i32 %i.ek, 0
  %i.el = or disjoint i8 %i.eg, -128
  %spec.select.i21.2 = select i1 %.not21.i.2, i8 %i.eg, i8 %i.el ; 2 uses
  %i.em = add nsw i64 %.sroa.16.1.i.1, 1          ; 2 uses
  %i.en = icmp eq i64 %i.em, 8
  br i1 %i.en, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !12

bb.o:                                             ; preds = %.lr.ph.i.2
  %i.eo = add nsw i64 %.sroa.1319.1.i.1, 1        ; 3 uses
  %i.ep = icmp sgt i32 %.sroa.15.0123, 3
  br i1 %i.ep, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2: ; preds = %bb.p, %bb.o, %.lr.ph.i.2
  %.sroa.1319.1.i.2 = phi i64 [ %i.eo, %bb.p ], [ %i.eo, %bb.o ], [ %.sroa.1319.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.16.1.i.2 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.em, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.9.2.i.2 = phi i8 [ %i.er, %bb.p ], [ %.sroa.9.2.i.1, %bb.o ], [ %.sroa.9.2.i.1, %.lr.ph.i.2 ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i32 %.sroa.15.0123, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.es = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.et = zext i8 %.sroa.9.2.i.2 to i32
  %i.eu = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = and i32 %i.ev, %i.et
  %.not21.i.3 = icmp eq i32 %i.ew, 0
  %i.ex = or disjoint i8 %i.es, -128
  %spec.select.i21.3 = select i1 %.not21.i.3, i8 %i.es, i8 %i.ex ; 2 uses
  %i.ey = add nsw i64 %.sroa.16.1.i.2, 1          ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 8
  br i1 %i.ez, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !12

bb.q:                                             ; preds = %.lr.ph.i.3
  %i.fa = add nsw i64 %.sroa.1319.1.i.2, 1        ; 3 uses
  %i.fb = icmp sgt i32 %.sroa.15.0123, 4
  br i1 %i.fb, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3: ; preds = %bb.r, %bb.q, %.lr.ph.i.3
  %.sroa.1319.1.i.3 = phi i64 [ %i.fa, %bb.r ], [ %i.fa, %bb.q ], [ %.sroa.1319.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.16.1.i.3 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.ey, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.9.2.i.3 = phi i8 [ %i.fd, %bb.r ], [ %.sroa.9.2.i.2, %bb.q ], [ %.sroa.9.2.i.2, %.lr.ph.i.3 ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i32 %.sroa.15.0123, 4
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3
  %i.fe = lshr i8 %spec.select.i21.3, 1           ; 2 uses
  %i.ff = zext i8 %.sroa.9.2.i.3 to i32
  %i.fg = trunc nsw i64 %.sroa.16.1.i.3 to i32
  %i.fh = shl nuw nsw i32 1, %i.fg
  %i.fi = and i32 %i.fh, %i.ff
  %.not21.i.4 = icmp eq i32 %i.fi, 0
  %i.fj = or disjoint i8 %i.fe, -128
  %spec.select.i21.4 = select i1 %.not21.i.4, i8 %i.fe, i8 %i.fj ; 2 uses
  %i.fk = add nsw i64 %.sroa.16.1.i.3, 1          ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 8
  br i1 %i.fl, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !12

bb.s:                                             ; preds = %.lr.ph.i.4
  %i.fm = add nsw i64 %.sroa.1319.1.i.3, 1        ; 3 uses
  %i.fn = icmp sgt i32 %.sroa.15.0123, 5
  br i1 %i.fn, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.fo = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4: ; preds = %bb.t, %bb.s, %.lr.ph.i.4
  %.sroa.1319.1.i.4 = phi i64 [ %i.fm, %bb.t ], [ %i.fm, %bb.s ], [ %.sroa.1319.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.16.1.i.4 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fk, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.9.2.i.4 = phi i8 [ %i.fp, %bb.t ], [ %.sroa.9.2.i.3, %bb.s ], [ %.sroa.9.2.i.3, %.lr.ph.i.4 ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i32 %.sroa.15.0123, 5
  br i1 %exitcond.not.i.4, label %._crit_edge.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4
  %i.fq = lshr i8 %spec.select.i21.4, 1           ; 2 uses
  %i.fr = zext i8 %.sroa.9.2.i.4 to i32
  %i.fs = trunc nsw i64 %.sroa.16.1.i.4 to i32
  %i.ft = shl nuw nsw i32 1, %i.fs
  %i.fu = and i32 %i.ft, %i.fr
  %.not21.i.5 = icmp eq i32 %i.fu, 0
  %i.fv = or disjoint i8 %i.fq, -128
  %spec.select.i21.5 = select i1 %.not21.i.5, i8 %i.fq, i8 %i.fv ; 2 uses
  %i.fw = add nsw i64 %.sroa.16.1.i.4, 1          ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 8
  br i1 %i.fx, label %bb.u, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !12
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll:bb.a
  %i.ke = add nsw i64 %.sroa.16.1.i39.5, 1        ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 8
  br i1 %i.kf, label %bb.am, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !12

bb.am:                                            ; preds = %.lr.ph.i29.6
  %i.kg = icmp eq i32 %.sroa.14.0127, 8
  br i1 %i.kg, label %bb.an, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.kh = getelementptr i8, ptr %.sroa.675.1128, i64 %.sroa.1319.1.i38.5
  %i.ki = getelementptr i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6: ; preds = %bb.an, %bb.am, %.lr.ph.i29.6
  %.sroa.16.1.i39.6 = phi i64 [ 0, %bb.an ], [ 0, %bb.am ], [ %i.ke, %.lr.ph.i29.6 ] ; 2 uses
  %.sroa.9.2.i40.6 = phi i8 [ %i.kj, %bb.an ], [ %.sroa.9.2.i40.5, %bb.am ], [ %.sroa.9.2.i40.5, %.lr.ph.i29.6 ]
  %exitcond.not.i41.6 = icmp eq i32 %.sroa.14.0127, 7
  br i1 %exitcond.not.i41.6, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.7

.lr.ph.i29.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6
  %i.kk = lshr i8 %spec.select.i36.6, 1           ; 2 uses
  %i.kl = zext i8 %.sroa.9.2.i40.6 to i32
  %i.km = trunc nsw i64 %.sroa.16.1.i39.6 to i32
  %i.kn = shl nuw nsw i32 1, %i.km
  %i.ko = and i32 %i.kn, %i.kl
  %.not21.i35.7 = icmp eq i32 %i.ko, 0
  %i.kp = or disjoint i8 %i.kk, -128
  %spec.select.i36.7 = select i1 %.not21.i35.7, i8 %i.kk, i8 %i.kp
  %i.kq = icmp eq i64 %.sroa.16.1.i39.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i42

bb.ao:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.675.1128, i64 1 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1             ; 2 uses
  %.sroa.21.40.extract.trunc = trunc i64 %.sroa.21.1125 to i8
  %i.kt = trunc i64 %.sroa.21.1125 to i32
  %i.ku = and i32 %i.kt, 255
  %i.kv = lshr i32 %i.ku, %i.cd
  %i.kw = zext i8 %i.ks to i32
  %i.kx = shl nuw nsw i32 %i.kw, %i.ce
  %i.ky = or i32 %i.kx, %i.kv
  %i.kz = trunc i32 %i.ky to i8
  %.2.i23 = select i1 %.not.i22, i8 %.sroa.21.40.extract.trunc, i8 %i.kz
  %.sroa.21.40.insert.ext81 = zext i8 %i.ks to i64
  %i.la = add nsw i32 %.sroa.14.0127, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43: ; preds = %._crit_edge.i25, %bb.ao
  %.sroa.21.3 = phi i64 [ %.sroa.21.1125, %._crit_edge.i25 ], [ %.sroa.21.40.insert.ext81, %bb.ao ]
  %.sroa.14.1 = phi i32 [ 0, %._crit_edge.i25 ], [ %i.la, %bb.ao ]
  %.sroa.675.2 = phi ptr [ %.sroa.675.1128, %._crit_edge.i25 ], [ %i.kr, %bb.ao ]
  %.3.i24 = phi i8 [ %i.hn, %._crit_edge.i25 ], [ %.2.i23, %bb.ao ]
  %i.lb = and i8 %.3.i24, %.3.i                   ; 3 uses
  %i.lc = icmp eq i32 %.0101, 8
  br i1 %i.lc, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  br i1 %.not.i17166187, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ld = zext i8 %i.lb to i32                    ; 2 uses
  %i.le = shl nuw nsw i32 %i.ld, %i.bz
  %i.lf = lshr i32 %i.ld, %i.cg
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = and i64 %.sroa.22.1129, %i.ca
  %i.lj = or i32 %i.le, %i.lf
  %i.lk = zext nneg i32 %i.lj to i64              ; 2 uses
  %i.ll = and i64 %i.lk, %i.ch
  %i.lm = or disjoint i64 %i.ll, %i.li
  %i.ln = trunc i64 %i.lm to i8
  %i.lo = zext i8 %i.lh to i64
  %i.lp = and i64 %i.lo, %i.ch
  %i.lq = and i64 %i.ca, %i.lk
  %i.lr = or disjoint i64 %i.lp, %i.lq            ; 2 uses
  %i.ls = trunc i64 %i.lr to i8
  store i8 %i.ls, ptr %i.lg, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sink = phi i8 [ %i.ln, %bb.aq ], [ %i.lb, %bb.ap ]
  %.sroa.22.4 = phi i64 [ %i.lr, %bb.aq ], [ %.sroa.22.1129, %bb.ap ]
  store i8 %.sink, ptr %.sroa.6.1130, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  %i.lu = sext i32 %.0101 to i64
  %i.lv = icmp sgt i32 %.0101, 0
  br i1 %i.lv, label %.lr.ph.preheader.i44, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i44:                             ; preds = %bb.as
  %i.lw = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.lx = load i8, ptr %.sroa.6.1130, align 1, !tbaa !9
  %wide.trip.count.i45 = zext nneg i32 %.0101 to i64
  br label %.lr.ph.i46

._crit_edge.i49:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i49
  %i.ly = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.ly, align 1, !tbaa !9
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i46:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i44
  %.01537.i = phi i8 [ %i.ml, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lb, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.me, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lx, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lw, %.lr.ph.preheader.i44 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ] ; 3 uses
  %i.lz = and i8 %.01537.i, 1
  %.not.i47 = icmp eq i8 %i.lz, 0
  %i.ma = xor i8 %.sroa.22.034.i, -1
  %i.mb = and i8 %.sroa.14.035.i, %i.ma
  %i.mc = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i47, i8 %i.mb, i8 %i.mc ; 3 uses
  %i.md = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.me = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.mf = icmp eq i8 %i.md, 0
  br i1 %i.mf, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.au:                                            ; preds = %.lr.ph.i46
  %i.mg = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.mh, align 1, !tbaa !9
  %i.mi = icmp slt i64 %i.me, %i.lu
  br i1 %i.mi, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.mj = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %i.mg
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.av, %bb.au, %.lr.ph.i46
  %.sroa.2930.1.i = phi i64 [ %i.mg, %bb.av ], [ %i.mg, %bb.au ], [ %.sroa.2930.033.i, %.lr.ph.i46 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.md, %.lr.ph.i46 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.mk, %bb.av ], [ %.sroa.14.1.i, %bb.au ], [ %.sroa.14.1.i, %.lr.ph.i46 ] ; 2 uses
  %i.ml = lshr i8 %.01537.i, 1
  %exitcond.not.i48 = icmp eq i64 %i.me, %wide.trip.count.i45
  br i1 %exitcond.not.i48, label %._crit_edge.i49, label %.lr.ph.i46, !llvm.loop !0

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.ar, %bb.as, %._crit_edge.i49, %bb.at
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ar ], [ %.sroa.22.1129, %._crit_edge.i49 ], [ %.sroa.22.1129, %bb.at ], [ %.sroa.22.1129, %bb.as ]
  %.sroa.6.2 = phi ptr [ %i.lt, %bb.ar ], [ %.sroa.6.1130, %._crit_edge.i49 ], [ %.sroa.6.1130, %bb.at ], [ %.sroa.6.1130, %bb.as ]
  %.not11 = icmp eq i32 %i.di, 0
  br i1 %.not11, label %._crit_edge, label %bb.i, !llvm.loop !178

._crit_edge:                                      ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = srem i64 %1, 8                           ; 8 uses
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 8 uses
  %i.d = lshr i64 %6, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 1) ; 5 uses
  %i.e = shl nuw i64 %spec.select.i, 6
  %i.f = sub i64 %6, %i.e                         ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr i64 %sext.i, 35
  %i.i = and i64 %6, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k                   ; 2 uses
  %i.m = trunc nsw i64 %i.l to i32
  %.not.i = icmp ult i64 %6, 128                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq i64 %6, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.c, align 1
  %i.o = sdiv i64 %3, 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.c, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.r to i64
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %.sroa.21.40.insert.ext = zext i8 %i.u to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16: ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.23.2153 = phi i64 [ %i.n, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.d ] ; 5 uses
  %.sroa.21.2 = phi i64 [ %i.q, %bb.c ], [ %.sroa.21.40.insert.ext, %bb.d ] ; 5 uses
  %i.w = srem i64 %3, 8                           ; 9 uses
  %i.x = srem i64 %5, 8                           ; 9 uses
  %i.y = sdiv i64 %5, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y ; 8 uses
  %i.aa = trunc nsw i64 %i.x to i32               ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i, -1
  %i.ac = zext nneg i32 %i.ab to i64              ; 8 uses
  %.not.i17 = icmp eq i64 %i.x, 0                 ; 3 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread: ; preds = %bb.b
  %i.ad = srem i64 %3, 8
  %i.ae = sdiv i64 %3, 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.ag = srem i64 %5, 8                          ; 3 uses
  %i.ah = sdiv i64 %5, 8
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah
  %i.aj = trunc nsw i64 %i.ag to i32              ; 2 uses
  %notmask.i159 = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask.i159, -1
  %i.al = zext nneg i32 %i.ak to i64
  %.not.i17160 = icmp eq i64 %i.ag, 0
  br label %.preheader

bb.e:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16
  %i.am = icmp sgt i64 %6, 63
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.z, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp sgt i64 %6, 0
  br i1 %i.ao, label %bb.h, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.z, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ap to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16, %bb.f, %bb.g
  %i.aq = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ] ; 4 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.an, %bb.f ], [ undef, %bb.g ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ar = sub nsw i64 64, %i.x
  %i.as = xor i64 %i.ac, -1                       ; 2 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.at = add nsw i64 %i.d, -1
  %i.au = icmp ne i64 %i.d, 0
  %umin.neg.neg = zext i1 %i.au to i64
  %xtraiter = and i64 %spec.select.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %i.av = add nsw i64 %spec.select.i, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = freeze i64 %i.ax                        ; 3 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.ay, i64 %.sroa.23.2153, i64 %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = freeze i64 %i.ba                        ; 3 uses
  %.0.i18.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.bb, i64 %.sroa.21.2, i64 %i.w)
  %i.bc = or i64 %.0.i18.us.prol, %.0.i.us.prol
  store i64 %i.bc, ptr %i.z, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa213.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa212.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa211.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa210.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.010109.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0108.us.unr = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.675.0106.us.unr = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.21.0105.us.unr = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.687.0104.us.unr = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.be = icmp eq i64 %i.at, %umin.neg.neg
  br i1 %i.be, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.bf = and i64 %.sroa.22.2, %i.ac
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.010109.us = phi i64 [ %i.bo, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.010109.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0108.us = phi ptr [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0108.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 3 uses
  %.sroa.675.0106.us = phi ptr [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.675.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.21.0105.us = phi i64 [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.21.0105.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.687.0104.us = phi ptr [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.687.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.23.0103.us = phi i64 [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 8
  %i.bh = load i64, ptr %i.bg, align 1
  %i.bi = freeze i64 %i.bh                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bi, i64 %.sroa.23.0103.us, i64 %i.a)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 8
  %i.bk = load i64, ptr %i.bj, align 1
  %i.bl = freeze i64 %i.bk                        ; 2 uses
  %.0.i18.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bl, i64 %.sroa.21.0105.us, i64 %i.w)
  %i.bm = or i64 %.0.i18.us, %.0.i.us
  store i64 %i.bm, ptr %.sroa.6.0108.us, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 8
  %i.bo = add nsw i64 %.010109.us, -2             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 1
  %i.br = freeze i64 %i.bq                        ; 3 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.br, i64 %i.bi, i64 %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 16 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 1
  %i.bu = freeze i64 %i.bt                        ; 3 uses
  %.0.i18.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bu, i64 %i.bl, i64 %i.w)
  %i.bv = or i64 %.0.i18.us.1, %.0.i.us.1
  store i64 %i.bv, ptr %i.bn, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 16 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.us.1, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !179

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, %bb.h, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bx = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ad, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.w, %bb.h ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 4 uses
  %i.by = phi i64 [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ag, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.x, %bb.h ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bz = phi i32 [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aj, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.aa, %bb.h ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.ca = phi i64 [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.al, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.ac, %bb.h ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i17166187 = phi i1 [ %.not.i17, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i17160, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ false, %bb.h ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.23.2153, %bb.h ], [ %.lcssa212.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.687.0.lcssa = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.c, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.c, %bb.h ], [ %.lcssa213.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.21.0.lcssa = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.21.2, %bb.h ], [ %.lcssa210.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.675.0.lcssa = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.af, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.v, %bb.h ], [ %.lcssa211.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.22.32.insert.ext, %bb.h ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.dh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ai, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.z, %bb.h ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.db, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not11120 = icmp eq i64 %i.l, 0
  br i1 %.not11120, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  %.not.i20 = icmp eq i64 %i.a, 0
  %i.cb = trunc nsw i64 %i.a to i32               ; 2 uses
  %i.cc = sub nsw i32 8, %i.cb
  %.not.i22 = icmp eq i64 %i.bx, 0
  %i.cd = trunc nsw i64 %i.bx to i32              ; 2 uses
  %i.ce = sub nsw i32 8, %i.cd
  %i.cf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.by
  %i.cg = sub nsw i32 8, %i.bz
  %i.ch = xor i64 %i.ca, -1                       ; 2 uses
  %i.ci = trunc nsw i64 %i.a to i32
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = add nsw i64 %i.a, 1                     ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 8
  %i.cm = trunc nsw i64 %i.bx to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = add nsw i64 %i.bx, 1                    ; 2 uses
  %i.cp = icmp eq i64 %i.co, 8
  br label %bb.i

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.010109 = phi i64 [ %i.cq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0108 = phi ptr [ %i.db, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0107 = phi i64 [ %i.dg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.bf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.675.0106 = phi ptr [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.21.0105 = phi i64 [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.687.0104 = phi ptr [ %i.cr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0103 = phi i64 [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.cq = add nsw i64 %.010109, -1                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.687.0104, i64 8 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 1
  %i.ct = freeze i64 %i.cs                        ; 3 uses
  %.0.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ct, i64 %.sroa.23.0103, i64 %i.a)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.675.0106, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = freeze i64 %i.cv                        ; 3 uses
  %.0.i18 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cw, i64 %.sroa.21.0105, i64 %i.w)
  %i.cx = or i64 %.0.i18, %.0.i                   ; 2 uses
  %i.cy = shl i64 %i.cx, %i.x
  %i.cz = lshr i64 %i.cx, %i.ar
  %i.da = or disjoint i64 %i.cz, %i.cy            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.6.0108, i64 8 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 1
  %i.dd = and i64 %i.da, %i.as
  %i.de = or disjoint i64 %i.dd, %.sroa.22.0107
  %i.df = and i64 %i.dc, %i.as
  %i.dg = and i64 %i.da, %i.ac                    ; 2 uses
  %i.dh = or disjoint i64 %i.df, %i.dg            ; 2 uses
  store i64 %i.de, ptr %.sroa.6.0108, align 1
  store i64 %i.dh, ptr %i.db, align 1
  %.not = icmp eq i64 %i.cq, 0
  br i1 %.not, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, !llvm.loop !179

bb.i:                                             ; preds = %.lr.ph132, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit
  %.0131 = phi i32 [ %i.m, %.lr.ph132 ], [ %i.di, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ]
  %.sroa.6.1130 = phi ptr [ %.sroa.6.0.lcssa, %.lr.ph132 ], [ %.sroa.6.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.22.1129 = phi i64 [ %.sroa.22.0.lcssa, %.lr.ph132 ], [ %.sroa.22.5, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 5 uses
  %.sroa.675.1128 = phi ptr [ %.sroa.675.0.lcssa, %.lr.ph132 ], [ %.sroa.675.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.14.0127 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.14.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 18 uses
  %.sroa.21.1125 = phi i64 [ %.sroa.21.0.lcssa, %.lr.ph132 ], [ %.sroa.21.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %.sroa.687.1124 = phi ptr [ %.sroa.687.0.lcssa, %.lr.ph132 ], [ %.sroa.687.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.15.0123 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.15.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 19 uses
  %.sroa.23.1121 = phi i64 [ %.sroa.23.0.lcssa, %.lr.ph132 ], [ %.sroa.23.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %i.di = add nsw i32 %.0131, -1                  ; 2 uses
  %i.dj = icmp slt i32 %.sroa.15.0123, 9
  br i1 %i.dj, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.dk = icmp sgt i32 %.sroa.15.0123, 0
  br i1 %i.dk, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dl = load i8, ptr %.sroa.687.1124, align 1, !tbaa !9 ; 3 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = and i32 %i.cj, %i.dm
  %.not21.i = icmp eq i32 %i.dn, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cl, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !12

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i21.lcssa = phi i8 [ %spec.select.i21, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i21.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i21.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i21.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i21.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i21.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i21.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i21.7, %.lr.ph.i.7 ]
  %i.do = zext i8 %spec.select.i21.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.015.lcssa.i = phi i32 [ %i.do, %._crit_edge.loopexit.i ], [ 0, %bb.j ]
  %i.dp = sub nsw i32 8, %.sroa.15.0123
  %i.dq = lshr i32 %.015.lcssa.i, %i.dp
  %i.dr = trunc nuw i32 %i.dq to i8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %.not221 = icmp eq i32 %.sroa.15.0123, 1
  br i1 %.not221, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i:   ; preds = %bb.l, %bb.k, %.lr.ph.preheader.i
  %.sroa.1319.1.i = phi i64 [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.ck, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.2.i = phi i8 [ %i.dt, %bb.l ], [ %i.dl, %bb.k ], [ %i.dl, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.sroa.15.0123, 1
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %i.du = lshr exact i8 %spec.select.i21, 1       ; 2 uses
  %i.dv = zext i8 %.sroa.9.2.i to i32
  %i.dw = trunc nsw i64 %.sroa.16.1.i to i32
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = and i32 %i.dx, %i.dv
  %.not21.i.1 = icmp eq i32 %i.dy, 0
  %i.dz = or disjoint i8 %i.du, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %i.du, i8 %i.dz ; 2 uses
  %i.ea = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 8
  br i1 %i.eb, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !12

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.ec = add nuw nsw i64 %.sroa.1319.1.i, 1      ; 3 uses
  %i.ed = icmp sgt i32 %.sroa.15.0123, 2
  br i1 %i.ed, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1: ; preds = %bb.n, %bb.m, %.lr.ph.i.1
  %.sroa.1319.1.i.1 = phi i64 [ %i.ec, %bb.n ], [ %i.ec, %bb.m ], [ %.sroa.1319.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.16.1.i.1 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.ea, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.9.2.i.1 = phi i8 [ %i.ef, %bb.n ], [ %.sroa.9.2.i, %bb.m ], [ %.sroa.9.2.i, %.lr.ph.i.1 ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.sroa.15.0123, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1
  %i.eg = lshr exact i8 %spec.select.i21.1, 1     ; 2 uses
  %i.eh = zext i8 %.sroa.9.2.i.1 to i32
  %i.ei = trunc nsw i64 %.sroa.16.1.i.1 to i32
  %i.ej = shl nuw nsw i32 1, %i.ei
  %i.ek = and i32 %i.ej, %i.eh
  %.not21.i.2 = icmp eq i32 %i.ek, 0
  %i.el = or disjoint i8 %i.eg, -128
  %spec.select.i21.2 = select i1 %.not21.i.2, i8 %i.eg, i8 %i.el ; 2 uses
  %i.em = add nsw i64 %.sroa.16.1.i.1, 1          ; 2 uses
  %i.en = icmp eq i64 %i.em, 8
  br i1 %i.en, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !12

bb.o:                                             ; preds = %.lr.ph.i.2
  %i.eo = add nsw i64 %.sroa.1319.1.i.1, 1        ; 3 uses
  %i.ep = icmp sgt i32 %.sroa.15.0123, 3
  br i1 %i.ep, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2: ; preds = %bb.p, %bb.o, %.lr.ph.i.2
  %.sroa.1319.1.i.2 = phi i64 [ %i.eo, %bb.p ], [ %i.eo, %bb.o ], [ %.sroa.1319.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.16.1.i.2 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.em, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.9.2.i.2 = phi i8 [ %i.er, %bb.p ], [ %.sroa.9.2.i.1, %bb.o ], [ %.sroa.9.2.i.1, %.lr.ph.i.2 ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i32 %.sroa.15.0123, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.es = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.et = zext i8 %.sroa.9.2.i.2 to i32
  %i.eu = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = and i32 %i.ev, %i.et
  %.not21.i.3 = icmp eq i32 %i.ew, 0
  %i.ex = or disjoint i8 %i.es, -128
  %spec.select.i21.3 = select i1 %.not21.i.3, i8 %i.es, i8 %i.ex ; 2 uses
  %i.ey = add nsw i64 %.sroa.16.1.i.2, 1          ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 8
  br i1 %i.ez, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !12

bb.q:                                             ; preds = %.lr.ph.i.3
  %i.fa = add nsw i64 %.sroa.1319.1.i.2, 1        ; 3 uses
  %i.fb = icmp sgt i32 %.sroa.15.0123, 4
  br i1 %i.fb, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3: ; preds = %bb.r, %bb.q, %.lr.ph.i.3
  %.sroa.1319.1.i.3 = phi i64 [ %i.fa, %bb.r ], [ %i.fa, %bb.q ], [ %.sroa.1319.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.16.1.i.3 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.ey, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.9.2.i.3 = phi i8 [ %i.fd, %bb.r ], [ %.sroa.9.2.i.2, %bb.q ], [ %.sroa.9.2.i.2, %.lr.ph.i.3 ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i32 %.sroa.15.0123, 4
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3
  %i.fe = lshr i8 %spec.select.i21.3, 1           ; 2 uses
  %i.ff = zext i8 %.sroa.9.2.i.3 to i32
  %i.fg = trunc nsw i64 %.sroa.16.1.i.3 to i32
  %i.fh = shl nuw nsw i32 1, %i.fg
  %i.fi = and i32 %i.fh, %i.ff
  %.not21.i.4 = icmp eq i32 %i.fi, 0
  %i.fj = or disjoint i8 %i.fe, -128
  %spec.select.i21.4 = select i1 %.not21.i.4, i8 %i.fe, i8 %i.fj ; 2 uses
  %i.fk = add nsw i64 %.sroa.16.1.i.3, 1          ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 8
  br i1 %i.fl, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !12

bb.s:                                             ; preds = %.lr.ph.i.4
  %i.fm = add nsw i64 %.sroa.1319.1.i.3, 1        ; 3 uses
  %i.fn = icmp sgt i32 %.sroa.15.0123, 5
  br i1 %i.fn, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.fo = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4: ; preds = %bb.t, %bb.s, %.lr.ph.i.4
  %.sroa.1319.1.i.4 = phi i64 [ %i.fm, %bb.t ], [ %i.fm, %bb.s ], [ %.sroa.1319.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.16.1.i.4 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fk, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.9.2.i.4 = phi i8 [ %i.fp, %bb.t ], [ %.sroa.9.2.i.3, %bb.s ], [ %.sroa.9.2.i.3, %.lr.ph.i.4 ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i32 %.sroa.15.0123, 5
  br i1 %exitcond.not.i.4, label %._crit_edge.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4
  %i.fq = lshr i8 %spec.select.i21.4, 1           ; 2 uses
  %i.fr = zext i8 %.sroa.9.2.i.4 to i32
  %i.fs = trunc nsw i64 %.sroa.16.1.i.4 to i32
  %i.ft = shl nuw nsw i32 1, %i.fs
  %i.fu = and i32 %i.ft, %i.fr
  %.not21.i.5 = icmp eq i32 %i.fu, 0
  %i.fv = or disjoint i8 %i.fq, -128
  %spec.select.i21.5 = select i1 %.not21.i.5, i8 %i.fq, i8 %i.fv ; 2 uses
  %i.fw = add nsw i64 %.sroa.16.1.i.4, 1          ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 8
  br i1 %i.fx, label %bb.u, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !12
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll:bb.a
  %i.ke = add nsw i64 %.sroa.16.1.i39.5, 1        ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 8
  br i1 %i.kf, label %bb.am, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !12

bb.am:                                            ; preds = %.lr.ph.i29.6
  %i.kg = icmp eq i32 %.sroa.14.0127, 8
  br i1 %i.kg, label %bb.an, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.kh = getelementptr i8, ptr %.sroa.675.1128, i64 %.sroa.1319.1.i38.5
  %i.ki = getelementptr i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6: ; preds = %bb.an, %bb.am, %.lr.ph.i29.6
  %.sroa.16.1.i39.6 = phi i64 [ 0, %bb.an ], [ 0, %bb.am ], [ %i.ke, %.lr.ph.i29.6 ] ; 2 uses
  %.sroa.9.2.i40.6 = phi i8 [ %i.kj, %bb.an ], [ %.sroa.9.2.i40.5, %bb.am ], [ %.sroa.9.2.i40.5, %.lr.ph.i29.6 ]
  %exitcond.not.i41.6 = icmp eq i32 %.sroa.14.0127, 7
  br i1 %exitcond.not.i41.6, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.7

.lr.ph.i29.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6
  %i.kk = lshr i8 %spec.select.i36.6, 1           ; 2 uses
  %i.kl = zext i8 %.sroa.9.2.i40.6 to i32
  %i.km = trunc nsw i64 %.sroa.16.1.i39.6 to i32
  %i.kn = shl nuw nsw i32 1, %i.km
  %i.ko = and i32 %i.kn, %i.kl
  %.not21.i35.7 = icmp eq i32 %i.ko, 0
  %i.kp = or disjoint i8 %i.kk, -128
  %spec.select.i36.7 = select i1 %.not21.i35.7, i8 %i.kk, i8 %i.kp
  %i.kq = icmp eq i64 %.sroa.16.1.i39.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i42

bb.ao:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.675.1128, i64 1 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1             ; 2 uses
  %.sroa.21.40.extract.trunc = trunc i64 %.sroa.21.1125 to i8
  %i.kt = trunc i64 %.sroa.21.1125 to i32
  %i.ku = and i32 %i.kt, 255
  %i.kv = lshr i32 %i.ku, %i.cd
  %i.kw = zext i8 %i.ks to i32
  %i.kx = shl nuw nsw i32 %i.kw, %i.ce
  %i.ky = or i32 %i.kx, %i.kv
  %i.kz = trunc i32 %i.ky to i8
  %.2.i23 = select i1 %.not.i22, i8 %.sroa.21.40.extract.trunc, i8 %i.kz
  %.sroa.21.40.insert.ext81 = zext i8 %i.ks to i64
  %i.la = add nsw i32 %.sroa.14.0127, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43: ; preds = %._crit_edge.i25, %bb.ao
  %.sroa.21.3 = phi i64 [ %.sroa.21.1125, %._crit_edge.i25 ], [ %.sroa.21.40.insert.ext81, %bb.ao ]
  %.sroa.14.1 = phi i32 [ 0, %._crit_edge.i25 ], [ %i.la, %bb.ao ]
  %.sroa.675.2 = phi ptr [ %.sroa.675.1128, %._crit_edge.i25 ], [ %i.kr, %bb.ao ]
  %.3.i24 = phi i8 [ %i.hn, %._crit_edge.i25 ], [ %.2.i23, %bb.ao ]
  %i.lb = or i8 %.3.i24, %.3.i                    ; 3 uses
  %i.lc = icmp eq i32 %.0101, 8
  br i1 %i.lc, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  br i1 %.not.i17166187, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ld = zext i8 %i.lb to i32                    ; 2 uses
  %i.le = shl nuw nsw i32 %i.ld, %i.bz
  %i.lf = lshr i32 %i.ld, %i.cg
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = and i64 %.sroa.22.1129, %i.ca
  %i.lj = or i32 %i.le, %i.lf
  %i.lk = zext nneg i32 %i.lj to i64              ; 2 uses
  %i.ll = and i64 %i.lk, %i.ch
  %i.lm = or disjoint i64 %i.ll, %i.li
  %i.ln = trunc i64 %i.lm to i8
  %i.lo = zext i8 %i.lh to i64
  %i.lp = and i64 %i.lo, %i.ch
  %i.lq = and i64 %i.ca, %i.lk
  %i.lr = or disjoint i64 %i.lp, %i.lq            ; 2 uses
  %i.ls = trunc i64 %i.lr to i8
  store i8 %i.ls, ptr %i.lg, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sink = phi i8 [ %i.ln, %bb.aq ], [ %i.lb, %bb.ap ]
  %.sroa.22.4 = phi i64 [ %i.lr, %bb.aq ], [ %.sroa.22.1129, %bb.ap ]
  store i8 %.sink, ptr %.sroa.6.1130, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  %i.lu = sext i32 %.0101 to i64
  %i.lv = icmp sgt i32 %.0101, 0
  br i1 %i.lv, label %.lr.ph.preheader.i44, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i44:                             ; preds = %bb.as
  %i.lw = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.lx = load i8, ptr %.sroa.6.1130, align 1, !tbaa !9
  %wide.trip.count.i45 = zext nneg i32 %.0101 to i64
  br label %.lr.ph.i46

._crit_edge.i49:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i49
  %i.ly = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.ly, align 1, !tbaa !9
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i46:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i44
  %.01537.i = phi i8 [ %i.ml, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lb, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.me, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lx, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lw, %.lr.ph.preheader.i44 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ] ; 3 uses
  %i.lz = and i8 %.01537.i, 1
  %.not.i47 = icmp eq i8 %i.lz, 0
  %i.ma = xor i8 %.sroa.22.034.i, -1
  %i.mb = and i8 %.sroa.14.035.i, %i.ma
  %i.mc = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i47, i8 %i.mb, i8 %i.mc ; 3 uses
  %i.md = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.me = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.mf = icmp eq i8 %i.md, 0
  br i1 %i.mf, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.au:                                            ; preds = %.lr.ph.i46
  %i.mg = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.mh, align 1, !tbaa !9
  %i.mi = icmp slt i64 %i.me, %i.lu
  br i1 %i.mi, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.mj = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %i.mg
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.av, %bb.au, %.lr.ph.i46
  %.sroa.2930.1.i = phi i64 [ %i.mg, %bb.av ], [ %i.mg, %bb.au ], [ %.sroa.2930.033.i, %.lr.ph.i46 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.md, %.lr.ph.i46 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.mk, %bb.av ], [ %.sroa.14.1.i, %bb.au ], [ %.sroa.14.1.i, %.lr.ph.i46 ] ; 2 uses
  %i.ml = lshr i8 %.01537.i, 1
  %exitcond.not.i48 = icmp eq i64 %i.me, %wide.trip.count.i45
  br i1 %exitcond.not.i48, label %._crit_edge.i49, label %.lr.ph.i46, !llvm.loop !0

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.ar, %bb.as, %._crit_edge.i49, %bb.at
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ar ], [ %.sroa.22.1129, %._crit_edge.i49 ], [ %.sroa.22.1129, %bb.at ], [ %.sroa.22.1129, %bb.as ]
  %.sroa.6.2 = phi ptr [ %i.lt, %bb.ar ], [ %.sroa.6.1130, %._crit_edge.i49 ], [ %.sroa.6.1130, %bb.at ], [ %.sroa.6.1130, %bb.as ]
  %.not11 = icmp eq i32 %i.di, 0
  br i1 %.not11, label %._crit_edge, label %bb.i, !llvm.loop !180

._crit_edge:                                      ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = srem i64 %1, 8                           ; 8 uses
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 8 uses
  %i.d = lshr i64 %6, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 1) ; 5 uses
  %i.e = shl nuw i64 %spec.select.i, 6
  %i.f = sub i64 %6, %i.e                         ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr i64 %sext.i, 35
  %i.i = and i64 %6, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k                   ; 2 uses
  %i.m = trunc nsw i64 %i.l to i32
  %.not.i = icmp ult i64 %6, 128                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq i64 %6, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.c, align 1
  %i.o = sdiv i64 %3, 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.c, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.r to i64
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %.sroa.21.40.insert.ext = zext i8 %i.u to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16: ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.23.2153 = phi i64 [ %i.n, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.d ] ; 5 uses
  %.sroa.21.2 = phi i64 [ %i.q, %bb.c ], [ %.sroa.21.40.insert.ext, %bb.d ] ; 5 uses
  %i.w = srem i64 %3, 8                           ; 9 uses
  %i.x = srem i64 %5, 8                           ; 9 uses
  %i.y = sdiv i64 %5, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y ; 8 uses
  %i.aa = trunc nsw i64 %i.x to i32               ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i, -1
  %i.ac = zext nneg i32 %i.ab to i64              ; 8 uses
  %.not.i17 = icmp eq i64 %i.x, 0                 ; 3 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread: ; preds = %bb.b
  %i.ad = srem i64 %3, 8
  %i.ae = sdiv i64 %3, 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.ag = srem i64 %5, 8                          ; 3 uses
  %i.ah = sdiv i64 %5, 8
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah
  %i.aj = trunc nsw i64 %i.ag to i32              ; 2 uses
  %notmask.i159 = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask.i159, -1
  %i.al = zext nneg i32 %i.ak to i64
  %.not.i17160 = icmp eq i64 %i.ag, 0
  br label %.preheader

bb.e:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16
  %i.am = icmp sgt i64 %6, 63
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.z, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp sgt i64 %6, 0
  br i1 %i.ao, label %bb.h, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.z, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ap to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16, %bb.f, %bb.g
  %i.aq = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ] ; 4 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.an, %bb.f ], [ undef, %bb.g ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ar = sub nsw i64 64, %i.x
  %i.as = xor i64 %i.ac, -1                       ; 2 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.at = add nsw i64 %i.d, -1
  %i.au = icmp ne i64 %i.d, 0
  %umin.neg.neg = zext i1 %i.au to i64
  %xtraiter = and i64 %spec.select.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %i.av = add nsw i64 %spec.select.i, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = freeze i64 %i.ax                        ; 3 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.ay, i64 %.sroa.23.2153, i64 %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = freeze i64 %i.ba                        ; 3 uses
  %.0.i18.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.bb, i64 %.sroa.21.2, i64 %i.w)
  %i.bc = xor i64 %.0.i18.us.prol, %.0.i.us.prol
  store i64 %i.bc, ptr %i.z, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa213.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa212.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa211.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa210.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.010109.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0108.us.unr = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bd, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.675.0106.us.unr = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.21.0105.us.unr = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.687.0104.us.unr = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.be = icmp eq i64 %i.at, %umin.neg.neg
  br i1 %i.be, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.bf = and i64 %.sroa.22.2, %i.ac
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.010109.us = phi i64 [ %i.bo, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.010109.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0108.us = phi ptr [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0108.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 3 uses
  %.sroa.675.0106.us = phi ptr [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.675.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.21.0105.us = phi i64 [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.21.0105.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.687.0104.us = phi ptr [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.687.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.23.0103.us = phi i64 [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 8
  %i.bh = load i64, ptr %i.bg, align 1
  %i.bi = freeze i64 %i.bh                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bi, i64 %.sroa.23.0103.us, i64 %i.a)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 8
  %i.bk = load i64, ptr %i.bj, align 1
  %i.bl = freeze i64 %i.bk                        ; 2 uses
  %.0.i18.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bl, i64 %.sroa.21.0105.us, i64 %i.w)
  %i.bm = xor i64 %.0.i18.us, %.0.i.us
  store i64 %i.bm, ptr %.sroa.6.0108.us, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 8
  %i.bo = add nsw i64 %.010109.us, -2             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 1
  %i.br = freeze i64 %i.bq                        ; 3 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.br, i64 %i.bi, i64 %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 16 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 1
  %i.bu = freeze i64 %i.bt                        ; 3 uses
  %.0.i18.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bu, i64 %i.bl, i64 %i.w)
  %i.bv = xor i64 %.0.i18.us.1, %.0.i.us.1
  store i64 %i.bv, ptr %i.bn, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 16 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.us.1, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !181

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, %bb.h, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bx = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ad, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.w, %bb.h ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 4 uses
  %i.by = phi i64 [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ag, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.x, %bb.h ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bz = phi i32 [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aj, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.aa, %bb.h ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.ca = phi i64 [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.al, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.ac, %bb.h ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i17166187 = phi i1 [ %.not.i17, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i17160, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ false, %bb.h ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.23.2153, %bb.h ], [ %.lcssa212.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.687.0.lcssa = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bp, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.c, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.c, %bb.h ], [ %.lcssa213.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.21.0.lcssa = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.21.2, %bb.h ], [ %.lcssa210.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.675.0.lcssa = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bs, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.af, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.v, %bb.h ], [ %.lcssa211.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.22.32.insert.ext, %bb.h ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.dh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ai, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.z, %bb.h ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.db, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not11120 = icmp eq i64 %i.l, 0
  br i1 %.not11120, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  %.not.i20 = icmp eq i64 %i.a, 0
  %i.cb = trunc nsw i64 %i.a to i32               ; 2 uses
  %i.cc = sub nsw i32 8, %i.cb
  %.not.i22 = icmp eq i64 %i.bx, 0
  %i.cd = trunc nsw i64 %i.bx to i32              ; 2 uses
  %i.ce = sub nsw i32 8, %i.cd
  %i.cf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.by
  %i.cg = sub nsw i32 8, %i.bz
  %i.ch = xor i64 %i.ca, -1                       ; 2 uses
  %i.ci = trunc nsw i64 %i.a to i32
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = add nsw i64 %i.a, 1                     ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 8
  %i.cm = trunc nsw i64 %i.bx to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = add nsw i64 %i.bx, 1                    ; 2 uses
  %i.cp = icmp eq i64 %i.co, 8
  br label %bb.i

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.010109 = phi i64 [ %i.cq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0108 = phi ptr [ %i.db, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0107 = phi i64 [ %i.dg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.bf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.675.0106 = phi ptr [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.21.0105 = phi i64 [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.687.0104 = phi ptr [ %i.cr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0103 = phi i64 [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.cq = add nsw i64 %.010109, -1                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.687.0104, i64 8 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 1
  %i.ct = freeze i64 %i.cs                        ; 3 uses
  %.0.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ct, i64 %.sroa.23.0103, i64 %i.a)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.675.0106, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = freeze i64 %i.cv                        ; 3 uses
  %.0.i18 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cw, i64 %.sroa.21.0105, i64 %i.w)
  %i.cx = xor i64 %.0.i18, %.0.i                  ; 2 uses
  %i.cy = shl i64 %i.cx, %i.x
  %i.cz = lshr i64 %i.cx, %i.ar
  %i.da = or disjoint i64 %i.cz, %i.cy            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.6.0108, i64 8 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 1
  %i.dd = and i64 %i.da, %i.as
  %i.de = or disjoint i64 %i.dd, %.sroa.22.0107
  %i.df = and i64 %i.dc, %i.as
  %i.dg = and i64 %i.da, %i.ac                    ; 2 uses
  %i.dh = or disjoint i64 %i.df, %i.dg            ; 2 uses
  store i64 %i.de, ptr %.sroa.6.0108, align 1
  store i64 %i.dh, ptr %i.db, align 1
  %.not = icmp eq i64 %i.cq, 0
  br i1 %.not, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, !llvm.loop !181

bb.i:                                             ; preds = %.lr.ph132, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit
  %.0131 = phi i32 [ %i.m, %.lr.ph132 ], [ %i.di, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ]
  %.sroa.6.1130 = phi ptr [ %.sroa.6.0.lcssa, %.lr.ph132 ], [ %.sroa.6.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.22.1129 = phi i64 [ %.sroa.22.0.lcssa, %.lr.ph132 ], [ %.sroa.22.5, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 5 uses
  %.sroa.675.1128 = phi ptr [ %.sroa.675.0.lcssa, %.lr.ph132 ], [ %.sroa.675.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.14.0127 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.14.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 18 uses
  %.sroa.21.1125 = phi i64 [ %.sroa.21.0.lcssa, %.lr.ph132 ], [ %.sroa.21.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %.sroa.687.1124 = phi ptr [ %.sroa.687.0.lcssa, %.lr.ph132 ], [ %.sroa.687.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.15.0123 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.15.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 19 uses
  %.sroa.23.1121 = phi i64 [ %.sroa.23.0.lcssa, %.lr.ph132 ], [ %.sroa.23.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %i.di = add nsw i32 %.0131, -1                  ; 2 uses
  %i.dj = icmp slt i32 %.sroa.15.0123, 9
  br i1 %i.dj, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.dk = icmp sgt i32 %.sroa.15.0123, 0
  br i1 %i.dk, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dl = load i8, ptr %.sroa.687.1124, align 1, !tbaa !9 ; 3 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = and i32 %i.cj, %i.dm
  %.not21.i = icmp eq i32 %i.dn, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cl, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !12

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i21.lcssa = phi i8 [ %spec.select.i21, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i21.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i21.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i21.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i21.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i21.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i21.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i21.7, %.lr.ph.i.7 ]
  %i.do = zext i8 %spec.select.i21.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.015.lcssa.i = phi i32 [ %i.do, %._crit_edge.loopexit.i ], [ 0, %bb.j ]
  %i.dp = sub nsw i32 8, %.sroa.15.0123
  %i.dq = lshr i32 %.015.lcssa.i, %i.dp
  %i.dr = trunc nuw i32 %i.dq to i8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %.not221 = icmp eq i32 %.sroa.15.0123, 1
  br i1 %.not221, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i:   ; preds = %bb.l, %bb.k, %.lr.ph.preheader.i
  %.sroa.1319.1.i = phi i64 [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.ck, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.2.i = phi i8 [ %i.dt, %bb.l ], [ %i.dl, %bb.k ], [ %i.dl, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.sroa.15.0123, 1
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %i.du = lshr exact i8 %spec.select.i21, 1       ; 2 uses
  %i.dv = zext i8 %.sroa.9.2.i to i32
  %i.dw = trunc nsw i64 %.sroa.16.1.i to i32
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = and i32 %i.dx, %i.dv
  %.not21.i.1 = icmp eq i32 %i.dy, 0
  %i.dz = or disjoint i8 %i.du, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %i.du, i8 %i.dz ; 2 uses
  %i.ea = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 8
  br i1 %i.eb, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !12

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.ec = add nuw nsw i64 %.sroa.1319.1.i, 1      ; 3 uses
  %i.ed = icmp sgt i32 %.sroa.15.0123, 2
  br i1 %i.ed, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1: ; preds = %bb.n, %bb.m, %.lr.ph.i.1
  %.sroa.1319.1.i.1 = phi i64 [ %i.ec, %bb.n ], [ %i.ec, %bb.m ], [ %.sroa.1319.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.16.1.i.1 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.ea, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.9.2.i.1 = phi i8 [ %i.ef, %bb.n ], [ %.sroa.9.2.i, %bb.m ], [ %.sroa.9.2.i, %.lr.ph.i.1 ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.sroa.15.0123, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1
  %i.eg = lshr exact i8 %spec.select.i21.1, 1     ; 2 uses
  %i.eh = zext i8 %.sroa.9.2.i.1 to i32
  %i.ei = trunc nsw i64 %.sroa.16.1.i.1 to i32
  %i.ej = shl nuw nsw i32 1, %i.ei
  %i.ek = and i32 %i.ej, %i.eh
  %.not21.i.2 = icmp eq i32 %i.ek, 0
  %i.el = or disjoint i8 %i.eg, -128
  %spec.select.i21.2 = select i1 %.not21.i.2, i8 %i.eg, i8 %i.el ; 2 uses
  %i.em = add nsw i64 %.sroa.16.1.i.1, 1          ; 2 uses
  %i.en = icmp eq i64 %i.em, 8
  br i1 %i.en, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !12

bb.o:                                             ; preds = %.lr.ph.i.2
  %i.eo = add nsw i64 %.sroa.1319.1.i.1, 1        ; 3 uses
  %i.ep = icmp sgt i32 %.sroa.15.0123, 3
  br i1 %i.ep, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2: ; preds = %bb.p, %bb.o, %.lr.ph.i.2
  %.sroa.1319.1.i.2 = phi i64 [ %i.eo, %bb.p ], [ %i.eo, %bb.o ], [ %.sroa.1319.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.16.1.i.2 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.em, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.9.2.i.2 = phi i8 [ %i.er, %bb.p ], [ %.sroa.9.2.i.1, %bb.o ], [ %.sroa.9.2.i.1, %.lr.ph.i.2 ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i32 %.sroa.15.0123, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.es = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.et = zext i8 %.sroa.9.2.i.2 to i32
  %i.eu = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = and i32 %i.ev, %i.et
  %.not21.i.3 = icmp eq i32 %i.ew, 0
  %i.ex = or disjoint i8 %i.es, -128
  %spec.select.i21.3 = select i1 %.not21.i.3, i8 %i.es, i8 %i.ex ; 2 uses
  %i.ey = add nsw i64 %.sroa.16.1.i.2, 1          ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 8
  br i1 %i.ez, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !12

bb.q:                                             ; preds = %.lr.ph.i.3
  %i.fa = add nsw i64 %.sroa.1319.1.i.2, 1        ; 3 uses
  %i.fb = icmp sgt i32 %.sroa.15.0123, 4
  br i1 %i.fb, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3: ; preds = %bb.r, %bb.q, %.lr.ph.i.3
  %.sroa.1319.1.i.3 = phi i64 [ %i.fa, %bb.r ], [ %i.fa, %bb.q ], [ %.sroa.1319.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.16.1.i.3 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.ey, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.9.2.i.3 = phi i8 [ %i.fd, %bb.r ], [ %.sroa.9.2.i.2, %bb.q ], [ %.sroa.9.2.i.2, %.lr.ph.i.3 ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i32 %.sroa.15.0123, 4
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3
  %i.fe = lshr i8 %spec.select.i21.3, 1           ; 2 uses
  %i.ff = zext i8 %.sroa.9.2.i.3 to i32
  %i.fg = trunc nsw i64 %.sroa.16.1.i.3 to i32
  %i.fh = shl nuw nsw i32 1, %i.fg
  %i.fi = and i32 %i.fh, %i.ff
  %.not21.i.4 = icmp eq i32 %i.fi, 0
  %i.fj = or disjoint i8 %i.fe, -128
  %spec.select.i21.4 = select i1 %.not21.i.4, i8 %i.fe, i8 %i.fj ; 2 uses
  %i.fk = add nsw i64 %.sroa.16.1.i.3, 1          ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 8
  br i1 %i.fl, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !12

bb.s:                                             ; preds = %.lr.ph.i.4
  %i.fm = add nsw i64 %.sroa.1319.1.i.3, 1        ; 3 uses
  %i.fn = icmp sgt i32 %.sroa.15.0123, 5
  br i1 %i.fn, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.fo = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4: ; preds = %bb.t, %bb.s, %.lr.ph.i.4
  %.sroa.1319.1.i.4 = phi i64 [ %i.fm, %bb.t ], [ %i.fm, %bb.s ], [ %.sroa.1319.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.16.1.i.4 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fk, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.9.2.i.4 = phi i8 [ %i.fp, %bb.t ], [ %.sroa.9.2.i.3, %bb.s ], [ %.sroa.9.2.i.3, %.lr.ph.i.4 ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i32 %.sroa.15.0123, 5
  br i1 %exitcond.not.i.4, label %._crit_edge.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4
  %i.fq = lshr i8 %spec.select.i21.4, 1           ; 2 uses
  %i.fr = zext i8 %.sroa.9.2.i.4 to i32
  %i.fs = trunc nsw i64 %.sroa.16.1.i.4 to i32
  %i.ft = shl nuw nsw i32 1, %i.fs
  %i.fu = and i32 %i.ft, %i.fr
  %.not21.i.5 = icmp eq i32 %i.fu, 0
  %i.fv = or disjoint i8 %i.fq, -128
  %spec.select.i21.5 = select i1 %.not21.i.5, i8 %i.fq, i8 %i.fv ; 2 uses
  %i.fw = add nsw i64 %.sroa.16.1.i.4, 1          ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 8
  br i1 %i.fx, label %bb.u, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !12
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll:bb.a
  %i.ke = add nsw i64 %.sroa.16.1.i39.5, 1        ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 8
  br i1 %i.kf, label %bb.am, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !12

bb.am:                                            ; preds = %.lr.ph.i29.6
  %i.kg = icmp eq i32 %.sroa.14.0127, 8
  br i1 %i.kg, label %bb.an, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.kh = getelementptr i8, ptr %.sroa.675.1128, i64 %.sroa.1319.1.i38.5
  %i.ki = getelementptr i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6: ; preds = %bb.an, %bb.am, %.lr.ph.i29.6
  %.sroa.16.1.i39.6 = phi i64 [ 0, %bb.an ], [ 0, %bb.am ], [ %i.ke, %.lr.ph.i29.6 ] ; 2 uses
  %.sroa.9.2.i40.6 = phi i8 [ %i.kj, %bb.an ], [ %.sroa.9.2.i40.5, %bb.am ], [ %.sroa.9.2.i40.5, %.lr.ph.i29.6 ]
  %exitcond.not.i41.6 = icmp eq i32 %.sroa.14.0127, 7
  br i1 %exitcond.not.i41.6, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.7

.lr.ph.i29.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6
  %i.kk = lshr i8 %spec.select.i36.6, 1           ; 2 uses
  %i.kl = zext i8 %.sroa.9.2.i40.6 to i32
  %i.km = trunc nsw i64 %.sroa.16.1.i39.6 to i32
  %i.kn = shl nuw nsw i32 1, %i.km
  %i.ko = and i32 %i.kn, %i.kl
  %.not21.i35.7 = icmp eq i32 %i.ko, 0
  %i.kp = or disjoint i8 %i.kk, -128
  %spec.select.i36.7 = select i1 %.not21.i35.7, i8 %i.kk, i8 %i.kp
  %i.kq = icmp eq i64 %.sroa.16.1.i39.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i42

bb.ao:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.675.1128, i64 1 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1             ; 2 uses
  %.sroa.21.40.extract.trunc = trunc i64 %.sroa.21.1125 to i8
  %i.kt = trunc i64 %.sroa.21.1125 to i32
  %i.ku = and i32 %i.kt, 255
  %i.kv = lshr i32 %i.ku, %i.cd
  %i.kw = zext i8 %i.ks to i32
  %i.kx = shl nuw nsw i32 %i.kw, %i.ce
  %i.ky = or i32 %i.kx, %i.kv
  %i.kz = trunc i32 %i.ky to i8
  %.2.i23 = select i1 %.not.i22, i8 %.sroa.21.40.extract.trunc, i8 %i.kz
  %.sroa.21.40.insert.ext81 = zext i8 %i.ks to i64
  %i.la = add nsw i32 %.sroa.14.0127, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43: ; preds = %._crit_edge.i25, %bb.ao
  %.sroa.21.3 = phi i64 [ %.sroa.21.1125, %._crit_edge.i25 ], [ %.sroa.21.40.insert.ext81, %bb.ao ]
  %.sroa.14.1 = phi i32 [ 0, %._crit_edge.i25 ], [ %i.la, %bb.ao ]
  %.sroa.675.2 = phi ptr [ %.sroa.675.1128, %._crit_edge.i25 ], [ %i.kr, %bb.ao ]
  %.3.i24 = phi i8 [ %i.hn, %._crit_edge.i25 ], [ %.2.i23, %bb.ao ]
  %i.lb = xor i8 %.3.i24, %.3.i                   ; 3 uses
  %i.lc = icmp eq i32 %.0101, 8
  br i1 %i.lc, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  br i1 %.not.i17166187, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ld = zext i8 %i.lb to i32                    ; 2 uses
  %i.le = shl nuw nsw i32 %i.ld, %i.bz
  %i.lf = lshr i32 %i.ld, %i.cg
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = and i64 %.sroa.22.1129, %i.ca
  %i.lj = or i32 %i.le, %i.lf
  %i.lk = zext nneg i32 %i.lj to i64              ; 2 uses
  %i.ll = and i64 %i.lk, %i.ch
  %i.lm = or disjoint i64 %i.ll, %i.li
  %i.ln = trunc i64 %i.lm to i8
  %i.lo = zext i8 %i.lh to i64
  %i.lp = and i64 %i.lo, %i.ch
  %i.lq = and i64 %i.ca, %i.lk
  %i.lr = or disjoint i64 %i.lp, %i.lq            ; 2 uses
  %i.ls = trunc i64 %i.lr to i8
  store i8 %i.ls, ptr %i.lg, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sink = phi i8 [ %i.ln, %bb.aq ], [ %i.lb, %bb.ap ]
  %.sroa.22.4 = phi i64 [ %i.lr, %bb.aq ], [ %.sroa.22.1129, %bb.ap ]
  store i8 %.sink, ptr %.sroa.6.1130, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  %i.lu = sext i32 %.0101 to i64
  %i.lv = icmp sgt i32 %.0101, 0
  br i1 %i.lv, label %.lr.ph.preheader.i44, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i44:                             ; preds = %bb.as
  %i.lw = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.lx = load i8, ptr %.sroa.6.1130, align 1, !tbaa !9
  %wide.trip.count.i45 = zext nneg i32 %.0101 to i64
  br label %.lr.ph.i46

._crit_edge.i49:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i49
  %i.ly = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.ly, align 1, !tbaa !9
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i46:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i44
  %.01537.i = phi i8 [ %i.ml, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lb, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.me, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lx, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lw, %.lr.ph.preheader.i44 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ] ; 3 uses
  %i.lz = and i8 %.01537.i, 1
  %.not.i47 = icmp eq i8 %i.lz, 0
  %i.ma = xor i8 %.sroa.22.034.i, -1
  %i.mb = and i8 %.sroa.14.035.i, %i.ma
  %i.mc = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i47, i8 %i.mb, i8 %i.mc ; 3 uses
  %i.md = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.me = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.mf = icmp eq i8 %i.md, 0
  br i1 %i.mf, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.au:                                            ; preds = %.lr.ph.i46
  %i.mg = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.mh, align 1, !tbaa !9
  %i.mi = icmp slt i64 %i.me, %i.lu
  br i1 %i.mi, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.mj = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %i.mg
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.av, %bb.au, %.lr.ph.i46
  %.sroa.2930.1.i = phi i64 [ %i.mg, %bb.av ], [ %i.mg, %bb.au ], [ %.sroa.2930.033.i, %.lr.ph.i46 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.md, %.lr.ph.i46 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.mk, %bb.av ], [ %.sroa.14.1.i, %bb.au ], [ %.sroa.14.1.i, %.lr.ph.i46 ] ; 2 uses
  %i.ml = lshr i8 %.01537.i, 1
  %exitcond.not.i48 = icmp eq i64 %i.me, %wide.trip.count.i45
  br i1 %exitcond.not.i48, label %._crit_edge.i49, label %.lr.ph.i46, !llvm.loop !0

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.ar, %bb.as, %._crit_edge.i49, %bb.at
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ar ], [ %.sroa.22.1129, %._crit_edge.i49 ], [ %.sroa.22.1129, %bb.at ], [ %.sroa.22.1129, %bb.as ]
  %.sroa.6.2 = phi ptr [ %i.lt, %bb.ar ], [ %.sroa.6.1130, %._crit_edge.i49 ], [ %.sroa.6.1130, %bb.at ], [ %.sroa.6.1130, %bb.as ]
  %.not11 = icmp eq i32 %i.di, 0
  br i1 %.not11, label %._crit_edge, label %bb.i, !llvm.loop !182

._crit_edge:                                      ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = srem i64 %1, 8                           ; 8 uses
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 8 uses
  %i.d = lshr i64 %6, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 1) ; 5 uses
  %i.e = shl nuw i64 %spec.select.i, 6
  %i.f = sub i64 %6, %i.e                         ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr i64 %sext.i, 35
  %i.i = and i64 %6, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k                   ; 2 uses
  %i.m = trunc nsw i64 %i.l to i32
  %.not.i = icmp ult i64 %6, 128                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq i64 %6, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.c, align 1
  %i.o = sdiv i64 %3, 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.c, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.r to i64
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %.sroa.21.40.insert.ext = zext i8 %i.u to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16: ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.23.2153 = phi i64 [ %i.n, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.d ] ; 5 uses
  %.sroa.21.2 = phi i64 [ %i.q, %bb.c ], [ %.sroa.21.40.insert.ext, %bb.d ] ; 5 uses
  %i.w = srem i64 %3, 8                           ; 9 uses
  %i.x = srem i64 %5, 8                           ; 9 uses
  %i.y = sdiv i64 %5, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y ; 8 uses
  %i.aa = trunc nsw i64 %i.x to i32               ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i, -1
  %i.ac = zext nneg i32 %i.ab to i64              ; 8 uses
  %.not.i17 = icmp eq i64 %i.x, 0                 ; 3 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread: ; preds = %bb.b
  %i.ad = srem i64 %3, 8
  %i.ae = sdiv i64 %3, 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.ag = srem i64 %5, 8                          ; 3 uses
  %i.ah = sdiv i64 %5, 8
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah
  %i.aj = trunc nsw i64 %i.ag to i32              ; 2 uses
  %notmask.i159 = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask.i159, -1
  %i.al = zext nneg i32 %i.ak to i64
  %.not.i17160 = icmp eq i64 %i.ag, 0
  br label %.preheader

bb.e:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16
  %i.am = icmp sgt i64 %6, 63
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.z, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp sgt i64 %6, 0
  br i1 %i.ao, label %bb.h, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.z, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ap to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16, %bb.f, %bb.g
  %i.aq = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ] ; 4 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.an, %bb.f ], [ undef, %bb.g ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ar = sub nsw i64 64, %i.x
  %i.as = xor i64 %i.ac, -1                       ; 2 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.at = add nsw i64 %i.d, -1
  %i.au = icmp ne i64 %i.d, 0
  %umin.neg.neg = zext i1 %i.au to i64
  %xtraiter = and i64 %spec.select.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %i.av = add nsw i64 %spec.select.i, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = freeze i64 %i.ax                        ; 3 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.ay, i64 %.sroa.23.2153, i64 %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = freeze i64 %i.ba                        ; 3 uses
  %.0.i18.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.bb, i64 %.sroa.21.2, i64 %i.w)
  %i.bc = xor i64 %.0.i18.us.prol, -1
  %i.bd = and i64 %.0.i.us.prol, %i.bc
  store i64 %i.bd, ptr %i.z, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa213.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa212.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa211.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa210.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.be, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.010109.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0108.us.unr = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.be, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.675.0106.us.unr = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.21.0105.us.unr = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.687.0104.us.unr = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.bf = icmp eq i64 %i.at, %umin.neg.neg
  br i1 %i.bf, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.bg = and i64 %.sroa.22.2, %i.ac
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.010109.us = phi i64 [ %i.bq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.010109.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0108.us = phi ptr [ %i.bz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0108.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 3 uses
  %.sroa.675.0106.us = phi ptr [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.675.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.21.0105.us = phi i64 [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.21.0105.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.687.0104.us = phi ptr [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.687.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.23.0103.us = phi i64 [ %i.bt, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 8
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = freeze i64 %i.bi                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bj, i64 %.sroa.23.0103.us, i64 %i.a)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 8
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = freeze i64 %i.bl                        ; 2 uses
  %.0.i18.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bm, i64 %.sroa.21.0105.us, i64 %i.w)
  %i.bn = xor i64 %.0.i18.us, -1
  %i.bo = and i64 %.0.i.us, %i.bn
  store i64 %i.bo, ptr %.sroa.6.0108.us, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 8
  %i.bq = add nsw i64 %.010109.us, -2             ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 1
  %i.bt = freeze i64 %i.bs                        ; 3 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bt, i64 %i.bj, i64 %i.a)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 16 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = freeze i64 %i.bv                        ; 3 uses
  %.0.i18.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bw, i64 %i.bm, i64 %i.w)
  %i.bx = xor i64 %.0.i18.us.1, -1
  %i.by = and i64 %.0.i.us.1, %i.bx
  store i64 %i.by, ptr %i.bp, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 16 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.bq, 0
  br i1 %.not.us.1, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !183

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, %bb.h, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ca = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ad, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.w, %bb.h ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 4 uses
  %i.cb = phi i64 [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ag, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.x, %bb.h ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.cc = phi i32 [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aj, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.aa, %bb.h ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.cd = phi i64 [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.al, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.ac, %bb.h ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i17166187 = phi i1 [ %.not.i17, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i17160, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ false, %bb.h ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bt, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.23.2153, %bb.h ], [ %.lcssa212.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.687.0.lcssa = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.c, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.c, %bb.h ], [ %.lcssa213.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.21.0.lcssa = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.21.2, %bb.h ], [ %.lcssa210.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.675.0.lcssa = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.af, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.v, %bb.h ], [ %.lcssa211.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.22.32.insert.ext, %bb.h ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.dl, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ai, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.z, %bb.h ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.df, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not11120 = icmp eq i64 %i.l, 0
  br i1 %.not11120, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  %.not.i20 = icmp eq i64 %i.a, 0
  %i.ce = trunc nsw i64 %i.a to i32               ; 2 uses
  %i.cf = sub nsw i32 8, %i.ce
  %.not.i22 = icmp eq i64 %i.ca, 0
  %i.cg = trunc nsw i64 %i.ca to i32              ; 2 uses
  %i.ch = sub nsw i32 8, %i.cg
  %i.ci = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cb
  %i.cj = sub nsw i32 8, %i.cc
  %i.ck = xor i64 %i.cd, -1                       ; 2 uses
  %i.cl = trunc nsw i64 %i.a to i32
  %i.cm = shl nuw nsw i32 1, %i.cl
  %i.cn = add nsw i64 %i.a, 1                     ; 2 uses
  %i.co = icmp eq i64 %i.cn, 8
  %i.cp = trunc nsw i64 %i.ca to i32
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = add nsw i64 %i.ca, 1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 8
  br label %bb.i

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.010109 = phi i64 [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0108 = phi ptr [ %i.df, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0107 = phi i64 [ %i.dk, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.bg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.675.0106 = phi ptr [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.21.0105 = phi i64 [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.687.0104 = phi ptr [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0103 = phi i64 [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.ct = add nsw i64 %.010109, -1                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.687.0104, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = freeze i64 %i.cv                        ; 3 uses
  %.0.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.cw, i64 %.sroa.23.0103, i64 %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.675.0106, i64 8 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 1
  %i.cz = freeze i64 %i.cy                        ; 3 uses
  %.0.i18 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cz, i64 %.sroa.21.0105, i64 %i.w)
  %i.da = xor i64 %.0.i18, -1
  %i.db = and i64 %.0.i, %i.da                    ; 2 uses
  %i.dc = shl i64 %i.db, %i.x
  %i.dd = lshr i64 %i.db, %i.ar
  %i.de = or disjoint i64 %i.dd, %i.dc            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.6.0108, i64 8 ; 4 uses
  %i.dg = load i64, ptr %i.df, align 1
  %i.dh = and i64 %i.de, %i.as
  %i.di = or disjoint i64 %i.dh, %.sroa.22.0107
  %i.dj = and i64 %i.dg, %i.as
  %i.dk = and i64 %i.de, %i.ac                    ; 2 uses
  %i.dl = or disjoint i64 %i.dj, %i.dk            ; 2 uses
  store i64 %i.di, ptr %.sroa.6.0108, align 1
  store i64 %i.dl, ptr %i.df, align 1
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, !llvm.loop !183

bb.i:                                             ; preds = %.lr.ph132, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit
  %.0131 = phi i32 [ %i.m, %.lr.ph132 ], [ %i.dm, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ]
  %.sroa.6.1130 = phi ptr [ %.sroa.6.0.lcssa, %.lr.ph132 ], [ %.sroa.6.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.22.1129 = phi i64 [ %.sroa.22.0.lcssa, %.lr.ph132 ], [ %.sroa.22.5, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 5 uses
  %.sroa.675.1128 = phi ptr [ %.sroa.675.0.lcssa, %.lr.ph132 ], [ %.sroa.675.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.14.0127 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.14.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 18 uses
  %.sroa.21.1125 = phi i64 [ %.sroa.21.0.lcssa, %.lr.ph132 ], [ %.sroa.21.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %.sroa.687.1124 = phi ptr [ %.sroa.687.0.lcssa, %.lr.ph132 ], [ %.sroa.687.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.15.0123 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.15.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 19 uses
  %.sroa.23.1121 = phi i64 [ %.sroa.23.0.lcssa, %.lr.ph132 ], [ %.sroa.23.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %i.dm = add nsw i32 %.0131, -1                  ; 2 uses
  %i.dn = icmp slt i32 %.sroa.15.0123, 9
  br i1 %i.dn, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.do = icmp sgt i32 %.sroa.15.0123, 0
  br i1 %i.do, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dp = load i8, ptr %.sroa.687.1124, align 1, !tbaa !9 ; 3 uses
  %i.dq = zext i8 %i.dp to i32
  %i.dr = and i32 %i.cm, %i.dq
  %.not21.i = icmp eq i32 %i.dr, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.co, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !12

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i21.lcssa = phi i8 [ %spec.select.i21, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i21.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i21.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i21.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i21.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i21.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i21.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i21.7, %.lr.ph.i.7 ]
  %i.ds = zext i8 %spec.select.i21.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.015.lcssa.i = phi i32 [ %i.ds, %._crit_edge.loopexit.i ], [ 0, %bb.j ]
  %i.dt = sub nsw i32 8, %.sroa.15.0123
  %i.du = lshr i32 %.015.lcssa.i, %i.dt
  %i.dv = trunc nuw i32 %i.du to i8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %.not221 = icmp eq i32 %.sroa.15.0123, 1
  br i1 %.not221, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i:   ; preds = %bb.l, %bb.k, %.lr.ph.preheader.i
  %.sroa.1319.1.i = phi i64 [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.cn, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.2.i = phi i8 [ %i.dx, %bb.l ], [ %i.dp, %bb.k ], [ %i.dp, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.sroa.15.0123, 1
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %i.dy = lshr exact i8 %spec.select.i21, 1       ; 2 uses
  %i.dz = zext i8 %.sroa.9.2.i to i32
  %i.ea = trunc nsw i64 %.sroa.16.1.i to i32
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = and i32 %i.eb, %i.dz
  %.not21.i.1 = icmp eq i32 %i.ec, 0
  %i.ed = or disjoint i8 %i.dy, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %i.dy, i8 %i.ed ; 2 uses
  %i.ee = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 8
  br i1 %i.ef, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !12

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.eg = add nuw nsw i64 %.sroa.1319.1.i, 1      ; 3 uses
  %i.eh = icmp sgt i32 %.sroa.15.0123, 2
  br i1 %i.eh, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1: ; preds = %bb.n, %bb.m, %.lr.ph.i.1
  %.sroa.1319.1.i.1 = phi i64 [ %i.eg, %bb.n ], [ %i.eg, %bb.m ], [ %.sroa.1319.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.16.1.i.1 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.ee, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.9.2.i.1 = phi i8 [ %i.ej, %bb.n ], [ %.sroa.9.2.i, %bb.m ], [ %.sroa.9.2.i, %.lr.ph.i.1 ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.sroa.15.0123, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1
  %i.ek = lshr exact i8 %spec.select.i21.1, 1     ; 2 uses
  %i.el = zext i8 %.sroa.9.2.i.1 to i32
  %i.em = trunc nsw i64 %.sroa.16.1.i.1 to i32
  %i.en = shl nuw nsw i32 1, %i.em
  %i.eo = and i32 %i.en, %i.el
  %.not21.i.2 = icmp eq i32 %i.eo, 0
  %i.ep = or disjoint i8 %i.ek, -128
  %spec.select.i21.2 = select i1 %.not21.i.2, i8 %i.ek, i8 %i.ep ; 2 uses
  %i.eq = add nsw i64 %.sroa.16.1.i.1, 1          ; 2 uses
  %i.er = icmp eq i64 %i.eq, 8
  br i1 %i.er, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !12

bb.o:                                             ; preds = %.lr.ph.i.2
  %i.es = add nsw i64 %.sroa.1319.1.i.1, 1        ; 3 uses
  %i.et = icmp sgt i32 %.sroa.15.0123, 3
  br i1 %i.et, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.eu = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2: ; preds = %bb.p, %bb.o, %.lr.ph.i.2
  %.sroa.1319.1.i.2 = phi i64 [ %i.es, %bb.p ], [ %i.es, %bb.o ], [ %.sroa.1319.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.16.1.i.2 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.eq, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.9.2.i.2 = phi i8 [ %i.ev, %bb.p ], [ %.sroa.9.2.i.1, %bb.o ], [ %.sroa.9.2.i.1, %.lr.ph.i.2 ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i32 %.sroa.15.0123, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.ew = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.ex = zext i8 %.sroa.9.2.i.2 to i32
  %i.ey = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ez = shl nuw nsw i32 1, %i.ey
  %i.fa = and i32 %i.ez, %i.ex
  %.not21.i.3 = icmp eq i32 %i.fa, 0
  %i.fb = or disjoint i8 %i.ew, -128
  %spec.select.i21.3 = select i1 %.not21.i.3, i8 %i.ew, i8 %i.fb ; 2 uses
  %i.fc = add nsw i64 %.sroa.16.1.i.2, 1          ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 8
  br i1 %i.fd, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !12

bb.q:                                             ; preds = %.lr.ph.i.3
  %i.fe = add nsw i64 %.sroa.1319.1.i.2, 1        ; 3 uses
  %i.ff = icmp sgt i32 %.sroa.15.0123, 4
  br i1 %i.ff, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.fg = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3: ; preds = %bb.r, %bb.q, %.lr.ph.i.3
  %.sroa.1319.1.i.3 = phi i64 [ %i.fe, %bb.r ], [ %i.fe, %bb.q ], [ %.sroa.1319.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.16.1.i.3 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.fc, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.9.2.i.3 = phi i8 [ %i.fh, %bb.r ], [ %.sroa.9.2.i.2, %bb.q ], [ %.sroa.9.2.i.2, %.lr.ph.i.3 ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i32 %.sroa.15.0123, 4
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3
  %i.fi = lshr i8 %spec.select.i21.3, 1           ; 2 uses
  %i.fj = zext i8 %.sroa.9.2.i.3 to i32
  %i.fk = trunc nsw i64 %.sroa.16.1.i.3 to i32
  %i.fl = shl nuw nsw i32 1, %i.fk
  %i.fm = and i32 %i.fl, %i.fj
  %.not21.i.4 = icmp eq i32 %i.fm, 0
  %i.fn = or disjoint i8 %i.fi, -128
  %spec.select.i21.4 = select i1 %.not21.i.4, i8 %i.fi, i8 %i.fn ; 2 uses
  %i.fo = add nsw i64 %.sroa.16.1.i.3, 1          ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 8
  br i1 %i.fp, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !12

bb.s:                                             ; preds = %.lr.ph.i.4
  %i.fq = add nsw i64 %.sroa.1319.1.i.3, 1        ; 3 uses
  %i.fr = icmp sgt i32 %.sroa.15.0123, 5
  br i1 %i.fr, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4: ; preds = %bb.t, %bb.s, %.lr.ph.i.4
  %.sroa.1319.1.i.4 = phi i64 [ %i.fq, %bb.t ], [ %i.fq, %bb.s ], [ %.sroa.1319.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.16.1.i.4 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fo, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.9.2.i.4 = phi i8 [ %i.ft, %bb.t ], [ %.sroa.9.2.i.3, %bb.s ], [ %.sroa.9.2.i.3, %.lr.ph.i.4 ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i32 %.sroa.15.0123, 5
  br i1 %exitcond.not.i.4, label %._crit_edge.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4
  %i.fu = lshr i8 %spec.select.i21.4, 1           ; 2 uses
  %i.fv = zext i8 %.sroa.9.2.i.4 to i32
  %i.fw = trunc nsw i64 %.sroa.16.1.i.4 to i32
  %i.fx = shl nuw nsw i32 1, %i.fw
  %i.fy = and i32 %i.fx, %i.fv
  %.not21.i.5 = icmp eq i32 %i.fy, 0
  %i.fz = or disjoint i8 %i.fu, -128
  %spec.select.i21.5 = select i1 %.not21.i.5, i8 %i.fu, i8 %i.fz ; 2 uses
  %i.ga = add nsw i64 %.sroa.16.1.i.4, 1          ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 8
  br i1 %i.gb, label %bb.u, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !12
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll:bb.a
  %i.kj = icmp eq i64 %i.ki, 8
  br i1 %i.kj, label %bb.am, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !12

bb.am:                                            ; preds = %.lr.ph.i29.6
  %i.kk = icmp eq i32 %.sroa.14.0127, 8
  br i1 %i.kk, label %bb.an, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.kl = getelementptr i8, ptr %.sroa.675.1128, i64 %.sroa.1319.1.i38.5
  %i.km = getelementptr i8, ptr %i.kl, i64 1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6: ; preds = %bb.an, %bb.am, %.lr.ph.i29.6
  %.sroa.16.1.i39.6 = phi i64 [ 0, %bb.an ], [ 0, %bb.am ], [ %i.ki, %.lr.ph.i29.6 ] ; 2 uses
  %.sroa.9.2.i40.6 = phi i8 [ %i.kn, %bb.an ], [ %.sroa.9.2.i40.5, %bb.am ], [ %.sroa.9.2.i40.5, %.lr.ph.i29.6 ]
  %exitcond.not.i41.6 = icmp eq i32 %.sroa.14.0127, 7
  br i1 %exitcond.not.i41.6, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.7

.lr.ph.i29.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6
  %i.ko = lshr i8 %spec.select.i36.6, 1           ; 2 uses
  %i.kp = zext i8 %.sroa.9.2.i40.6 to i32
  %i.kq = trunc nsw i64 %.sroa.16.1.i39.6 to i32
  %i.kr = shl nuw nsw i32 1, %i.kq
  %i.ks = and i32 %i.kr, %i.kp
  %.not21.i35.7 = icmp eq i32 %i.ks, 0
  %i.kt = or disjoint i8 %i.ko, -128
  %spec.select.i36.7 = select i1 %.not21.i35.7, i8 %i.ko, i8 %i.kt
  %i.ku = icmp eq i64 %.sroa.16.1.i39.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i42

bb.ao:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.675.1128, i64 1 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1             ; 2 uses
  %.sroa.21.40.extract.trunc = trunc i64 %.sroa.21.1125 to i8
  %i.kx = trunc i64 %.sroa.21.1125 to i32
  %i.ky = and i32 %i.kx, 255
  %i.kz = lshr i32 %i.ky, %i.cg
  %i.la = zext i8 %i.kw to i32
  %i.lb = shl nuw nsw i32 %i.la, %i.ch
  %i.lc = or i32 %i.lb, %i.kz
  %i.ld = trunc i32 %i.lc to i8
  %.2.i23 = select i1 %.not.i22, i8 %.sroa.21.40.extract.trunc, i8 %i.ld
  %.sroa.21.40.insert.ext81 = zext i8 %i.kw to i64
  %i.le = add nsw i32 %.sroa.14.0127, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43: ; preds = %._crit_edge.i25, %bb.ao
  %.sroa.21.3 = phi i64 [ %.sroa.21.1125, %._crit_edge.i25 ], [ %.sroa.21.40.insert.ext81, %bb.ao ]
  %.sroa.14.1 = phi i32 [ 0, %._crit_edge.i25 ], [ %i.le, %bb.ao ]
  %.sroa.675.2 = phi ptr [ %.sroa.675.1128, %._crit_edge.i25 ], [ %i.kv, %bb.ao ]
  %.3.i24 = phi i8 [ %i.hr, %._crit_edge.i25 ], [ %.2.i23, %bb.ao ]
  %i.lf = xor i8 %.3.i24, -1
  %i.lg = and i8 %.3.i, %i.lf                     ; 3 uses
  %i.lh = icmp eq i32 %.0101, 8
  br i1 %i.lh, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  br i1 %.not.i17166187, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.li = zext i8 %i.lg to i32                    ; 2 uses
  %i.lj = shl nuw nsw i32 %i.li, %i.cc
  %i.lk = lshr i32 %i.li, %i.cj
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1 ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = and i64 %.sroa.22.1129, %i.cd
  %i.lo = or i32 %i.lj, %i.lk
  %i.lp = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.lq = and i64 %i.lp, %i.ck
  %i.lr = or disjoint i64 %i.lq, %i.ln
  %i.ls = trunc i64 %i.lr to i8
  %i.lt = zext i8 %i.lm to i64
  %i.lu = and i64 %i.lt, %i.ck
  %i.lv = and i64 %i.cd, %i.lp
  %i.lw = or disjoint i64 %i.lu, %i.lv            ; 2 uses
  %i.lx = trunc i64 %i.lw to i8
  store i8 %i.lx, ptr %i.ll, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sink = phi i8 [ %i.ls, %bb.aq ], [ %i.lg, %bb.ap ]
  %.sroa.22.4 = phi i64 [ %i.lw, %bb.aq ], [ %.sroa.22.1129, %bb.ap ]
  store i8 %.sink, ptr %.sroa.6.1130, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.6.1130, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  %i.lz = sext i32 %.0101 to i64
  %i.ma = icmp sgt i32 %.0101, 0
  br i1 %i.ma, label %.lr.ph.preheader.i44, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i44:                             ; preds = %bb.as
  %i.mb = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.mc = load i8, ptr %.sroa.6.1130, align 1, !tbaa !9
  %wide.trip.count.i45 = zext nneg i32 %.0101 to i64
  br label %.lr.ph.i46

._crit_edge.i49:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i49
  %i.md = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.md, align 1, !tbaa !9
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i46:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i44
  %.01537.i = phi i8 [ %i.mq, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lg, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.6.036.i = phi i64 [ %i.mj, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ]
  %.sroa.14.035.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.mc, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.mb, %.lr.ph.preheader.i44 ] ; 3 uses
  %.sroa.2930.033.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ] ; 3 uses
  %i.me = and i8 %.01537.i, 1
  %.not.i47 = icmp eq i8 %i.me, 0
  %i.mf = xor i8 %.sroa.22.034.i, -1
  %i.mg = and i8 %.sroa.14.035.i, %i.mf
  %i.mh = or i8 %.sroa.22.034.i, %.sroa.14.035.i
  %.sroa.14.1.i = select i1 %.not.i47, i8 %i.mg, i8 %i.mh ; 3 uses
  %i.mi = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.mj = add nuw nsw i64 %.sroa.6.036.i, 1       ; 3 uses
  %i.mk = icmp eq i8 %i.mi, 0
  br i1 %i.mk, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.au:                                            ; preds = %.lr.ph.i46
  %i.ml = add nsw i64 %.sroa.2930.033.i, 1        ; 3 uses
  %i.mm = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %.sroa.2930.033.i
  store i8 %.sroa.14.1.i, ptr %i.mm, align 1, !tbaa !9
  %i.mn = icmp slt i64 %i.mj, %i.lz
  br i1 %i.mn, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.mo = getelementptr inbounds i8, ptr %.sroa.6.1130, i64 %i.ml
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.av, %bb.au, %.lr.ph.i46
  %.sroa.2930.1.i = phi i64 [ %i.ml, %bb.av ], [ %i.ml, %bb.au ], [ %.sroa.2930.033.i, %.lr.ph.i46 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.mi, %.lr.ph.i46 ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ %i.mp, %bb.av ], [ %.sroa.14.1.i, %bb.au ], [ %.sroa.14.1.i, %.lr.ph.i46 ] ; 2 uses
  %i.mq = lshr i8 %.01537.i, 1
  %exitcond.not.i48 = icmp eq i64 %i.mj, %wide.trip.count.i45
  br i1 %exitcond.not.i48, label %._crit_edge.i49, label %.lr.ph.i46, !llvm.loop !0

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.ar, %bb.as, %._crit_edge.i49, %bb.at
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ar ], [ %.sroa.22.1129, %._crit_edge.i49 ], [ %.sroa.22.1129, %bb.at ], [ %.sroa.22.1129, %bb.as ]
  %.sroa.6.2 = phi ptr [ %i.ly, %bb.ar ], [ %.sroa.6.1130, %._crit_edge.i49 ], [ %.sroa.6.1130, %bb.at ], [ %.sroa.6.1130, %bb.as ]
  %.not11 = icmp eq i32 %i.dm, 0
  br i1 %.not11, label %._crit_edge, label %bb.i, !llvm.loop !184

._crit_edge:                                      ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = srem i64 %1, 8                           ; 8 uses
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 8 uses
  %i.d = lshr i64 %6, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 1) ; 5 uses
  %i.e = shl nuw i64 %spec.select.i, 6
  %i.f = sub i64 %6, %i.e                         ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr i64 %sext.i, 35
  %i.i = and i64 %6, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k                   ; 2 uses
  %i.m = trunc nsw i64 %i.l to i32
  %.not.i = icmp ult i64 %6, 128                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq i64 %6, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.c, align 1
  %i.o = sdiv i64 %3, 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.c, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.r to i64
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %.sroa.21.40.insert.ext = zext i8 %i.u to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16: ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.23.2153 = phi i64 [ %i.n, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.d ] ; 5 uses
  %.sroa.21.2 = phi i64 [ %i.q, %bb.c ], [ %.sroa.21.40.insert.ext, %bb.d ] ; 5 uses
  %i.w = srem i64 %3, 8                           ; 9 uses
  %i.x = srem i64 %5, 8                           ; 9 uses
  %i.y = sdiv i64 %5, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y ; 8 uses
  %i.aa = trunc nsw i64 %i.x to i32               ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i, -1
  %i.ac = zext nneg i32 %i.ab to i64              ; 8 uses
  %.not.i17 = icmp eq i64 %i.x, 0                 ; 3 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.e

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread: ; preds = %bb.b
  %i.ad = srem i64 %3, 8
  %i.ae = sdiv i64 %3, 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.ag = srem i64 %5, 8                          ; 3 uses
  %i.ah = sdiv i64 %5, 8
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah
  %i.aj = trunc nsw i64 %i.ag to i32              ; 2 uses
  %notmask.i159 = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask.i159, -1
  %i.al = zext nneg i32 %i.ak to i64
  %.not.i17160 = icmp eq i64 %i.ag, 0
  br label %.preheader

bb.e:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16
  %i.am = icmp sgt i64 %6, 63
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.z, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp sgt i64 %6, 0
  br i1 %i.ao, label %bb.h, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.z, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ap to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16, %bb.f, %bb.g
  %i.aq = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ] ; 4 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16 ], [ %i.an, %bb.f ], [ undef, %bb.g ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ar = sub nsw i64 64, %i.x
  %i.as = xor i64 %i.ac, -1                       ; 2 uses
  br i1 %.not.i17, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.at = add nsw i64 %i.d, -1
  %i.au = icmp ne i64 %i.d, 0
  %umin.neg.neg = zext i1 %i.au to i64
  %xtraiter = and i64 %spec.select.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %i.av = add nsw i64 %spec.select.i, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = freeze i64 %i.ax                        ; 3 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.ay, i64 %.sroa.23.2153, i64 %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = freeze i64 %i.ba                        ; 3 uses
  %.0.i18.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.bb, i64 %.sroa.21.2, i64 %i.w)
  %i.bc = xor i64 %.0.i18.us.prol, -1
  %i.bd = or i64 %.0.i.us.prol, %i.bc
  store i64 %i.bd, ptr %i.z, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa213.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa212.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa211.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa210.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.be, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.010109.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.av, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0108.us.unr = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.be, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.675.0106.us.unr = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.21.0105.us.unr = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.687.0104.us.unr = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.aw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ay, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.bf = icmp eq i64 %i.at, %umin.neg.neg
  br i1 %i.bf, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.bg = and i64 %.sroa.22.2, %i.ac
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.010109.us = phi i64 [ %i.bq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.010109.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0108.us = phi ptr [ %i.bz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0108.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 3 uses
  %.sroa.675.0106.us = phi ptr [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.675.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.21.0105.us = phi i64 [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.21.0105.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.687.0104.us = phi ptr [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.687.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 2 uses
  %.sroa.23.0103.us = phi i64 [ %i.bt, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 8
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = freeze i64 %i.bi                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bj, i64 %.sroa.23.0103.us, i64 %i.a)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 8
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = freeze i64 %i.bl                        ; 2 uses
  %.0.i18.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bm, i64 %.sroa.21.0105.us, i64 %i.w)
  %i.bn = xor i64 %.0.i18.us, -1
  %i.bo = or i64 %.0.i.us, %i.bn
  store i64 %i.bo, ptr %.sroa.6.0108.us, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 8
  %i.bq = add nsw i64 %.010109.us, -2             ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.687.0104.us, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 1
  %i.bt = freeze i64 %i.bs                        ; 3 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bt, i64 %i.bj, i64 %i.a)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.675.0106.us, i64 16 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = freeze i64 %i.bv                        ; 3 uses
  %.0.i18.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bw, i64 %i.bm, i64 %i.w)
  %i.bx = xor i64 %.0.i18.us.1, -1
  %i.by = or i64 %.0.i.us.1, %i.bx
  store i64 %i.by, ptr %i.bp, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.6.0108.us, i64 16 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.bq, 0
  br i1 %.not.us.1, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !185

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread, %bb.h, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.ca = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ad, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.w, %bb.h ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 4 uses
  %i.cb = phi i64 [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ag, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.x, %bb.h ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.x, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.cc = phi i32 [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aj, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.aa, %bb.h ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.aq, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.cd = phi i64 [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.al, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.ac, %bb.h ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ac, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i17166187 = phi i1 [ %.not.i17, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i17160, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ false, %bb.h ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bt, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.23.2153, %bb.h ], [ %.lcssa212.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.687.0.lcssa = phi ptr [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.br, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.c, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.c, %bb.h ], [ %.lcssa213.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.21.0.lcssa = phi i64 [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.21.2, %bb.h ], [ %.lcssa210.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.675.0.lcssa = phi ptr [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.af, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.v, %bb.h ], [ %.lcssa211.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %.sroa.22.32.insert.ext, %bb.h ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.dl, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ai, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit16.thread ], [ %i.z, %bb.h ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.df, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not11120 = icmp eq i64 %i.l, 0
  br i1 %.not11120, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  %.not.i20 = icmp eq i64 %i.a, 0
  %i.ce = trunc nsw i64 %i.a to i32               ; 2 uses
  %i.cf = sub nsw i32 8, %i.ce
  %.not.i22 = icmp eq i64 %i.ca, 0
  %i.cg = trunc nsw i64 %i.ca to i32              ; 2 uses
  %i.ch = sub nsw i32 8, %i.cg
  %i.ci = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cb
  %i.cj = sub nsw i32 8, %i.cc
  %i.ck = xor i64 %i.cd, -1                       ; 2 uses
  %i.cl = trunc nsw i64 %i.a to i32
  %i.cm = shl nuw nsw i32 1, %i.cl
  %i.cn = add nsw i64 %i.a, 1                     ; 2 uses
  %i.co = icmp eq i64 %i.cn, 8
  %i.cp = trunc nsw i64 %i.ca to i32
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = add nsw i64 %i.ca, 1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 8
  br label %bb.i

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit
  %.010109 = phi i64 [ %i.ct, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.6.0108 = phi ptr [ %i.df, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.z, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ] ; 2 uses
  %.sroa.22.0107 = phi i64 [ %i.dk, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.bg, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.675.0106 = phi ptr [ %i.cx, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.v, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.21.0105 = phi i64 [ %i.cz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.21.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.687.0104 = phi ptr [ %i.cu, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %i.c, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %.sroa.23.0103 = phi i64 [ %i.cw, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ], [ %.sroa.23.2153, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader ]
  %i.ct = add nsw i64 %.010109, -1                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.687.0104, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = freeze i64 %i.cv                        ; 3 uses
  %.0.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.cw, i64 %.sroa.23.0103, i64 %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.675.0106, i64 8 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 1
  %i.cz = freeze i64 %i.cy                        ; 3 uses
  %.0.i18 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cz, i64 %.sroa.21.0105, i64 %i.w)
  %i.da = xor i64 %.0.i18, -1
  %i.db = or i64 %.0.i, %i.da                     ; 2 uses
  %i.dc = shl i64 %i.db, %i.x
  %i.dd = lshr i64 %i.db, %i.ar
  %i.de = or disjoint i64 %i.dd, %i.dc            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.6.0108, i64 8 ; 4 uses
  %i.dg = load i64, ptr %i.df, align 1
  %i.dh = and i64 %i.de, %i.as
  %i.di = or disjoint i64 %i.dh, %.sroa.22.0107
  %i.dj = and i64 %i.dg, %i.as
  %i.dk = and i64 %i.de, %i.ac                    ; 2 uses
  %i.dl = or disjoint i64 %i.dj, %i.dk            ; 2 uses
  store i64 %i.di, ptr %.sroa.6.0108, align 1
  store i64 %i.dl, ptr %i.df, align 1
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, !llvm.loop !185

bb.i:                                             ; preds = %.lr.ph132, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit
  %.0131 = phi i32 [ %i.m, %.lr.ph132 ], [ %i.dm, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ]
  %.sroa.6.1130 = phi ptr [ %.sroa.6.0.lcssa, %.lr.ph132 ], [ %.sroa.6.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.22.1129 = phi i64 [ %.sroa.22.0.lcssa, %.lr.ph132 ], [ %.sroa.22.5, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 5 uses
  %.sroa.675.1128 = phi ptr [ %.sroa.675.0.lcssa, %.lr.ph132 ], [ %.sroa.675.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.14.0127 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.14.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 18 uses
  %.sroa.21.1125 = phi i64 [ %.sroa.21.0.lcssa, %.lr.ph132 ], [ %.sroa.21.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %.sroa.687.1124 = phi ptr [ %.sroa.687.0.lcssa, %.lr.ph132 ], [ %.sroa.687.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 10 uses
  %.sroa.15.0123 = phi i32 [ %i.g, %.lr.ph132 ], [ %.sroa.15.1, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 19 uses
  %.sroa.23.1121 = phi i64 [ %.sroa.23.0.lcssa, %.lr.ph132 ], [ %.sroa.23.3, %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit ] ; 3 uses
  %i.dm = add nsw i32 %.0131, -1                  ; 2 uses
  %i.dn = icmp slt i32 %.sroa.15.0123, 9
  br i1 %i.dn, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.do = icmp sgt i32 %.sroa.15.0123, 0
  br i1 %i.do, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dp = load i8, ptr %.sroa.687.1124, align 1, !tbaa !9 ; 3 uses
  %i.dq = zext i8 %i.dp to i32
  %i.dr = and i32 %i.cm, %i.dq
  %.not21.i = icmp eq i32 %i.dr, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.co, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !12

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %spec.select.i21.lcssa = phi i8 [ %spec.select.i21, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ], [ %spec.select.i21.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1 ], [ %spec.select.i21.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2 ], [ %spec.select.i21.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3 ], [ %spec.select.i21.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4 ], [ %spec.select.i21.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5 ], [ %spec.select.i21.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6 ], [ %spec.select.i21.7, %.lr.ph.i.7 ]
  %i.ds = zext i8 %spec.select.i21.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.015.lcssa.i = phi i32 [ %i.ds, %._crit_edge.loopexit.i ], [ 0, %bb.j ]
  %i.dt = sub nsw i32 8, %.sroa.15.0123
  %i.du = lshr i32 %.015.lcssa.i, %i.dt
  %i.dv = trunc nuw i32 %i.du to i8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %.not221 = icmp eq i32 %.sroa.15.0123, 1
  br i1 %.not221, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i:   ; preds = %bb.l, %bb.k, %.lr.ph.preheader.i
  %.sroa.1319.1.i = phi i64 [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.cn, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.2.i = phi i8 [ %i.dx, %bb.l ], [ %i.dp, %bb.k ], [ %i.dp, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.sroa.15.0123, 1
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %i.dy = lshr exact i8 %spec.select.i21, 1       ; 2 uses
  %i.dz = zext i8 %.sroa.9.2.i to i32
  %i.ea = trunc nsw i64 %.sroa.16.1.i to i32
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = and i32 %i.eb, %i.dz
  %.not21.i.1 = icmp eq i32 %i.ec, 0
  %i.ed = or disjoint i8 %i.dy, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %i.dy, i8 %i.ed ; 2 uses
  %i.ee = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 8
  br i1 %i.ef, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !12

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.eg = add nuw nsw i64 %.sroa.1319.1.i, 1      ; 3 uses
  %i.eh = icmp sgt i32 %.sroa.15.0123, 2
  br i1 %i.eh, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.687.1124, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1: ; preds = %bb.n, %bb.m, %.lr.ph.i.1
  %.sroa.1319.1.i.1 = phi i64 [ %i.eg, %bb.n ], [ %i.eg, %bb.m ], [ %.sroa.1319.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.16.1.i.1 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.ee, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.9.2.i.1 = phi i8 [ %i.ej, %bb.n ], [ %.sroa.9.2.i, %bb.m ], [ %.sroa.9.2.i, %.lr.ph.i.1 ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.sroa.15.0123, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1
  %i.ek = lshr exact i8 %spec.select.i21.1, 1     ; 2 uses
  %i.el = zext i8 %.sroa.9.2.i.1 to i32
  %i.em = trunc nsw i64 %.sroa.16.1.i.1 to i32
  %i.en = shl nuw nsw i32 1, %i.em
  %i.eo = and i32 %i.en, %i.el
  %.not21.i.2 = icmp eq i32 %i.eo, 0
  %i.ep = or disjoint i8 %i.ek, -128
  %spec.select.i21.2 = select i1 %.not21.i.2, i8 %i.ek, i8 %i.ep ; 2 uses
  %i.eq = add nsw i64 %.sroa.16.1.i.1, 1          ; 2 uses
  %i.er = icmp eq i64 %i.eq, 8
  br i1 %i.er, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !12

bb.o:                                             ; preds = %.lr.ph.i.2
  %i.es = add nsw i64 %.sroa.1319.1.i.1, 1        ; 3 uses
  %i.et = icmp sgt i32 %.sroa.15.0123, 3
  br i1 %i.et, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.eu = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2: ; preds = %bb.p, %bb.o, %.lr.ph.i.2
  %.sroa.1319.1.i.2 = phi i64 [ %i.es, %bb.p ], [ %i.es, %bb.o ], [ %.sroa.1319.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.16.1.i.2 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.eq, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.9.2.i.2 = phi i8 [ %i.ev, %bb.p ], [ %.sroa.9.2.i.1, %bb.o ], [ %.sroa.9.2.i.1, %.lr.ph.i.2 ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i32 %.sroa.15.0123, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.ew = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.ex = zext i8 %.sroa.9.2.i.2 to i32
  %i.ey = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ez = shl nuw nsw i32 1, %i.ey
  %i.fa = and i32 %i.ez, %i.ex
  %.not21.i.3 = icmp eq i32 %i.fa, 0
  %i.fb = or disjoint i8 %i.ew, -128
  %spec.select.i21.3 = select i1 %.not21.i.3, i8 %i.ew, i8 %i.fb ; 2 uses
  %i.fc = add nsw i64 %.sroa.16.1.i.2, 1          ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 8
  br i1 %i.fd, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !12

bb.q:                                             ; preds = %.lr.ph.i.3
  %i.fe = add nsw i64 %.sroa.1319.1.i.2, 1        ; 3 uses
  %i.ff = icmp sgt i32 %.sroa.15.0123, 4
  br i1 %i.ff, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.fg = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3: ; preds = %bb.r, %bb.q, %.lr.ph.i.3
  %.sroa.1319.1.i.3 = phi i64 [ %i.fe, %bb.r ], [ %i.fe, %bb.q ], [ %.sroa.1319.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.16.1.i.3 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.fc, %.lr.ph.i.3 ] ; 2 uses
  %.sroa.9.2.i.3 = phi i8 [ %i.fh, %bb.r ], [ %.sroa.9.2.i.2, %bb.q ], [ %.sroa.9.2.i.2, %.lr.ph.i.3 ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i32 %.sroa.15.0123, 4
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3
  %i.fi = lshr i8 %spec.select.i21.3, 1           ; 2 uses
  %i.fj = zext i8 %.sroa.9.2.i.3 to i32
  %i.fk = trunc nsw i64 %.sroa.16.1.i.3 to i32
  %i.fl = shl nuw nsw i32 1, %i.fk
  %i.fm = and i32 %i.fl, %i.fj
  %.not21.i.4 = icmp eq i32 %i.fm, 0
  %i.fn = or disjoint i8 %i.fi, -128
  %spec.select.i21.4 = select i1 %.not21.i.4, i8 %i.fi, i8 %i.fn ; 2 uses
  %i.fo = add nsw i64 %.sroa.16.1.i.3, 1          ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 8
  br i1 %i.fp, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !12

bb.s:                                             ; preds = %.lr.ph.i.4
  %i.fq = add nsw i64 %.sroa.1319.1.i.3, 1        ; 3 uses
  %i.fr = icmp sgt i32 %.sroa.15.0123, 5
  br i1 %i.fr, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds i8, ptr %.sroa.687.1124, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !9
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4: ; preds = %bb.t, %bb.s, %.lr.ph.i.4
  %.sroa.1319.1.i.4 = phi i64 [ %i.fq, %bb.t ], [ %i.fq, %bb.s ], [ %.sroa.1319.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.16.1.i.4 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fo, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.9.2.i.4 = phi i8 [ %i.ft, %bb.t ], [ %.sroa.9.2.i.3, %bb.s ], [ %.sroa.9.2.i.3, %.lr.ph.i.4 ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i32 %.sroa.15.0123, 5
  br i1 %exitcond.not.i.4, label %._crit_edge.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4
  %i.fu = lshr i8 %spec.select.i21.4, 1           ; 2 uses
  %i.fv = zext i8 %.sroa.9.2.i.4 to i32
  %i.fw = trunc nsw i64 %.sroa.16.1.i.4 to i32
  %i.fx = shl nuw nsw i32 1, %i.fw
  %i.fy = and i32 %i.fx, %i.fv
  %.not21.i.5 = icmp eq i32 %i.fy, 0
  %i.fz = or disjoint i8 %i.fu, -128
  %spec.select.i21.5 = select i1 %.not21.i.5, i8 %i.fu, i8 %i.fz ; 2 uses
  %i.ga = add nsw i64 %.sroa.16.1.i.4, 1          ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 8
  br i1 %i.gb, label %bb.u, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, !prof !12
end_hunk_6
