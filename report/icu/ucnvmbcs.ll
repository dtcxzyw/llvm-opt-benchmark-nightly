Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL17ucnv_MBCSWriteSubP25UConverterFromUnicodeArgsiP10UErrorCode:bb.a
  %i.ag = load i8, ptr %.029, align 1, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %.132, i64 1
  store i8 %i.ag, ptr %.132, align 1, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %.132, i64 2
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !27
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.h
  %.2 = phi ptr [ %i.ab, %bb.h ], [ %i.ak, %bb.k ]
  %i.al = ptrtoint ptr %.2 to i64
  %i.am = ptrtoint ptr %i.a to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.130 = phi ptr [ %i.a, %bb.m ], [ %.029, %bb.d ]
  %.1 = phi i32 [ %i.ao, %bb.m ], [ %.0, %bb.d ]
  call void @ucnv_cbFromUWriteBytes_78(ptr noundef nonnull %0, ptr noundef %.130, i32 noundef %.1, i32 noundef %1, ptr noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22ucnv_MBCSGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %i.c = and i32 %i.b, 32768
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.f = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.e(ptr noundef %i.f, i32 noundef 0, i32 noundef 55295)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.h = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.g(ptr noundef %i.h, i32 noundef 57344, i32 noundef 1114111)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 252
  %i.l = load i8, ptr %i.k, align 4, !tbaa !33
  %i.m = icmp eq i8 %i.l, -37
  %i.n = zext i1 %i.m to i32
  tail call void @ucnv_MBCSGetFilteredUnicodeSetForUnicode_78(ptr noundef %i.j, ptr noundef %1, i32 noundef %2, i32 noundef %i.n, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @ucnv_load_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ucnv_unload_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #8

declare void @udata_getInfo_78(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL12getStatePropPA256_KiPai(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 128) %2) unnamed_addr #9 {
bb.a:
  %i.a = zext nneg i32 %2 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 8 uses
  store i8 0, ptr %i.c, align 1, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %indvars.iv82 = phi i32 [ %indvars.iv.next83, %bb.i ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.a ] ; 8 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26   ; 3 uses
  %i.f = lshr i32 %i.e, 24
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL12getStatePropPA256_KiPai(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = icmp sgt i32 %i.e, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.i, align 1, !tbaa !27
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.j, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = and i32 %i.e, 14680064
  %i.p = icmp samesign ult i32 %i.o, 6291456
  br i1 %i.p, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = icmp eq i64 %indvars.iv, 255
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 -64, ptr %i.c, align 1, !tbaa !27
  br label %._crit_edge77

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next83 = add nuw nsw i32 %indvars.iv82, 1
  br label %bb.b, !llvm.loop !193

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = load i8, ptr %i.c, align 1, !tbaa !27
  %i.t = lshr i64 %indvars.iv, 2
  %i.u = trunc i64 %i.t to i8
  %i.v = and i8 %i.u, -8
  %i.w = or i8 %i.s, %i.v                         ; 2 uses
  store i8 %i.w, ptr %i.c, align 1, !tbaa !27
  %i.x = icmp samesign ult i64 %indvars.iv, 255
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.o
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.o ], [ 255, %bb.j ] ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv80
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26   ; 3 uses
  %i.aa = lshr i32 %i.z, 24
  %i.ab = and i32 %i.aa, 127                      ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZL12getStatePropPA256_KiPai(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ab)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %i.ag = icmp sgt i32 %i.z, -1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %._crit_edge.loopexit.split.loop.exit98, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = and i32 %i.z, 14680064
  %i.ak = icmp samesign ult i32 %i.aj, 6291456
  br i1 %i.ak, label %._crit_edge.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, -1 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv, %indvars.iv.next81
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !194

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.n
  %i.am = trunc nuw nsw i64 %indvars.iv80 to i32
  br label %._crit_edge.loopexit

._crit_edge.loopexit.split.loop.exit98:           ; preds = %bb.m
  %i.an = trunc nuw nsw i64 %indvars.iv80 to i32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit98, %._crit_edge.loopexit.split.loop.exit
  %.0.lcssa.ph = phi i32 [ %i.an, %._crit_edge.loopexit.split.loop.exit98 ], [ %i.am, %._crit_edge.loopexit.split.loop.exit ], [ %indvars.iv82, %bb.o ]
  %.pre = load i8, ptr %i.c, align 1, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.ao = phi i8 [ %i.w, %bb.j ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 255, %bb.j ], [ %.0.lcssa.ph, %._crit_edge.loopexit ] ; 3 uses
  %i.ap = lshr i32 %.0.lcssa, 5
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = or i8 %i.ao, %i.aq
  store i8 %i.ar, ptr %i.c, align 1, !tbaa !27
  %.not73 = icmp slt i32 %.0.lcssa, %i.r
  br i1 %.not73, label %._crit_edge77, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %._crit_edge
  %i.as = zext i32 %.0.lcssa to i64
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.t
  %indvars.iv87 = phi i64 [ %indvars.iv, %.lr.ph76.preheader ], [ %indvars.iv.next88, %bb.t ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.au = load i32, ptr %i.at, align 4, !tbaa !26 ; 3 uses
  %i.av = lshr i32 %i.au, 24
  %i.aw = and i32 %i.av, 127                      ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph76
  tail call fastcc void @_ZL12getStatePropPA256_KiPai(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.aw)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph76
  %i.bb = icmp slt i32 %i.au, 0
  br i1 %i.bb, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !27
  %i.bd = or i8 %i.bc, 64
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !27
  %i.be = and i32 %i.au, 12582912
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load i8, ptr %i.c, align 1, !tbaa !27
  %i.bh = or i8 %i.bg, 64
  store i8 %i.bh, ptr %i.c, align 1, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %.not.not = icmp samesign ult i64 %indvars.iv87, %i.as
  br i1 %.not.not, label %.lr.ph76, label %._crit_edge77, !llvm.loop !195

._crit_edge77:                                    ; preds = %bb.t, %._crit_edge, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL7enumToUP19UConverterMBCSTablePaijjPFaPKvjPiES3_P10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 -2147483648, 255) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [1024 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 4 uses
  %i.h = shl i32 %4, 8                            ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27    ; 4 uses
  %i.k = sext i8 %i.j to i32
  %i.l = shl nsw i32 %i.k, 2
  %i.m = and i32 %i.l, 224                        ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = icmp sgt i8 %i.j, 63
  br i1 %i.o, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.p = and i8 %i.j, 7
  %narrow14 = add nuw nsw i8 %i.p, 1
  %i.q = zext nneg i8 %narrow14 to i32
  %i.r = shl nuw nsw i32 %i.q, 5
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.a, align 16, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.072 = phi i32 [ 1, %bb.c ], [ %i.m, %bb.a ]   ; 2 uses
  %i.s = and i8 %i.j, 7
  %narrow = add nuw nsw i8 %i.s, 1
  %i.t = zext nneg i8 %narrow to i32
  %i.u = shl nuw nsw i32 %i.t, 5                  ; 2 uses
  %i.v = icmp samesign ult i32 %.072, %i.u
  br i1 %i.v, label %.lr.ph, label %.critedge88

.lr.ph:                                           ; preds = %.thread, %bb.d
  %i.w = phi i32 [ %i.r, %.thread ], [ %i.u, %bb.d ]
  %.07215 = phi i32 [ 0, %.thread ], [ %.072, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 204 ; 2 uses
  %i.aa = zext nneg i32 %.07215 to i64
  %i.ab = zext nneg i32 %i.w to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZL20writeStage3RoundtripPKvjPi.exit
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %_ZL20writeStage3RoundtripPKvjPi.exit ] ; 6 uses
  %.0751 = phi i32 [ -1, %.lr.ph ], [ %.378, %_ZL20writeStage3RoundtripPKvjPi.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26 ; 8 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = lshr i32 %i.ad, 24                      ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ak = and i32 %i.ad, 16777215
  %i.al = add i32 %i.ak, %3
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = or i32 %i.h, %i.am
  tail call fastcc void @_ZL7enumToUP19UConverterMBCSTablePaijjPFaPKvjPiES3_P10UErrorCode(ptr noundef %0, ptr noundef %1, i32 noundef %i.af, i32 noundef %i.al, i32 noundef %i.an, ptr noundef %5)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.ao = and i64 %indvars.iv, 31
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ao
  store i32 -1, ptr %i.ap, align 4, !tbaa !26
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.aq = lshr i32 %i.ad, 20
  %i.ar = and i32 %i.aq, 15
  switch i32 %i.ar, label %bb.q [
    i32 0, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 1, label %bb.p
  ]

bb.i:                                             ; preds = %bb.h
  %i.as = and i32 %i.ad, 65535
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.at = and i32 %i.ad, 65535
  %i.au = add i32 %i.at, %3
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !21 ; 2 uses
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp ult i16 %i.ax, -2
  %spec.store.select = select i1 %i.az, i32 %i.ay, i32 -1
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.ba = and i32 %i.ad, 65535
  %i.bb = add i32 %i.ba, %3                       ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !21 ; 4 uses
  %i.bg = zext i16 %i.bf to i32                   ; 2 uses
  %i.bh = icmp ult i16 %i.bf, -10240
  br i1 %i.bh, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp samesign ult i16 %i.bf, -9216
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = shl nuw nsw i32 %i.bg, 10
  %i.bk = and i32 %i.bj, 1047552
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !21
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bk, 9216
  %i.bq = add nuw nsw i32 %i.bp, %i.bo
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.br = icmp eq i16 %i.bf, -8192
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = sext i32 %i.bc to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !21
  %i.bv = zext i16 %i.bu to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.bw = and i32 %i.ad, 1048575
  %i.bx = add nuw nsw i32 %i.bw, 65536
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.k, %bb.o, %bb.m, %bb.n, %bb.j, %bb.p, %bb.i
  %.169 = phi i32 [ %i.as, %bb.i ], [ %spec.store.select, %bb.j ], [ -1, %bb.n ], [ %i.bx, %bb.p ], [ %i.bg, %bb.k ], [ %i.bq, %bb.m ], [ %i.bv, %bb.o ], [ -1, %bb.h ] ; 2 uses
  %i.by = and i64 %indvars.iv, 31
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.by
  store i32 %.169, ptr %i.bz, align 4, !tbaa !26
  %i.ca = and i32 %.169, %.0751
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q
  %.176 = phi i32 [ %.0751, %.critedge ], [ %i.ca, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cb = and i64 %indvars.iv.next, 31
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = icmp sgt i32 %.176, -1
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.s, label %_ZL20writeStage3RoundtripPKvjPi.exit

bb.s:                                             ; preds = %bb.r
  %i.ce = trunc i64 %indvars.iv to i32
  %i.cf = add i32 %i.ce, -31
  %i.cg = or i32 %i.cf, %i.h                      ; 11 uses
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !19  ; 3 uses
  %i.cj = load i8, ptr %i.z, align 4, !tbaa !18
  switch i8 %i.cj, label %.preheader [
    i8 8, label %bb.t
    i8 9, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.ck = icmp ult i32 %i.cg, 65536
  br i1 %i.ck, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = icmp ult i32 %i.cg, 9371648
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = and i32 %i.cg, 32767
  br label %.preheader

bb.w:                                             ; preds = %bb.u
  %i.cn = and i32 %i.cg, 65407
  br label %.preheader
end_hunk_0
