Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rle?download=true
inline.NumInlined: 206
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3rle11rle_decoderD2Ev:bb.a
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.h = phi ptr [ %i.q, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #15
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.q = phi ptr [ %i.h, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i32, ptr %i.r, align 8, !tbaa !49
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !60

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #18
  %.pre9 = load ptr, ptr %0, align 8, !tbaa !43   ; 2 uses
  %i.v = icmp eq ptr %.pre9, null
  br i1 %i.v, label %bb.f, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.d
  %i.w = phi ptr [ %.pre9, %bb.d ], [ %.lcssa, %._crit_edge ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN3rle11rle_decoder8internalD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store ptr %i.y, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #18
  br label %_ZN3rle11rle_decoder8internalD2Ev.exit

_ZN3rle11rle_decoder8internalD2Ev.exit:           ; preds = %.thread, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 2232) #18
  br label %bb.f

bb.f:                                             ; preds = %_ZN3rle11rle_decoder8internalD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3rle11rle_decoder8skip_rowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %_ZN3rleL17skip_row_internalERNS_6sourceEi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = sext i32 %i.j to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %.not, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !61

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 10 uses
  %i.q = load i32, ptr %i.l, align 8, !tbaa !37   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.g
  %.02230.i = phi i32 [ %.123.i, %bb.g ], [ 0, %.lr.ph ] ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !62
  br i1 %i.v, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !62
  %.not.i = icmp ne i32 %i.y, 1                   ; 3 uses
  %i.z = load i8, ptr %i.a, align 1, !tbaa !21    ; 3 uses
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %narrow.i = add nuw i8 %i.z, 1
  %i.ab = zext i8 %narrow.i to i32
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.b, i32 noundef %i.ab), !inline_history !62 ; 2 uses
  %i.af = load i8, ptr %i.a, align 1, !tbaa !21
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, 1
  %.not27.i = icmp ne i32 %i.ae, %i.ah
  %spec.select28.i = or i1 %.not.i, %.not27.i
  %i.ai = add nsw i32 %i.ae, %.02230.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not25.i = icmp eq i8 %i.z, -128
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !62
  %.not26.i = icmp ne i32 %i.al, 1
  %spec.select29.i = or i1 %.not.i, %.not26.i
  %i.am = load i8, ptr %i.a, align 1, !tbaa !21
  %i.an = sext i8 %i.am to i32
  %reass.sub.i = add nsw i32 %.02230.i, 1
  %i.ao = sub i32 %reass.sub.i, %i.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.123.i = phi i32 [ %i.ai, %bb.d ], [ %i.ao, %bb.f ], [ %.02230.i, %bb.e ] ; 3 uses
  %.4.i = phi i1 [ %spec.select28.i, %bb.d ], [ %spec.select29.i, %bb.f ], [ %.not.i, %bb.e ] ; 2 uses
  %i.ap = icmp sge i32 %.123.i, %i.q
  %or.cond.i = select i1 %i.ap, i1 true, i1 %.4.i
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !63

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %.lr.ph
  %.022.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %.02230.i, %.lr.ph.i ], [ %.123.i, %bb.g ]
  %.0.lcssa.i = phi i1 [ false, %.lr.ph ], [ false, %.lr.ph.i ], [ %.4.i, %bb.g ]
  %i.aq = icmp ne i32 %.022.lcssa.i, %i.q
  %or.cond6.i = select i1 %i.aq, i1 true, i1 %.0.lcssa.i
  br i1 %or.cond6.i, label %_ZN3rleL17skip_row_internalERNS_6sourceEi.exit.thread, label %_ZN3rleL17skip_row_internalERNS_6sourceEi.exit

_ZN3rleL17skip_row_internalERNS_6sourceEi.exit.thread: ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

_ZN3rleL17skip_row_internalERNS_6sourceEi.exit:   ; preds = %.critedge.i
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !62 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %i.au, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %bb.b, %_ZN3rleL17skip_row_internalERNS_6sourceEi.exit
  %.ph = xor i1 %i.au, true
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a, %_ZN3rleL17skip_row_internalERNS_6sourceEi.exit.thread
  %i.av = phi i1 [ false, %_ZN3rleL17skip_row_internalERNS_6sourceEi.exit.thread ], [ true, %bb.a ], [ %.ph, %.loopexit.loopexit ]
  ret i1 %i.av
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3rle11rle_decoder10decode_rowERNS_4destE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 23 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.rle::pixel_info", align 2   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = load ptr, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load i16, ptr %i.f, align 4, !tbaa !21
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 2
  %i.g = call noundef i32 @_ZNK3rle10pixel_info24get_number_of_componentsEv(ptr noundef nonnull align 1 dereferenceable(2) %2) ; 2 uses
  %i.h = call noundef i32 @_ZNK3rle10pixel_info28get_number_of_bits_per_pixelEv(ptr noundef nonnull align 1 dereferenceable(2) %2) ; 2 uses
  %i.i = call noundef i32 @_ZNK3rle10pixel_info20compute_num_segmentsEv(ptr noundef nonnull align 1 dereferenceable(2) %2)
  %i.j = sdiv i32 %i.h, 8                         ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = mul nsw i32 %i.l, %i.i                   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !34   ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp ult i64 %i.u, %i.n
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = sub nuw i64 %i.n, %i.u
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.w)
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %.pre47 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.u, %i.n
  br i1 %i.x, label %bb.d, label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  store ptr %i.y, ptr %i.p, align 8, !tbaa !35
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.z = phi ptr [ %.pre47, %bb.b ], [ %i.r, %bb.c ], [ %i.r, %bb.d ] ; 6 uses
  %i.aa = icmp sgt i32 %i.g, 0
  br i1 %i.aa, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %i.ab = icmp sgt i32 %i.h, 7
  %i.ac = ptrtoint ptr %i.z to i64                ; 3 uses
  br i1 %i.ab, label %.preheader.us.preheader, label %._crit_edge38

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ad = zext nneg i32 %i.j to i64               ; 2 uses
  %wide.trip.count45 = zext nneg i32 %i.g to i64
  %wide.trip.count.a = zext nneg i32 %i.j to i64
  %i.ae = add i64 %i.ac, -120
  %i.af = mul nsw i64 %i.ad, -128
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv42 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us ] ; 3 uses
  %.03236.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.hm, %._crit_edge.us ]
  %i.ag = mul i64 %i.af, %indvars.iv42
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = mul nuw nsw i64 %indvars.iv42, %i.ad    ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %i.j, %i.aj
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us ] ; 4 uses
  %.134.us = phi i32 [ %.03236.us, %.preheader.us ], [ %i.hm, %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us ]
  %i.al = add nuw nsw i64 %indvars.iv, %i.ai      ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !43    ; 6 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48 ; 8 uses
  %i.as = trunc i64 %indvars.iv to i32
  %i.at = xor i32 %i.as, -1
  %i.au = add i32 %i.ak, %i.at                    ; 2 uses
  %i.av = load i32, ptr %i.am, align 8, !tbaa !37 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !49 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %i.ay, i64 %i.al ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 2168
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.al ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !20 ; 6 uses
  %.not.i.us = icmp eq i32 %i.bc, 0
  br i1 %.not.i.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = sext i32 %i.bc to i64                   ; 8 uses
  %i.be = icmp eq i32 %i.ax, 0
  br i1 %i.be, label %bb.g, label %iter.check116

iter.check116:                                    ; preds = %bb.f
  %i.bf = sext i32 %i.ax to i64                   ; 5 uses
  %i.bg = sext i32 %i.au to i64                   ; 2 uses
  %invariant.gep.i.i.us = getelementptr i8, ptr %i.z, i64 %i.bg ; 7 uses
  %min.iters.check102 = icmp ugt i32 %i.bc, 3
  %ident.check99.not = icmp eq i32 %i.ax, 1
  %or.cond = select i1 %min.iters.check102, i1 %ident.check99.not, i1 false
  br i1 %or.cond, label %vector.memcheck103, label %vec.epilog.scalar.ph118.preheader

vector.memcheck103:                               ; preds = %iter.check116
  %i.bh = shl i64 %indvars.iv, 7
  %i.bi = add i64 %i.ah, %i.bg
  %i.bj = add i64 %i.bh, %i.an
  %i.bk = sub i64 %i.bj, %i.bi
  %diff.check104 = icmp ugt i64 %i.bk, -32
  br i1 %diff.check104, label %vec.epilog.scalar.ph118.preheader, label %vector.main.loop.iter.check105

vector.main.loop.iter.check105:                   ; preds = %vector.memcheck103
  %min.iters.check106 = icmp ult i32 %i.bc, 32
  br i1 %min.iters.check106, label %vec.epilog.ph120, label %vector.ph107

vector.ph107:                                     ; preds = %vector.main.loop.iter.check105
  %n.vec108 = and i64 %i.bd, -32                  ; 4 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.ph107, %vector.body109
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next113, %vector.body109 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %index110 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load111 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !21
  %wide.load112 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !21
  %i.bn = getelementptr i8, ptr %invariant.gep.i.i.us, i64 %index110 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  store <16 x i8> %wide.load111, ptr %i.bn, align 1, !tbaa !21
  store <16 x i8> %wide.load112, ptr %i.bo, align 1, !tbaa !21
  %index.next113 = add nuw i64 %index110, 32      ; 2 uses
  %i.bp = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.bp, label %middle.block114, label %vector.body109, !llvm.loop !64

middle.block114:                                  ; preds = %vector.body109
  %cmp.n115 = icmp eq i64 %n.vec108, %i.bd
  br i1 %cmp.n115, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us, label %vec.epilog.iter.check117

vec.epilog.iter.check117:                         ; preds = %middle.block114
  %i.bq = and i32 %i.bc, 28
  %min.epilog.iters.check119 = icmp eq i32 %i.bq, 0
  br i1 %min.epilog.iters.check119, label %vec.epilog.scalar.ph118.preheader, label %vec.epilog.ph120, !prof !79

vec.epilog.ph120:                                 ; preds = %vector.main.loop.iter.check105, %vec.epilog.iter.check117
  %vec.epilog.resume.val121 = phi i64 [ %n.vec108, %vec.epilog.iter.check117 ], [ 0, %vector.main.loop.iter.check105 ]
  %n.vec122 = and i64 %i.bd, -4                   ; 3 uses
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph120
  %index124 = phi i64 [ %vec.epilog.resume.val121, %vec.epilog.ph120 ], [ %index.next126, %vec.epilog.vector.body123 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %index124
  %wide.load125 = load <4 x i8>, ptr %i.br, align 1, !tbaa !21
  %i.bs = getelementptr i8, ptr %invariant.gep.i.i.us, i64 %index124
  store <4 x i8> %wide.load125, ptr %i.bs, align 1, !tbaa !21
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.bt, label %vec.epilog.middle.block127, label %vec.epilog.vector.body123, !llvm.loop !65

vec.epilog.middle.block127:                       ; preds = %vec.epilog.vector.body123
  %cmp.n128 = icmp eq i64 %n.vec122, %i.bd
  br i1 %cmp.n128, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us, label %vec.epilog.scalar.ph118.preheader

vec.epilog.scalar.ph118.preheader:                ; preds = %iter.check116, %vector.memcheck103, %vec.epilog.iter.check117, %vec.epilog.middle.block127
  %.013.i.i.us.ph = phi i64 [ 0, %iter.check116 ], [ 0, %vector.memcheck103 ], [ %n.vec108, %vec.epilog.iter.check117 ], [ %n.vec122, %vec.epilog.middle.block127 ] ; 3 uses
  %xtraiter = and i64 %i.bd, 3
  %i.bu = and i32 %i.bc, 3
  %lcmp.mod.not = icmp eq i32 %i.bu, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph118.prol.loopexit, label %vec.epilog.scalar.ph118.prol

vec.epilog.scalar.ph118.prol:                     ; preds = %vec.epilog.scalar.ph118.preheader, %vec.epilog.scalar.ph118.prol
  %.013.i.i.us.prol = phi i64 [ %i.by, %vec.epilog.scalar.ph118.prol ], [ %.013.i.i.us.ph, %vec.epilog.scalar.ph118.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph118.prol ], [ 0, %vec.epilog.scalar.ph118.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %.013.i.i.us.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = mul i64 %.013.i.i.us.prol, %i.bf
  %gep.i.i.us.prol = getelementptr i8, ptr %invariant.gep.i.i.us, i64 %i.bx
  store i8 %i.bw, ptr %gep.i.i.us.prol, align 1, !tbaa !21
  %i.by = add nuw i64 %.013.i.i.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph118.prol.loopexit, label %vec.epilog.scalar.ph118.prol, !llvm.loop !66

vec.epilog.scalar.ph118.prol.loopexit:            ; preds = %vec.epilog.scalar.ph118.prol, %vec.epilog.scalar.ph118.preheader
  %.013.i.i.us.unr = phi i64 [ %.013.i.i.us.ph, %vec.epilog.scalar.ph118.preheader ], [ %i.by, %vec.epilog.scalar.ph118.prol ]
  %i.bz = sub nsw i64 %.013.i.i.us.ph, %i.bd
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us, label %vec.epilog.scalar.ph118

vec.epilog.scalar.ph118:                          ; preds = %vec.epilog.scalar.ph118.prol.loopexit, %vec.epilog.scalar.ph118
  %.013.i.i.us = phi i64 [ %i.cq, %vec.epilog.scalar.ph118 ], [ %.013.i.i.us.unr, %vec.epilog.scalar.ph118.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 %.013.i.i.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = mul i64 %.013.i.i.us, %i.bf
  %gep.i.i.us = getelementptr i8, ptr %invariant.gep.i.i.us, i64 %i.cd
  store i8 %i.cc, ptr %gep.i.i.us, align 1, !tbaa !21
  %i.ce = add nuw i64 %.013.i.i.us, 1             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21
  %i.ch = mul i64 %i.ce, %i.bf
  %gep.i.i.us.1 = getelementptr i8, ptr %invariant.gep.i.i.us, i64 %i.ch
  store i8 %i.cg, ptr %gep.i.i.us.1, align 1, !tbaa !21
  %i.ci = add nuw i64 %.013.i.i.us, 2             ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !21
  %i.cl = mul i64 %i.ci, %i.bf
  %gep.i.i.us.2 = getelementptr i8, ptr %invariant.gep.i.i.us, i64 %i.cl
  store i8 %i.ck, ptr %gep.i.i.us.2, align 1, !tbaa !21
  %i.cm = add nuw i64 %.013.i.i.us, 3             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = mul i64 %i.cm, %i.bf
  %gep.i.i.us.3 = getelementptr i8, ptr %invariant.gep.i.i.us, i64 %i.cp
  store i8 %i.co, ptr %gep.i.i.us.3, align 1, !tbaa !21
  %i.cq = add nuw i64 %.013.i.i.us, 4             ; 2 uses
  %exitcond.not.i.i.us.3 = icmp eq i64 %i.cq, %i.bd
  br i1 %exitcond.not.i.i.us.3, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us, label %vec.epilog.scalar.ph118, !llvm.loop !67

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull readonly align 1 %i.az, i64 range(i64 -2147483648, 2147483648) %i.bd, i1 false)
  br label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us

_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us:   ; preds = %vec.epilog.scalar.ph118.prol.loopexit, %vec.epilog.scalar.ph118, %middle.block114, %vec.epilog.middle.block127, %bb.g
  %i.cr = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.cs = mul nsw i32 %i.cr, %i.ax
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.z, i64 %i.ct
  br label %bb.h

bb.h:                                             ; preds = %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us, %bb.e
  %.072.i.us = phi i32 [ %i.cr, %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us ], [ 0, %bb.e ] ; 3 uses
  %.070.i.us = phi ptr [ %i.cu, %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit.i.us ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.cv = icmp slt i32 %.072.i.us, %i.av
  br i1 %i.cv, label %.lr.ph.i.us, label %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us

.lr.ph.i.us:                                      ; preds = %bb.h
  %i.cw = sext i32 %i.ax to i64                   ; 12 uses
  %i.cx = icmp eq i32 %i.ax, 0                    ; 2 uses
  %i.cy = sext i32 %i.au to i64                   ; 4 uses
  %ident.check67.not = icmp eq i32 %i.ax, 1
  %ident.check.not = icmp eq i32 %i.ax, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.u, %.lr.ph.i.us
  %.171112.i.us = phi ptr [ %.070.i.us, %.lr.ph.i.us ], [ %.4.i.us, %bb.u ] ; 9 uses
  %.173111.i.us = phi i32 [ %.072.i.us, %.lr.ph.i.us ], [ %.476.i.us, %bb.u ] ; 5 uses
  %i.cz = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !68
  br i1 %i.dc, label %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !68 ; 0 uses
  %i.dg = load i8, ptr %i.c, align 1, !tbaa !21   ; 3 uses
  %i.dh = icmp sgt i8 %i.dg, -1
  br i1 %i.dh, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not84.i.us = icmp eq i8 %i.dg, -128
  br i1 %.not84.i.us, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.di = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !68 ; 0 uses
  %i.dl = load i8, ptr %i.c, align 1, !tbaa !21
  %i.dm = sext i8 %i.dl to i32
  %i.dn = sub nsw i32 1, %i.dm                    ; 4 uses
  %i.do = load i8, ptr %i.d, align 1, !tbaa !21
  %i.dp = sext i32 %i.dn to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 %i.do, i64 %i.dp, i1 false)
  %i.dq = ptrtoint ptr %.171112.i.us to i64       ; 2 uses
  %i.dr = sub i64 %i.dq, %i.ac
  %i.ds = sdiv i64 %i.dr, %i.cw
  %i.dt = trunc i64 %i.ds to i32
  %i.du = sub i32 %i.dn, %i.av
  %i.dv = add i32 %i.du, %i.dt                    ; 4 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dx = sub nsw i32 %i.dn, %i.dv                ; 2 uses
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.a, i64 %i.dy
  %i.ea = zext nneg i32 %i.dv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %i.dz, i64 %i.ea, i1 false)
  store i32 %i.dv, ptr %i.bb, align 4, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi.i.us = phi i64 [ %i.dy, %bb.m ], [ %i.dp, %bb.l ] ; 11 uses
  %.0.i.us = phi i32 [ %i.dx, %bb.m ], [ %i.dn, %bb.l ] ; 3 uses
  br i1 %i.cx, label %bb.o, label %.preheader.i94.i.us

.preheader.i94.i.us:                              ; preds = %bb.n
  %.not.i95.i.us = icmp eq i32 %.0.i.us, 0
  br i1 %.not.i95.i.us, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us, label %iter.check84

iter.check84:                                     ; preds = %.preheader.i94.i.us
  %invariant.gep.i97.i.us = getelementptr i8, ptr %.171112.i.us, i64 %i.cy ; 7 uses
  %min.iters.check70 = icmp ugt i64 %.pre-phi.i.us, 3
  %or.cond130.a = select i1 %min.iters.check70, i1 %ident.check67.not, i1 false
  br i1 %or.cond130.a, label %vector.memcheck71, label %vec.epilog.scalar.ph86.preheader

vector.memcheck71:                                ; preds = %iter.check84
  %3 = add i64 %i.dq, %i.cy
  %4 = sub i64 %i.b, %3
  %diff.check72 = icmp ugt i64 %4, -32
  br i1 %diff.check72, label %vec.epilog.scalar.ph86.preheader, label %vector.main.loop.iter.check73

vector.main.loop.iter.check73:                    ; preds = %vector.memcheck71
  %min.iters.check74 = icmp ult i64 %.pre-phi.i.us, 32
  br i1 %min.iters.check74, label %vec.epilog.ph88, label %vector.ph75

vector.ph75:                                      ; preds = %vector.main.loop.iter.check73
  %i.eb = and i64 %.pre-phi.i.us, 28
  %n.vec76 = and i64 %.pre-phi.i.us, -32          ; 4 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.ph75, %vector.body77
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %index78 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load79 = load <16 x i8>, ptr %i.ec, align 16, !tbaa !21
  %wide.load80 = load <16 x i8>, ptr %i.ed, align 16, !tbaa !21
  %i.ee = getelementptr i8, ptr %invariant.gep.i97.i.us, i64 %index78 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  store <16 x i8> %wide.load79, ptr %i.ee, align 1, !tbaa !21
  store <16 x i8> %wide.load80, ptr %i.ef, align 1, !tbaa !21
  %index.next81 = add nuw i64 %index78, 32        ; 2 uses
  %i.eg = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.eg, label %middle.block82, label %vector.body77, !llvm.loop !69

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %.pre-phi.i.us, %n.vec76
  br i1 %cmp.n83, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block82
  %min.epilog.iters.check87 = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check87, label %vec.epilog.scalar.ph86.preheader, label %vec.epilog.ph88, !prof !79

vec.epilog.ph88:                                  ; preds = %vector.main.loop.iter.check73, %vec.epilog.iter.check85
  %vec.epilog.resume.val89 = phi i64 [ %n.vec76, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check73 ]
  %n.vec90 = and i64 %.pre-phi.i.us, -4           ; 3 uses
  br label %vec.epilog.vector.body91

vec.epilog.vector.body91:                         ; preds = %vec.epilog.vector.body91, %vec.epilog.ph88
  %index92 = phi i64 [ %vec.epilog.resume.val89, %vec.epilog.ph88 ], [ %index.next94, %vec.epilog.vector.body91 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %index92
  %wide.load93 = load <4 x i8>, ptr %i.eh, align 4, !tbaa !21
  %i.ei = getelementptr i8, ptr %invariant.gep.i97.i.us, i64 %index92
  store <4 x i8> %wide.load93, ptr %i.ei, align 1, !tbaa !21
  %index.next94 = add nuw i64 %index92, 4         ; 2 uses
  %i.ej = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.ej, label %vec.epilog.middle.block95, label %vec.epilog.vector.body91, !llvm.loop !70

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body91
  %cmp.n96 = icmp eq i64 %.pre-phi.i.us, %n.vec90
  br i1 %cmp.n96, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us, label %vec.epilog.scalar.ph86.preheader

vec.epilog.scalar.ph86.preheader:                 ; preds = %iter.check84, %vector.memcheck71, %vec.epilog.iter.check85, %vec.epilog.middle.block95
  %.013.i98.i.us.ph = phi i64 [ 0, %iter.check84 ], [ 0, %vector.memcheck71 ], [ %n.vec76, %vec.epilog.iter.check85 ], [ %n.vec90, %vec.epilog.middle.block95 ] ; 3 uses
  %xtraiter132 = and i64 %.pre-phi.i.us, 3        ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %vec.epilog.scalar.ph86.prol.loopexit, label %vec.epilog.scalar.ph86.prol

vec.epilog.scalar.ph86.prol:                      ; preds = %vec.epilog.scalar.ph86.preheader, %vec.epilog.scalar.ph86.prol
  %.013.i98.i.us.prol = phi i64 [ %i.en, %vec.epilog.scalar.ph86.prol ], [ %.013.i98.i.us.ph, %vec.epilog.scalar.ph86.preheader ] ; 3 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %vec.epilog.scalar.ph86.prol ], [ 0, %vec.epilog.scalar.ph86.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %.013.i98.i.us.prol
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !21
  %i.em = mul i64 %.013.i98.i.us.prol, %i.cw
  %gep.i99.i.us.prol = getelementptr i8, ptr %invariant.gep.i97.i.us, i64 %i.em
  store i8 %i.el, ptr %gep.i99.i.us.prol, align 1, !tbaa !21
  %i.en = add nuw nsw i64 %.013.i98.i.us.prol, 1  ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %vec.epilog.scalar.ph86.prol.loopexit, label %vec.epilog.scalar.ph86.prol, !llvm.loop !71

vec.epilog.scalar.ph86.prol.loopexit:             ; preds = %vec.epilog.scalar.ph86.prol, %vec.epilog.scalar.ph86.preheader
  %.013.i98.i.us.unr = phi i64 [ %.013.i98.i.us.ph, %vec.epilog.scalar.ph86.preheader ], [ %i.en, %vec.epilog.scalar.ph86.prol ]
  %i.eo = sub nsw i64 %.013.i98.i.us.ph, %.pre-phi.i.us
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us, label %vec.epilog.scalar.ph86

vec.epilog.scalar.ph86:                           ; preds = %vec.epilog.scalar.ph86.prol.loopexit, %vec.epilog.scalar.ph86
  %.013.i98.i.us = phi i64 [ %i.ff, %vec.epilog.scalar.ph86 ], [ %.013.i98.i.us.unr, %vec.epilog.scalar.ph86.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.013.i98.i.us
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !21
  %i.es = mul i64 %.013.i98.i.us, %i.cw
  %gep.i99.i.us = getelementptr i8, ptr %invariant.gep.i97.i.us, i64 %i.es
  store i8 %i.er, ptr %gep.i99.i.us, align 1, !tbaa !21
  %i.et = add nuw nsw i64 %.013.i98.i.us, 1       ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !21
  %i.ew = mul i64 %i.et, %i.cw
  %gep.i99.i.us.1 = getelementptr i8, ptr %invariant.gep.i97.i.us, i64 %i.ew
  store i8 %i.ev, ptr %gep.i99.i.us.1, align 1, !tbaa !21
  %i.ex = add nuw nsw i64 %.013.i98.i.us, 2       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !21
  %i.fa = mul i64 %i.ex, %i.cw
  %gep.i99.i.us.2 = getelementptr i8, ptr %invariant.gep.i97.i.us, i64 %i.fa
  store i8 %i.ez, ptr %gep.i99.i.us.2, align 1, !tbaa !21
  %i.fb = add nuw nsw i64 %.013.i98.i.us, 3       ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !21
  %i.fe = mul i64 %i.fb, %i.cw
  %gep.i99.i.us.3 = getelementptr i8, ptr %invariant.gep.i97.i.us, i64 %i.fe
  store i8 %i.fd, ptr %gep.i99.i.us.3, align 1, !tbaa !21
  %i.ff = add nuw nsw i64 %.013.i98.i.us, 4       ; 2 uses
  %exitcond.not.i100.i.us.3 = icmp eq i64 %i.ff, %.pre-phi.i.us
  br i1 %exitcond.not.i100.i.us.3, label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us, label %vec.epilog.scalar.ph86, !llvm.loop !72

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.171112.i.us, ptr nonnull readonly align 16 %i.a, i64 range(i64 -2147483648, 2147483648) %.pre-phi.i.us, i1 false)
  br label %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us

_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us: ; preds = %vec.epilog.scalar.ph86.prol.loopexit, %vec.epilog.scalar.ph86, %middle.block82, %vec.epilog.middle.block95, %bb.o, %.preheader.i94.i.us
  %i.fg = mul nsw i32 %.0.i.us, %i.ax
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %.171112.i.us, i64 %i.fh
  %i.fj = add nsw i32 %.0.i.us, %.173111.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.u

bb.p:                                             ; preds = %bb.j
  %narrow.i.us = add nuw i8 %i.dg, 1
  %i.fk = zext i8 %narrow.i.us to i32
  %i.fl = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call noundef i32 %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %i.a, i32 noundef %i.fk), !inline_history !68 ; 5 uses
  %i.fo = load i8, ptr %i.c, align 1, !tbaa !21
  %i.fp = sext i8 %i.fo to i32
  %i.fq = add nsw i32 %i.fp, 1
  %.not85.i.us = icmp eq i32 %i.fn, %i.fq
  br i1 %.not85.i.us, label %bb.q, label %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us

bb.q:                                             ; preds = %bb.p
  %i.fr = ptrtoint ptr %.171112.i.us to i64       ; 2 uses
  %i.fs = sub i64 %i.fr, %i.ac
  %i.ft = sdiv i64 %i.fs, %i.cw
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = sub i32 %i.fn, %i.av
  %i.fw = add i32 %i.fv, %i.fu                    ; 4 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %bb.r, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.q
  %.pre.i.us = sext i32 %i.fn to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fy = sub i32 %i.fn, %i.fw                    ; 2 uses
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.a, i64 %i.fz
  %i.gb = zext nneg i32 %i.fw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %i.ga, i64 %i.gb, i1 false)
  store i32 %i.fw, ptr %i.bb, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.us
  %.pre-phi117.i.us = phi i64 [ %.pre.i.us, %._crit_edge.i.us ], [ %i.fz, %bb.r ] ; 11 uses
  %.069.i.us = phi i32 [ %i.fn, %._crit_edge.i.us ], [ %i.fy, %bb.r ] ; 3 uses
  br i1 %i.cx, label %bb.t, label %.preheader.i86.i.us

.preheader.i86.i.us:                              ; preds = %bb.s
  %.not.i87.i.us = icmp eq i32 %.069.i.us, 0
  br i1 %.not.i87.i.us, label %select.unfold.i.us, label %iter.check

iter.check:                                       ; preds = %.preheader.i86.i.us
  %invariant.gep.i89.i.us = getelementptr i8, ptr %.171112.i.us, i64 %i.cy ; 7 uses
  %min.iters.check = icmp ugt i64 %.pre-phi117.i.us, 3
  %or.cond131.a = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond131.a, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %5 = add i64 %i.fr, %i.cy
  %6 = sub i64 %i.b, %5
  %diff.check = icmp ugt i64 %6, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check59 = icmp ult i64 %.pre-phi117.i.us, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gc = and i64 %.pre-phi117.i.us, 28
  %n.vec = and i64 %.pre-phi117.i.us, -32         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <16 x i8>, ptr %i.gd, align 16, !tbaa !21
  %wide.load60 = load <16 x i8>, ptr %i.ge, align 16, !tbaa !21
  %i.gf = getelementptr i8, ptr %invariant.gep.i89.i.us, i64 %index ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  store <16 x i8> %wide.load, ptr %i.gf, align 1, !tbaa !21
  store <16 x i8> %wide.load60, ptr %i.gg, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi117.i.us, %n.vec
  br i1 %cmp.n, label %select.unfold.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %.pre-phi117.i.us, -4        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.gi, align 4, !tbaa !21
  %i.gj = getelementptr i8, ptr %invariant.gep.i89.i.us, i64 %index62
  store <4 x i8> %wide.load63, ptr %i.gj, align 1, !tbaa !21
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.gk = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.gk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %.pre-phi117.i.us, %n.vec61
  br i1 %cmp.n65, label %select.unfold.i.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i90.i.us.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter135 = and i64 %.pre-phi117.i.us, 3     ; 2 uses
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.013.i90.i.us.prol = phi i64 [ %i.go, %vec.epilog.scalar.ph.prol ], [ %.013.i90.i.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter137 = phi i64 [ %prol.iter137.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.013.i90.i.us.prol
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !21
  %i.gn = mul i64 %.013.i90.i.us.prol, %i.cw
  %gep.i91.i.us.prol = getelementptr i8, ptr %invariant.gep.i89.i.us, i64 %i.gn
  store i8 %i.gm, ptr %gep.i91.i.us.prol, align 1, !tbaa !21
  %i.go = add nuw nsw i64 %.013.i90.i.us.prol, 1  ; 2 uses
  %prol.iter137.next = add i64 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i64 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !75

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.013.i90.i.us.unr = phi i64 [ %.013.i90.i.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.go, %vec.epilog.scalar.ph.prol ]
  %i.gp = sub nsw i64 %.013.i90.i.us.ph, %.pre-phi117.i.us
  %i.gq = icmp ugt i64 %i.gp, -4
  br i1 %i.gq, label %select.unfold.i.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.013.i90.i.us = phi i64 [ %i.hg, %vec.epilog.scalar.ph ], [ %.013.i90.i.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.013.i90.i.us
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !21
  %i.gt = mul i64 %.013.i90.i.us, %i.cw
  %gep.i91.i.us = getelementptr i8, ptr %invariant.gep.i89.i.us, i64 %i.gt
  store i8 %i.gs, ptr %gep.i91.i.us, align 1, !tbaa !21
  %i.gu = add nuw nsw i64 %.013.i90.i.us, 1       ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !21
  %i.gx = mul i64 %i.gu, %i.cw
  %gep.i91.i.us.1 = getelementptr i8, ptr %invariant.gep.i89.i.us, i64 %i.gx
  store i8 %i.gw, ptr %gep.i91.i.us.1, align 1, !tbaa !21
  %i.gy = add nuw nsw i64 %.013.i90.i.us, 2       ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !21
  %i.hb = mul i64 %i.gy, %i.cw
  %gep.i91.i.us.2 = getelementptr i8, ptr %invariant.gep.i89.i.us, i64 %i.hb
  store i8 %i.ha, ptr %gep.i91.i.us.2, align 1, !tbaa !21
  %i.hc = add nuw nsw i64 %.013.i90.i.us, 3       ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !21
  %i.hf = mul i64 %i.hc, %i.cw
  %gep.i91.i.us.3 = getelementptr i8, ptr %invariant.gep.i89.i.us, i64 %i.hf
  store i8 %i.he, ptr %gep.i91.i.us.3, align 1, !tbaa !21
  %i.hg = add nuw nsw i64 %.013.i90.i.us, 4       ; 2 uses
  %exitcond.not.i92.i.us.3 = icmp eq i64 %i.hg, %.pre-phi117.i.us
  br i1 %exitcond.not.i92.i.us.3, label %select.unfold.i.us, label %vec.epilog.scalar.ph, !llvm.loop !76

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.171112.i.us, ptr nonnull readonly align 16 %i.a, i64 range(i64 -2147483648, 2147483648) %.pre-phi117.i.us, i1 false)
  br label %select.unfold.i.us

select.unfold.i.us:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.t, %.preheader.i86.i.us
  %i.hh = mul nsw i32 %.069.i.us, %i.ax
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds i8, ptr %.171112.i.us, i64 %i.hi
  %i.hk = add nsw i32 %.069.i.us, %.173111.i.us
  br label %bb.u

bb.u:                                             ; preds = %select.unfold.i.us, %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us, %bb.k
  %.476.i.us = phi i32 [ %i.hk, %select.unfold.i.us ], [ %i.fj, %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us ], [ %.173111.i.us, %bb.k ] ; 3 uses
  %.4.i.us = phi ptr [ %i.hj, %select.unfold.i.us ], [ %i.fi, %_ZN3rleL17memcpy_withstrideEPcPKcmii.exit101.i.us ], [ %.171112.i.us, %bb.k ]
  %i.hl = icmp slt i32 %.476.i.us, %i.av
  br i1 %i.hl, label %bb.i, label %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us

_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us: ; preds = %bb.i, %bb.p, %bb.u, %bb.h
  %.173.lcssa.i.us = phi i32 [ %.072.i.us, %bb.h ], [ %.173111.i.us, %bb.i ], [ %.476.i.us, %bb.u ], [ %.173111.i.us, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.hm = add nsw i32 %.173.lcssa.i.us, %.134.us  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.a
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e, !llvm.loop !77

._crit_edge.us:                                   ; preds = %_ZN3rleL15decode_internalEPcRNS_6sourceEiiiS0_Ri.exit.us
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge38, label %.preheader.us, !llvm.loop !78

._crit_edge38:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %.032.lcssa = phi i32 [ 0, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit ], [ 0, %.preheader.lr.ph ], [ %i.hm, %._crit_edge.us ]
  %i.hn = load ptr, ptr %1, align 8, !tbaa !25
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call noundef i32 %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.z, i32 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.032.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3rle11rle_decoder12decode_frameERNS_4destE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.rle::pixel_info", align 2   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 4, !tbaa !21
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 2
  %i.c = call noundef i32 @_ZNK3rle10pixel_info20compute_num_segmentsEv(ptr noundef nonnull align 1 dereferenceable(2) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.d = load ptr, ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %.lr.ph ]
  ret i32 %.010.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0912 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.01011 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %i.h = call noundef i32 @_ZN3rle11rle_decoder10decode_rowERNS_4destE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = add nsw i32 %i.h, %.01011                ; 2 uses
  %i.j = add nuw nsw i32 %.0912, 1                ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !81
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK3rle11rle_decoder14get_row_nbytesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.rle::pixel_info", align 2   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 4, !tbaa !21
  store i16 %.sroa.0.0.copyload.i, ptr %1, align 2
  %i.c = call noundef i32 @_ZNK3rle10pixel_info20compute_num_segmentsEv(ptr noundef nonnull align 1 dereferenceable(2) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.d = load ptr, ptr %0, align 8, !tbaa !43
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37
  %i.f = mul nsw i32 %i.e, %i.c
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3rle11rle_decoder11read_headerERNS_10pixel_infoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.rle::pixel_info", align 2   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.b, i32 noundef 64)
  %.not = icmp eq i32 %i.h, 64
  br i1 %.not, label %bb.b, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i = load i16, ptr %i.j, align 4, !tbaa !21
  store i16 %.sroa.0.0.copyload.i, ptr %1, align 1, !tbaa !21
  %i.k = tail call noundef i32 @_ZNK3rle10pixel_info20compute_num_segmentsEv(ptr noundef nonnull align 1 dereferenceable(2) %1) ; 5 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN3rle10pixel_info18check_num_segmentsEi(i32 noundef %i.l)
  br i1 %i.n, label %bb.d, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.o = load i32, ptr %i.b, align 4, !tbaa !39
  call void @_ZN3rle10pixel_infoC1Ei(ptr noundef nonnull align 1 dereferenceable(2) %2, i32 noundef %i.o)
  %i.p = load i16, ptr %2, align 2, !tbaa !21
  store i16 %i.p, ptr %1, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.r, 64
  br i1 %.not.i, label %.preheader.i, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread

.preheader.i:                                     ; preds = %bb.e
  %.not2932.i = icmp ugt i32 %i.k, 1
  br i1 %.not2932.i, label %.lr.ph.preheader.i, label %.lr.ph35.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.k to i64
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.preheader.i, label %.lr.ph.i, !llvm.loop !82

.critedge.preheader.i:                            ; preds = %bb.f
  %i.s = icmp sgt i32 %i.k, 14
  br i1 %i.s, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %.critedge.preheader.i, %.preheader.i
  %i.t = sext i32 %i.k to i64
  br label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %i.u = phi i32 [ 64, %.lr.ph.preheader.i ], [ %i.w, %bb.f ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !20   ; 2 uses
  %.not28.i = icmp ult i32 %i.u, %i.w
  br i1 %.not28.i, label %bb.f, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread

.critedge.i:                                      ; preds = %.lr.ph35.i
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.x = and i64 %indvars.iv.next40.i, 4294967295
  %exitcond42.i = icmp eq i64 %i.x, 15
  br i1 %exitcond42.i, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit, label %.lr.ph35.i, !llvm.loop !83

.lr.ph35.i:                                       ; preds = %.critedge.i, %.lr.ph35.preheader.i
  %indvars.iv39.i = phi i64 [ %i.t, %.lr.ph35.preheader.i ], [ %indvars.iv.next40.i, %.critedge.i ] ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv39.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20
  %.not30.i = icmp eq i32 %i.z, 0
  br i1 %.not30.i, label %.critedge.i, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread

_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit: ; preds = %.critedge.i, %.critedge.preheader.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !49
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread

.lr.ph:                                           ; preds = %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit ] ; 3 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !20
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.ao) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !49
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph, label %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread, !llvm.loop !84

_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit.thread: ; preds = %.lr.ph.i, %.lr.ph35.i, %.lr.ph, %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit, %bb.d, %bb.e, %bb.c, %bb.a
  %.013 = phi i1 [ false, %bb.a ], [ true, %_ZN3rleL12check_headerERKNS_6headerERNS_10pixel_infoE.exit ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.lr.ph35.i ], [ true, %.lr.ph ], [ false, %.lr.ph.i ]
  ret i1 %.013
}

declare void @_ZN3rle10pixel_infoC1Ehh(ptr noundef nonnull align 1 dereferenceable(2), i8 noundef zeroext, i8 noundef zeroext) unnamed_addr #1

declare void @_ZN3rle10image_infoC1EiiRKNS_10pixel_infoEbb(ptr noundef nonnull align 4 dereferenceable(12), i32 noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(2), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
end_hunk_0
