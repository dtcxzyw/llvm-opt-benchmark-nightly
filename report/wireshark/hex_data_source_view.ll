Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/hex_data_source_view?download=true
inline.NumInlined: 1288
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17HexDataSourceView19setHexDisplayFormatEP7QAction:bb.a
  %i.h = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not6.not.i.i.i.i, label %bb.e, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i unwind label %bb.k

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.e, %bb.d
  %.1.i.i.i.i = phi i32 [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI15bytes_view_typeE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.f, label %_Zeq9QMetaTypeS_.exit.i.i

bb.f:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.k = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3)
          to label %_Zeq9QMetaTypeS_.exit.i.i unwind label %bb.k

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.f, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.j, %_ZNK9QMetaType2idEi.exit.i.i.i ], [ %i.k, %bb.f ]
  %i.l = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  %i.m = load i32, ptr %4, align 8
  br label %_ZNK8QVariant5valueI15bytes_view_typeEET_v.exit

bb.h:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  %i.n = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %4)
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %bb.h
  %i.o = load i64, ptr %i.b, align 8
  %i.p = and i64 %i.o, 1
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc5
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.i, %.noexc5
  %i.v = phi ptr [ %i.u, %bb.i ], [ %4, %.noexc5 ]
  %i.w = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.n, ptr noundef %i.v, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI15bytes_view_typeE8metaTypeE, ptr noundef nonnull %i.a)
          to label %.noexc6 unwind label %bb.k    ; 0 uses

.noexc6:                                          ; preds = %_ZNK8QVariant9constDataEv.exit.i.i
  %i.x = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNK8QVariant5valueI15bytes_view_typeEET_v.exit

_ZNK8QVariant5valueI15bytes_view_typeEET_v.exit:  ; preds = %.noexc6, %bb.g
  %.0.i.i = phi i32 [ %i.m, %bb.g ], [ %i.x, %.noexc6 ]
  store i32 %.0.i.i, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 28), align 4
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN17HexDataSourceView23byteViewSettingsChangedEv(ptr noundef align 8 dereferenceable_or_null(464) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNK8QVariant5valueI15bytes_view_typeEET_v.exit
  ret void

bb.k:                                             ; preds = %_ZNK8QVariant9constDataEv.exit.i.i, %bb.h, %bb.f, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.y
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @application_flavor_is_wireshark() local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17HexDataSourceView17updateContextMenuEv(ptr noundef align 8 dereferenceable_or_null(464) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = tail call noundef zeroext i1 @_ZNK5QMenu7isEmptyEv(ptr noundef align 8 dereferenceable_or_null(40) %i.a)
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 352
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 37), align 1, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  tail call void @_ZN7QAction10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(16) %i.d, i1 noundef zeroext %i.f)
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 28), align 4 ; 2 uses
  %i.h = icmp ult i32 %i.g, 4
  br i1 %i.h, label %switch.lookup75, label %bb.c

switch.lookup75:                                  ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN17HexDataSourceView17updateContextMenuEv, i64 %i.i
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.j = getelementptr i8, ptr %0, i64 %switch.ext
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @_ZN7QAction10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(16) %i.k, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup75
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 32), align 8 ; 2 uses
  %i.m = icmp ult i32 %i.l, 3
  br i1 %i.m, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.n = shl nuw nsw i32 %i.l, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 440
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_ZN7QAction10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(16) %i.r, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  %i.s = getelementptr i8, ptr %0, i64 360
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 292
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %0, i64 296
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = getelementptr i8, ptr %0, i64 304
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %.thread48, label %_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.y) ; 3 uses
  %i.ae = tail call i32 @llvm.umax.i32(i32 %i.v, i32 %i.y)
  %reass.sub = sub nsw i32 %i.ae, %i.ad
  %i.af = add i32 %reass.sub, 1                   ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 304
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.ag = icmp slt i32 %.pre, 0
  br i1 %i.ag, label %_ZNK17HexDataSourceView17annotationIndexAtEi.exit, label %.thread48

.thread48:                                        ; preds = %bb.g, %bb.h
  %.01653 = phi i32 [ %i.af, %bb.h ], [ 1, %bb.g ] ; 3 uses
  %.01752 = phi i32 [ %i.ad, %bb.h ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ah = phi i32 [ %.pre, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 280
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %0, i64 272
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %.thread48
  %.013.ph.i = phi i64 [ %i.ao, %.split.i ], [ %i.aj, %.thread48 ] ; 2 uses
  %i.al = icmp sgt i64 %.013.ph.i, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZNK17HexDataSourceView17annotationIndexAtEi.exit

.lr.ph.preheader:                                 ; preds = %.outer.i
  %i.am = load ptr, ptr %i.ak, align 8
  br label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.an = icmp sgt i64 %.013.i74, 1
  br i1 %i.an, label %.lr.ph, label %_ZNK17HexDataSourceView17annotationIndexAtEi.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.013.i74 = phi i64 [ %i.ao, %bb.i ], [ %.013.ph.i, %.lr.ph.preheader ] ; 2 uses
  %i.ao = add nsw i64 %.013.i74, -1               ; 4 uses
  %i.ap = getelementptr [48 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %.not.i = icmp slt i32 %i.ah, %i.aq
  br i1 %.not.i, label %bb.i, label %.split.i, !llvm.loop !1

.split.i:                                         ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.as, %i.aq
  %.not22.i = icmp slt i32 %i.ah, %i.at
  br i1 %.not22.i, label %.loopexit.loopexit30.i, label %.outer.i, !llvm.loop !1

.loopexit.loopexit30.i:                           ; preds = %.split.i
  %i.au = and i64 %i.ao, 2147483648
  %i.av = icmp ne i64 %i.au, 0
  br label %_ZNK17HexDataSourceView17annotationIndexAtEi.exit

_ZNK17HexDataSourceView17annotationIndexAtEi.exit: ; preds = %.outer.i, %bb.i, %bb.h, %.loopexit.loopexit30.i
  %.01646 = phi i32 [ %i.af, %bb.h ], [ %.01653, %.loopexit.loopexit30.i ], [ %.01653, %bb.i ], [ %.01653, %.outer.i ] ; 2 uses
  %.01745 = phi i32 [ %i.ad, %bb.h ], [ %.01752, %.loopexit.loopexit30.i ], [ %.01752, %bb.i ], [ %.01752, %.outer.i ] ; 3 uses
  %.3.i = phi i1 [ true, %bb.h ], [ %i.av, %.loopexit.loopexit30.i ], [ true, %bb.i ], [ true, %.outer.i ]
  br i1 %.3.i, label %bb.j, label %_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit

bb.j:                                             ; preds = %_ZNK17HexDataSourceView17annotationIndexAtEi.exit
  %1 = icmp slt i32 %.01745, 0
  %i.aw = icmp slt i32 %.01646, 1
  %or.cond.i = or i1 %1, %i.aw
  br i1 %or.cond.i, label %_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %.01745, -1
  %i.ay = add i32 %i.ax, %.01646
  %i.az = getelementptr i8, ptr %0, i64 280
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %0, i64 272
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.01929.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.be, %.backedge.i ] ; 2 uses
  %i.be = add nsw i64 %.01929.i, -1               ; 3 uses
  %i.bf = getelementptr [48 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8            ; 2 uses
  %.not.i13 = icmp sgt i32 %i.bg, %i.ay
  br i1 %.not.i13, label %.backedge.i, label %.split.i14

.split.i14:                                       ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bg, -1
  %i.bk = add i32 %i.bj, %i.bi
  %.not24.i = icmp slt i32 %i.bk, %.01745
  br i1 %.not24.i, label %.backedge.i, label %.loopexit.split.loop.exit.i

.backedge.i:                                      ; preds = %.split.i14, %bb.l
  %i.bl = icmp samesign ult i64 %.01929.i, 2
  br i1 %i.bl, label %_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit, label %bb.l, !llvm.loop !2

.loopexit.split.loop.exit.i:                      ; preds = %.split.i14
  %i.bm = and i64 %i.be, 2147483648
  %i.bn = icmp eq i64 %i.bm, 0
  br label %_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit

_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit: ; preds = %.backedge.i, %bb.g, %.loopexit.split.loop.exit.i, %bb.k, %bb.j, %_ZNK17HexDataSourceView17annotationIndexAtEi.exit
  %.09.shrunk4760 = phi i1 [ true, %_ZNK17HexDataSourceView17annotationIndexAtEi.exit ], [ true, %bb.j ], [ true, %.loopexit.split.loop.exit.i ], [ true, %bb.k ], [ false, %bb.g ], [ true, %.backedge.i ]
  %.0 = phi i1 [ true, %_ZNK17HexDataSourceView17annotationIndexAtEi.exit ], [ false, %bb.j ], [ %i.bn, %.loopexit.split.loop.exit.i ], [ false, %bb.k ], [ false, %bb.g ], [ false, %.backedge.i ] ; 2 uses
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.t, i1 noundef zeroext %.09.shrunk4760)
  %i.bo = getelementptr i8, ptr %0, i64 368
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(16) %i.bp, i1 noundef zeroext %.0)
  %i.bq = getelementptr i8, ptr %0, i64 376
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(16) %i.br, i1 noundef zeroext %.0)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK17HexDataSourceView27annotationIndexIntersectingEii.exit, %bb.d
  %i.bs = getelementptr i8, ptr %0, i64 384
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not12 = icmp eq ptr %i.bt, null
  br i1 %.not12, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr i8, ptr %0, i64 304
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = icmp sgt i32 %i.bv, -1                  ; 2 uses
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.bt, i1 noundef zeroext %i.bw)
  %i.bx = getelementptr i8, ptr %0, i64 392
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(16) %i.by, i1 noundef zeroext %i.bw)
  %i.bz = getelementptr i8, ptr %0, i64 400
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %0, i64 316
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp sgt i32 %i.cc, -1
  br i1 %i.cd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr i8, ptr %0, i64 320
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = icmp sgt i32 %i.cf, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ch = phi i1 [ true, %bb.n ], [ %i.cg, %bb.o ]
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(16) %i.ca, i1 noundef zeroext %i.ch)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.m
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17HexDataSourceView20setCharacterEncodingEP7QAction(ptr noundef align 8 dereferenceable_or_null(464) %0, ptr noundef %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QMetaType, align 8           ; 6 uses
  %3 = alloca %class.QMetaType, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %class.QVariant, align 8            ; 11 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNK7QAction4dataEv(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -4                         ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.e, ptr %2, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI19bytes_encoding_typeE8metaTypeE, ptr %3, align 8
  %i.f = icmp eq i64 %i.d, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI19bytes_encoding_typeE8metaTypeE to i64)
  br i1 %i.f, label %_Zeq9QMetaTypeS_.exit.thread.i.i, label %bb.c

_Zeq9QMetaTypeS_.exit.thread.i.i:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_Zeq9QMetaTypeS_.exit.thread9.i.i, label %bb.d

_Zeq9QMetaTypeS_.exit.thread9.i.i:                ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 12
  %i.h = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not6.not.i.i.i.i, label %bb.e, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i unwind label %bb.k

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.e, %bb.d
  %.1.i.i.i.i = phi i32 [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI19bytes_encoding_typeE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.f, label %_Zeq9QMetaTypeS_.exit.i.i

bb.f:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.k = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3)
          to label %_Zeq9QMetaTypeS_.exit.i.i unwind label %bb.k

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.f, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.j, %_ZNK9QMetaType2idEi.exit.i.i.i ], [ %i.k, %bb.f ]
  %i.l = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  %i.m = load i32, ptr %4, align 8
  br label %_ZNK8QVariant5valueI19bytes_encoding_typeEET_v.exit

bb.h:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  %i.n = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %4)
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %bb.h
  %i.o = load i64, ptr %i.b, align 8
  %i.p = and i64 %i.o, 1
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc5
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.i, %.noexc5
  %i.v = phi ptr [ %i.u, %bb.i ], [ %4, %.noexc5 ]
  %i.w = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.n, ptr noundef %i.v, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI19bytes_encoding_typeE8metaTypeE, ptr noundef nonnull %i.a)
          to label %.noexc6 unwind label %bb.k    ; 0 uses

.noexc6:                                          ; preds = %_ZNK8QVariant9constDataEv.exit.i.i
  %i.x = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNK8QVariant5valueI19bytes_encoding_typeEET_v.exit

_ZNK8QVariant5valueI19bytes_encoding_typeEET_v.exit: ; preds = %.noexc6, %bb.g
  %.0.i.i = phi i32 [ %i.m, %bb.g ], [ %i.x, %.noexc6 ]
  store i32 %.0.i.i, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 32), align 8
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN17HexDataSourceView23byteViewSettingsChangedEv(ptr noundef align 8 dereferenceable_or_null(464) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNK8QVariant5valueI19bytes_encoding_typeEET_v.exit
  ret void

bb.k:                                             ; preds = %_ZNK8QVariant9constDataEv.exit.i.i, %bb.h, %bb.f, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
end_hunk_0
