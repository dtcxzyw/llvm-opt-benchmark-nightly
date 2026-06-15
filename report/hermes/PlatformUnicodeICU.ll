inline.NumInlined: 126
inline.NumDeleted: 71
begin_hunk_0_@_ZN6hermes16platform_unicode10dateFormatEdbbRN4llvh15SmallVectorImplIDsEE:bb.a
  br i1 %i.cp, label %bb.g, label %.lr.ph.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.cq, i64 noundef 128, i64 noundef 2) #9
  %.pre.i22 = load i32, ptr %i.ck, align 8, !tbaa !15 ; 2 uses
  %.not13.i = icmp eq i32 %.pre.i22, 128
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f, %bb.g
  %.pre-phi.i21.in58 = phi i32 [ %.pre.i22, %bb.g ], [ %i.cl, %bb.f ]
  %.pre-phi.i21 = zext i32 %.pre-phi.i21.in58 to i64 ; 2 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !13
  %i.cs = getelementptr [2 x i8], ptr %i.cr, i64 %.pre-phi.i21
  %i.ct = shl nuw nsw i64 %.pre-phi.i21, 1
  %i.cu = sub nsw i64 256, %i.ct
  call void @llvm.memset.p0.i64(ptr align 2 %i.cs, i8 0, i64 %i.cu, i1 false), !tbaa !23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.g, %bb.d
  store i32 128, ptr %i.ck, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit:      ; preds = %bb.e, %.sink.split.i
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.cv = load ptr, ptr %3, align 8, !tbaa !13
  %i.cw = call i32 @udat_format_74(ptr noundef nonnull %i.cj, double noundef %0, ptr noundef %i.cv, i32 noundef 128, ptr noundef null, ptr noundef nonnull %i.a) #9 ; 12 uses
  %i.cx = icmp sgt i32 %i.cw, 128
  br i1 %i.cx, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit
  %i.cy = add nuw nsw i32 %i.cw, 1                ; 4 uses
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = load i32, ptr %i.ck, align 8, !tbaa !15 ; 3 uses
  %i.db = icmp ult i32 %i.cy, %i.da
  br i1 %i.db, label %.sink.split.i26, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45 = icmp samesign ult i32 %i.cw, %i.da
  br i1 %.not45, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  %.not46 = icmp ult i32 %i.cw, %i.dd
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.de, i64 noundef %i.cz, i64 noundef 2) #9
  %.pre.i27 = load i32, ptr %i.ck, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi.i23.in = phi i32 [ %.pre.i27, %bb.k ], [ %i.da, %bb.j ] ; 2 uses
  %.not13.i24 = icmp eq i32 %i.cy, %.pre-phi.i23.in
  br i1 %.not13.i24, label %.sink.split.i26, label %.lr.ph.preheader.i25

.lr.ph.preheader.i25:                             ; preds = %bb.l
  %.pre-phi.i23 = zext i32 %.pre-phi.i23.in to i64 ; 2 uses
  %i.df = load ptr, ptr %3, align 8, !tbaa !13
  %i.dg = getelementptr [2 x i8], ptr %i.df, i64 %.pre-phi.i23
  %i.dh = sub nsw i64 %i.cz, %.pre-phi.i23
  %i.di = shl nsw i64 %i.dh, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.dg, i8 0, i64 %i.di, i1 false), !tbaa !23
  br label %.sink.split.i26

.sink.split.i26:                                  ; preds = %.lr.ph.preheader.i25, %bb.l, %bb.h
  store i32 %i.cy, ptr %i.ck, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit29

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit29:    ; preds = %bb.i, %.sink.split.i26
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.dj = load ptr, ptr %3, align 8, !tbaa !13
  %i.dk = call i32 @udat_format_74(ptr noundef nonnull %i.cj, double noundef %0, ptr noundef %i.dj, i32 noundef %i.cw, ptr noundef null, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.dl = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.dm = load i32, ptr %i.ck, align 8, !tbaa !15 ; 3 uses
  %i.dn = icmp ult i32 %i.cw, %i.dm
  br i1 %i.dn, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit29
  %i.do = icmp samesign ugt i32 %i.cw, %i.dm
  br i1 %i.do, label %bb.n, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36

bb.n:                                             ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !16
  %i.dr = icmp ugt i32 %i.cw, %i.dq
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ds, i64 noundef %i.dl, i64 noundef 2) #9
  %.pre.i34 = load i32, ptr %i.ck, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i30.in = phi i32 [ %.pre.i34, %bb.o ], [ %i.dm, %bb.n ] ; 2 uses
  %.not13.i31 = icmp eq i32 %i.cw, %.pre-phi.i30.in
  br i1 %.not13.i31, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split, label %.lr.ph.preheader.i32

.lr.ph.preheader.i32:                             ; preds = %bb.p
  %.pre-phi.i30 = zext i32 %.pre-phi.i30.in to i64 ; 2 uses
  %i.dt = load ptr, ptr %3, align 8, !tbaa !13
  %i.du = getelementptr [2 x i8], ptr %i.dt, i64 %.pre-phi.i30
  %i.dv = sub nsw i64 %i.dl, %.pre-phi.i30
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split.sink.split

bb.q:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit
  %i.dw = sext i32 %i.cw to i64                   ; 6 uses
  %i.dx = load i32, ptr %i.ck, align 8, !tbaa !15
  %i.dy = zext i32 %i.dx to i64                   ; 3 uses
  %i.dz = icmp ult i64 %i.dw, %i.dy
  br i1 %i.dz, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp ugt i64 %i.dw, %i.dy
  br i1 %i.ea, label %bb.s, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !16
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp ugt i64 %i.dw, %i.ed
  br i1 %i.ee, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ef, i64 noundef %i.dw, i64 noundef 2) #9
  %.pre.i41 = load i32, ptr %i.ck, align 8, !tbaa !15
  %.pre15.i42 = zext i32 %.pre.i41 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre-phi.i37 = phi i64 [ %.pre15.i42, %bb.t ], [ %i.dy, %bb.s ] ; 3 uses
  %.not13.i38 = icmp samesign eq i64 %.pre-phi.i37, %i.dw
  br i1 %.not13.i38, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split, label %.lr.ph.preheader.i39

.lr.ph.preheader.i39:                             ; preds = %bb.u
  %i.eg = load ptr, ptr %3, align 8, !tbaa !13
  %i.eh = getelementptr [2 x i8], ptr %i.eg, i64 %.pre-phi.i37
  %i.ei = sub nsw i64 %i.dw, %.pre-phi.i37
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split.sink.split

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split.sink.split: ; preds = %.lr.ph.preheader.i32, %.lr.ph.preheader.i39
  %.sink60 = phi i64 [ %i.ei, %.lr.ph.preheader.i39 ], [ %i.dv, %.lr.ph.preheader.i32 ]
  %.sink = phi ptr [ %i.eh, %.lr.ph.preheader.i39 ], [ %i.du, %.lr.ph.preheader.i32 ]
  %i.ej = shl nsw i64 %.sink60, 1
  call void @llvm.memset.p0.i64(ptr align 2 %.sink, i8 0, i64 %i.ej, i1 false), !tbaa !23
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split: ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split.sink.split, %bb.q, %bb.u, %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit29, %bb.p
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36:    ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36.sink.split, %bb.r, %bb.m
  call void @udat_close_74(ptr noundef nonnull %i.cj) #9
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendIPcvEEvT_S4_.exit, %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ek = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.g
  br i1 %i.el, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.ek) #9
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @udat_open_74(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uloc_getDefault_74() local_unnamed_addr #2

declare i32 @udat_format_74(ptr noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @udat_close_74(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes16platform_unicode13convertToCaseERN4llvh15SmallVectorImplIDsEENS0_14CaseConversionEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.0", align 8 ; 16 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 8 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = icmp eq i32 %1, 0
  %u_strToUpper_74.u_strToLower_74 = select i1 %i.f, ptr @u_strToUpper_74, ptr @u_strToLower_74 ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @uloc_getDefault_74() #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ @.str.1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i32 0, ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 64, ptr %i.k, align 4, !tbaa !16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %i.d, 64
  br i1 %i.l, label %bb.e, label %.lr.ph.preheader.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.i, i64 noundef %i.e, i64 noundef 2) #9
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !15 ; 2 uses
  %.not13.i = icmp eq i32 %i.d, %.pre.i
  %.pre29.pre = load ptr, ptr %3, align 8, !tbaa !13 ; 2 uses
  br i1 %.not13.i, label %.sink.split.i, label %..lr.ph.preheader.i_crit_edge

..lr.ph.preheader.i_crit_edge:                    ; preds = %bb.e
  %.pre15.i = zext i32 %.pre.i to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %..lr.ph.preheader.i_crit_edge, %bb.d
  %i.m = phi ptr [ %.pre29.pre, %..lr.ph.preheader.i_crit_edge ], [ %i.i, %bb.d ] ; 2 uses
  %.pre-phi.i28 = phi i64 [ %.pre15.i, %..lr.ph.preheader.i_crit_edge ], [ 0, %bb.d ] ; 2 uses
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %.pre-phi.i28
  %i.o = sub nsw i64 %i.e, %.pre-phi.i28
  %i.p = shl nsw i64 %i.o, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.e
  %.pre29 = phi ptr [ %i.m, %.lr.ph.preheader.i ], [ %.pre29.pre, %bb.e ]
  store i32 %i.d, ptr %i.j, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit:      ; preds = %bb.c, %.sink.split.i
  %i.q = phi ptr [ %i.i, %bb.c ], [ %.pre29, %.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.r = call noundef i32 %u_strToUpper_74.u_strToLower_74(ptr noundef %i.q, i32 noundef %i.d, ptr noundef %i.b, i32 noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a) #9, !callees !36 ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 7 uses
  %i.t = load i32, ptr %i.j, align 8, !tbaa !15
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.sink.split.i21, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit
  %i.w = icmp ugt i64 %i.s, %i.u
  br i1 %i.w, label %bb.g, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit24

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.k, align 4, !tbaa !16
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.s, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.i, i64 noundef %i.s, i64 noundef 2) #9
  %.pre.i22 = load i32, ptr %i.j, align 8, !tbaa !15
  %.pre15.i23 = zext i32 %.pre.i22 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi.i18 = phi i64 [ %.pre15.i23, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %.not13.i19 = icmp samesign eq i64 %.pre-phi.i18, %i.s
  br i1 %.not13.i19, label %.sink.split.i21, label %.lr.ph.preheader.i20

.lr.ph.preheader.i20:                             ; preds = %bb.i
  %i.aa = load ptr, ptr %3, align 8, !tbaa !13
  %i.ab = getelementptr [2 x i8], ptr %i.aa, i64 %.pre-phi.i18
  %i.ac = sub nsw i64 %i.s, %.pre-phi.i18
  %i.ad = shl nsw i64 %i.ac, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %i.ad, i1 false), !tbaa !23
  br label %.sink.split.i21

.sink.split.i21:                                  ; preds = %.lr.ph.preheader.i20, %bb.i, %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit
  store i32 %i.r, ptr %i.j, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit24

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit24:    ; preds = %bb.f, %.sink.split.i21
  %i.ae = icmp ult i64 %i.e, %i.s
  br i1 %i.ae, label %bb.j, label %4, !prof !37

bb.j:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit24
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.af = load ptr, ptr %3, align 8, !tbaa !13
  %i.ag = call noundef i32 %u_strToUpper_74.u_strToLower_74(ptr noundef %i.af, i32 noundef %i.r, ptr noundef %i.b, i32 noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a) #9, !callees !36 ; 0 uses
  br label %4

4:                                                ; preds = %bb.j, %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit24
  %5 = icmp eq ptr %0, %3
  br i1 %5, label %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %4
  %6 = load i32, ptr %i.j, align 8, !tbaa !15     ; 6 uses
  %i.ah = zext i32 %6 to i64                      ; 2 uses
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !15  ; 4 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.ai, %6
  br i1 %.not.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not29.i = icmp eq i32 %6, 0
  br i1 %.not29.i, label %.sink.split.i25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not31.i = icmp eq i32 %6, 1
  br i1 %.not31.i, label %bb.o, label %bb.n, !prof !37

bb.n:                                             ; preds = %bb.m
  %.idx.i = shl nuw nsw i64 %i.ah, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.al, ptr align 2 %i.ak, i64 %.idx.i, i1 false)
  br label %.sink.split.i25

bb.o:                                             ; preds = %bb.m
  %i.am = load i16, ptr %i.ak, align 2, !tbaa !23
  store i16 %i.am, ptr %i.al, align 2, !tbaa !23
  br label %.sink.split.i25

bb.p:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = icmp ult i32 %i.ao, %6
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.c, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.aq, i64 noundef %i.ah, i64 noundef 2) #9
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i

bb.r:                                             ; preds = %bb.p
  %.not28.i = icmp eq i32 %i.ai, 0
  br i1 %.not28.i, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not33.i = icmp eq i32 %i.ai, 1
  br i1 %.not33.i, label %bb.u, label %bb.t, !prof !37

bb.t:                                             ; preds = %bb.s
  %.idx32.i = shl nuw nsw i64 %i.aj, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.as, ptr align 2 %i.ar, i64 %.idx32.i, i1 false)
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i

bb.u:                                             ; preds = %bb.s
  %i.at = load i16, ptr %i.ar, align 2, !tbaa !23
  store i16 %i.at, ptr %i.as, align 2, !tbaa !23
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i:           ; preds = %bb.u, %bb.t, %bb.r, %bb.q
  %.022.i = phi i64 [ 0, %bb.q ], [ 0, %bb.r ], [ %i.aj, %bb.t ], [ 1, %bb.u ] ; 4 uses
  %i.au = load i32, ptr %i.j, align 8, !tbaa !15
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.022.i, %i.av
  br i1 %.not.i.i, label %.sink.split.i25, label %bb.v

bb.v:                                             ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i
  %i.aw = load ptr, ptr %3, align 8, !tbaa !13
  %.idx35.i = shl nuw nsw i64 %.022.i, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx35.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %.022.i
  %i.ba = sub nsw i64 %i.av, %.022.i
  %gepdiff.i = shl nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 2 %i.ax, i64 %gepdiff.i, i1 false)
  br label %.sink.split.i25

.sink.split.i25:                                  ; preds = %bb.v, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i, %bb.o, %bb.n, %bb.l
  store i32 %6, ptr %i.c, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit

_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit:       ; preds = %4, %.sink.split.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bb = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.i
  br i1 %i.bc, label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit
  call void @free(ptr noundef %i.bb) #9
  br label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit:          ; preds = %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

declare i32 @u_strToUpper_74(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @u_strToLower_74(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes16platform_unicode9normalizeERN4llvh15SmallVectorImplIDsEENS0_17NormalizationFormE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %2 = alloca %"class.llvh::SmallVector.0", align 8 ; 16 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 8 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !11
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @unorm2_getNFCInstance_74(ptr noundef nonnull %i.a) #9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = call ptr @unorm2_getNFDInstance_74(ptr noundef nonnull %i.a) #9
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = call ptr @unorm2_getNFKCInstance_74(ptr noundef nonnull %i.a) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = call ptr @unorm2_getNFKDInstance_74(ptr noundef nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i32 0, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 64, ptr %i.l, align 4, !tbaa !16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp ugt i32 %i.d, 64
  br i1 %i.m, label %bb.h, label %.lr.ph.preheader.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef 2) #9
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !15 ; 2 uses
  %.not13.i = icmp eq i32 %i.d, %.pre.i
  %.pre26.pre = load ptr, ptr %2, align 8, !tbaa !13 ; 2 uses
  br i1 %.not13.i, label %.sink.split.i, label %..lr.ph.preheader.i_crit_edge

..lr.ph.preheader.i_crit_edge:                    ; preds = %bb.h
  %.pre15.i = zext i32 %.pre.i to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %..lr.ph.preheader.i_crit_edge, %bb.g
  %i.n = phi ptr [ %.pre26.pre, %..lr.ph.preheader.i_crit_edge ], [ %i.j, %bb.g ] ; 2 uses
  %.pre-phi.i25 = phi i64 [ %.pre15.i, %..lr.ph.preheader.i_crit_edge ], [ 0, %bb.g ] ; 2 uses
  %i.o = getelementptr [2 x i8], ptr %i.n, i64 %.pre-phi.i25
  %i.p = sub nsw i64 %i.e, %.pre-phi.i25
  %i.q = shl nsw i64 %i.p, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.o, i8 0, i64 %i.q, i1 false), !tbaa !23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.h
  %.pre26 = phi ptr [ %i.n, %.lr.ph.preheader.i ], [ %.pre26.pre, %bb.h ]
  store i32 %i.d, ptr %i.k, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit:      ; preds = %bb.f, %.sink.split.i
  %i.r = phi ptr [ %i.j, %bb.f ], [ %.pre26, %.sink.split.i ]
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.s = call i32 @unorm2_normalize_74(ptr noundef %.0, ptr noundef %i.b, i32 noundef %i.d, ptr noundef %i.r, i32 noundef %i.d, ptr noundef nonnull %i.a) #9 ; 3 uses
  %i.t = sext i32 %i.s to i64                     ; 7 uses
  %i.u = load i32, ptr %i.k, align 8, !tbaa !15
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %.sink.split.i18, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit
  %i.x = icmp ugt i64 %i.t, %i.v
  br i1 %i.x, label %bb.j, label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit21

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %i.l, align 4, !tbaa !16
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp ugt i64 %i.t, %i.z
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.j, i64 noundef %i.t, i64 noundef 2) #9
  %.pre.i19 = load i32, ptr %i.k, align 8, !tbaa !15
  %.pre15.i20 = zext i32 %.pre.i19 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi.i15 = phi i64 [ %.pre15.i20, %bb.k ], [ %i.v, %bb.j ] ; 3 uses
  %.not13.i16 = icmp samesign eq i64 %.pre-phi.i15, %i.t
  br i1 %.not13.i16, label %.sink.split.i18, label %.lr.ph.preheader.i17

.lr.ph.preheader.i17:                             ; preds = %bb.l
  %i.ab = load ptr, ptr %2, align 8, !tbaa !13
  %i.ac = getelementptr [2 x i8], ptr %i.ab, i64 %.pre-phi.i15
  %i.ad = sub nsw i64 %i.t, %.pre-phi.i15
  %i.ae = shl nsw i64 %i.ad, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.ac, i8 0, i64 %i.ae, i1 false), !tbaa !23
  br label %.sink.split.i18

.sink.split.i18:                                  ; preds = %.lr.ph.preheader.i17, %bb.l, %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit
  store i32 %i.s, ptr %i.k, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit21

_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit21:    ; preds = %bb.i, %.sink.split.i18
  %i.af = icmp ult i64 %i.e, %i.t
  br i1 %i.af, label %bb.m, label %3, !prof !37

bb.m:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit21
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.ag = load ptr, ptr %2, align 8, !tbaa !13
  %i.ah = call i32 @unorm2_normalize_74(ptr noundef %.0, ptr noundef %i.b, i32 noundef %i.d, ptr noundef %i.ag, i32 noundef %i.s, ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %3

3:                                                ; preds = %bb.m, %_ZN4llvh15SmallVectorImplIDsE6resizeEm.exit21
  %4 = icmp eq ptr %0, %2
  br i1 %4, label %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit, label %bb.n

bb.n:                                             ; preds = %3
  %5 = load i32, ptr %i.k, align 8, !tbaa !15     ; 6 uses
  %i.ai = zext i32 %5 to i64                      ; 2 uses
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !15  ; 4 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.aj, %5
  br i1 %.not.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not29.i = icmp eq i32 %5, 0
  br i1 %.not29.i, label %.sink.split.i22, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not31.i = icmp eq i32 %5, 1
  br i1 %.not31.i, label %bb.r, label %bb.q, !prof !37

bb.q:                                             ; preds = %bb.p
  %.idx.i = shl nuw nsw i64 %i.ai, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.am, ptr align 2 %i.al, i64 %.idx.i, i1 false)
  br label %.sink.split.i22

bb.r:                                             ; preds = %bb.p
  %i.an = load i16, ptr %i.al, align 2, !tbaa !23
  store i16 %i.an, ptr %i.am, align 2, !tbaa !23
  br label %.sink.split.i22

bb.s:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = icmp ult i32 %i.ap, %5
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.c, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ar, i64 noundef %i.ai, i64 noundef 2) #9
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i

bb.u:                                             ; preds = %bb.s
  %.not28.i = icmp eq i32 %i.aj, 0
  br i1 %.not28.i, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not33.i = icmp eq i32 %i.aj, 1
  br i1 %.not33.i, label %bb.x, label %bb.w, !prof !37

bb.w:                                             ; preds = %bb.v
  %.idx32.i = shl nuw nsw i64 %i.ak, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.at, ptr align 2 %i.as, i64 %.idx32.i, i1 false)
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i

bb.x:                                             ; preds = %bb.v
  %i.au = load i16, ptr %i.as, align 2, !tbaa !23
  store i16 %i.au, ptr %i.at, align 2, !tbaa !23
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i:           ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.022.i = phi i64 [ 0, %bb.t ], [ 0, %bb.u ], [ %i.ak, %bb.w ], [ 1, %bb.x ] ; 4 uses
  %i.av = load i32, ptr %i.k, align 8, !tbaa !15
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.022.i, %i.aw
  br i1 %.not.i.i, label %.sink.split.i22, label %bb.y

bb.y:                                             ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i
  %i.ax = load ptr, ptr %2, align 8, !tbaa !13
  %.idx35.i = shl nuw nsw i64 %.022.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx35.i
  %i.az = load ptr, ptr %0, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.022.i
  %i.bb = sub nsw i64 %i.aw, %.022.i
  %gepdiff.i = shl nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 2 %i.ay, i64 %gepdiff.i, i1 false)
  br label %.sink.split.i22

.sink.split.i22:                                  ; preds = %bb.y, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i, %bb.r, %bb.q, %bb.o
  store i32 %5, ptr %i.c, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit

_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit:       ; preds = %3, %.sink.split.i22
  %i.bc = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit
  call void @free(ptr noundef %i.bc) #9
  br label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit:          ; preds = %_ZN4llvh15SmallVectorImplIDsEaSERKS1_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare ptr @unorm2_getNFCInstance_74(ptr noundef) local_unnamed_addr #2

declare ptr @unorm2_getNFDInstance_74(ptr noundef) local_unnamed_addr #2

declare ptr @unorm2_getNFKCInstance_74(ptr noundef) local_unnamed_addr #2

declare ptr @unorm2_getNFKDInstance_74(ptr noundef) local_unnamed_addr #2

declare i32 @unorm2_normalize_74(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN6hermes16platform_unicode12_GLOBAL__N_120getUCollatorInstanceEvENK3$_0clEv"() unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.b = tail call ptr @uloc_getDefault_74() #9
  %i.c = call ptr @ucol_open_74(ptr noundef %i.b, ptr noundef nonnull %i.a) #9
  %i.d = load i32, ptr %i.a, align 4, !tbaa !11
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.f = call ptr @ucol_open_74(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ]  ; 2 uses
  call void @ucol_setAttribute_74(ptr noundef %.0, i32 noundef 4, i32 noundef 17, ptr noundef nonnull %i.a) #9
  store ptr %.0, ptr @_ZZN6hermes16platform_unicode12_GLOBAL__N_120getUCollatorInstanceEvE4coll, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt10unique_ptrI9UCollatorN6hermes16platform_unicode12_GLOBAL__N_116UCollatorDeleterEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ucol_close_74(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

declare ptr @ucol_open_74(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ucol_setAttribute_74(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ucol_close_74(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS9UCollator", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"_ZTS10UErrorCode", !5, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!15 = !{!14, !4, i64 8}
!16 = !{!14, !4, i64 12}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24, !24, i64 0}
!24 = !{!"char16_t", !5, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !28, !29, !30}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 4, i32 12}
!32 = distinct !{!32, !28, !29, !30}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !28, !29}
!36 = !{ptr @u_strToLower_74, ptr @u_strToUpper_74}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!39, !9, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EP9UCollatorLb0EE", !9, i64 0}
end_hunk_0
