Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lundump?download=true
inline.NumInlined: 65
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@luaU_undump:bb.a
  br i1 %i.bl, label %bb.q, label %loadByte.exit.i.i

bb.q:                                             ; preds = %bb.p
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i:                                ; preds = %bb.p, %.thread.i.i.i
  %i.bm = phi i32 [ %i.bj, %.thread.i.i.i ], [ %i.bk, %bb.p ]
  store i64 13, ptr %i.m, align 8, !tbaa !22
  %i.bn = and i32 %i.bm, 255
  %.not.i29.i = icmp eq i32 %i.bn, 4
  br i1 %.not.i29.i, label %checknumsize.exit.i, label %bb.r

bb.r:                                             ; preds = %loadByte.exit.i.i
  call fastcc void @numerror(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7) #8
  unreachable

checknumsize.exit.i:                              ; preds = %loadByte.exit.i.i
  %i.bo = call i64 @luaZ_read(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef 4) #7
  %.not.i30.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i30.i, label %loadBlock.exit.i, label %bb.s

bb.s:                                             ; preds = %checknumsize.exit.i
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit.i:                                 ; preds = %checknumsize.exit.i
  store i64 17, ptr %i.m, align 8, !tbaa !22
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !47
  %.not59.i = icmp eq i32 %i.bp, -22136
  br i1 %.not59.i, label %checknumformat.exit.i, label %bb.t

bb.t:                                             ; preds = %loadBlock.exit.i
  call fastcc void @numerror(ptr noundef nonnull readonly %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7) #8
  unreachable

checknumformat.exit.i:                            ; preds = %loadBlock.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bq = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.br = add i64 %i.bq, -1
  store i64 %i.br, ptr %1, align 8, !tbaa !24
  %.not.i.i32.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i32.i, label %bb.u, label %.thread.i.i33.i

.thread.i.i33.i:                                  ; preds = %checknumformat.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !25
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i32
  br label %loadByte.exit.i34.i

bb.u:                                             ; preds = %checknumformat.exit.i
  %i.bx = call i32 @luaZ_fill(ptr noundef nonnull %1) #7 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.v, label %loadByte.exit.i34.i

bb.v:                                             ; preds = %bb.u
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i34.i:                              ; preds = %bb.u, %.thread.i.i33.i
  %i.bz = phi i32 [ %i.bw, %.thread.i.i33.i ], [ %i.bx, %bb.u ]
  store i64 18, ptr %i.m, align 8, !tbaa !22
  %i.ca = and i32 %i.bz, 255
  %.not.i35.i = icmp eq i32 %i.ca, 4
  br i1 %.not.i35.i, label %checknumsize.exit36.i, label %bb.w

bb.w:                                             ; preds = %loadByte.exit.i34.i
  call fastcc void @numerror(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #8
  unreachable

checknumsize.exit36.i:                            ; preds = %loadByte.exit.i34.i
  %i.cb = call i64 @luaZ_read(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef 4) #7
  %.not.i37.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i37.i, label %loadBlock.exit38.i, label %bb.x

bb.x:                                             ; preds = %checknumsize.exit36.i
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit38.i:                               ; preds = %checknumsize.exit36.i
  store i64 22, ptr %i.m, align 8, !tbaa !22
  %i.cc = load i32, ptr %i.d, align 4, !tbaa !47
  %.not60.i = icmp eq i32 %i.cc, 305419896
  br i1 %.not60.i, label %checknumformat.exit40.i, label %bb.y

bb.y:                                             ; preds = %loadBlock.exit38.i
  call fastcc void @numerror(ptr noundef nonnull readonly %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8) #8
  unreachable

checknumformat.exit40.i:                          ; preds = %loadBlock.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.cd = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.ce = add i64 %i.cd, -1
  store i64 %i.ce, ptr %1, align 8, !tbaa !24
  %.not.i.i41.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i41.i, label %bb.z, label %.thread.i.i42.i

.thread.i.i42.i:                                  ; preds = %checknumformat.exit40.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !25
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.cj = zext i8 %i.ci to i32
  br label %loadByte.exit.i43.i

bb.z:                                             ; preds = %checknumformat.exit40.i
  %i.ck = call i32 @luaZ_fill(ptr noundef nonnull %1) #7 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %bb.aa, label %loadByte.exit.i43.i

bb.aa:                                            ; preds = %bb.z
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i43.i:                              ; preds = %bb.z, %.thread.i.i42.i
  %i.cm = phi i32 [ %i.cj, %.thread.i.i42.i ], [ %i.ck, %bb.z ]
  store i64 23, ptr %i.m, align 8, !tbaa !22
  %i.cn = and i32 %i.cm, 255
  %.not.i44.i = icmp eq i32 %i.cn, 8
  br i1 %.not.i44.i, label %checknumsize.exit45.i, label %bb.ab

bb.ab:                                            ; preds = %loadByte.exit.i43.i
  call fastcc void @numerror(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #8
  unreachable

checknumsize.exit45.i:                            ; preds = %loadByte.exit.i43.i
  %i.co = call i64 @luaZ_read(ptr noundef nonnull %1, ptr noundef nonnull %i.e, i64 noundef 8) #7
  %.not.i46.i = icmp eq i64 %i.co, 0
  br i1 %.not.i46.i, label %loadBlock.exit47.i, label %bb.ac

bb.ac:                                            ; preds = %checknumsize.exit45.i
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit47.i:                               ; preds = %checknumsize.exit45.i
  store i64 31, ptr %i.m, align 8, !tbaa !22
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !48
  %.not61.i = icmp eq i64 %i.cp, -22136
  br i1 %.not61.i, label %checknumformat.exit49.i, label %bb.ad

bb.ad:                                            ; preds = %loadBlock.exit47.i
  call fastcc void @numerror(ptr noundef nonnull readonly %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9) #8
  unreachable

checknumformat.exit49.i:                          ; preds = %loadBlock.exit47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.cq = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %1, align 8, !tbaa !24
  %.not.i.i50.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i50.i, label %bb.ae, label %.thread.i.i51.i

.thread.i.i51.i:                                  ; preds = %checknumformat.exit49.i
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !25
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !9
  %i.cw = zext i8 %i.cv to i32
  br label %loadByte.exit.i52.i

bb.ae:                                            ; preds = %checknumformat.exit49.i
  %i.cx = call i32 @luaZ_fill(ptr noundef nonnull %1) #7 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.af, label %loadByte.exit.i52.i

bb.af:                                            ; preds = %bb.ae
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i52.i:                              ; preds = %bb.ae, %.thread.i.i51.i
  %i.cz = phi i32 [ %i.cw, %.thread.i.i51.i ], [ %i.cx, %bb.ae ]
  store i64 32, ptr %i.m, align 8, !tbaa !22
  %i.da = and i32 %i.cz, 255
  %.not.i53.i = icmp eq i32 %i.da, 8
  br i1 %.not.i53.i, label %checknumsize.exit54.i, label %bb.ag

bb.ag:                                            ; preds = %loadByte.exit.i52.i
  call fastcc void @numerror(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #8
  unreachable

checknumsize.exit54.i:                            ; preds = %loadByte.exit.i52.i
  %i.db = call i64 @luaZ_read(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i64 noundef 8) #7
  %.not.i55.i = icmp eq i64 %i.db, 0
  br i1 %.not.i55.i, label %loadBlock.exit56.i, label %bb.ah

bb.ah:                                            ; preds = %checknumsize.exit54.i
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit56.i:                               ; preds = %checknumsize.exit54.i
  store i64 40, ptr %i.m, align 8, !tbaa !22
  %i.dc = load double, ptr %i.f, align 8, !tbaa !27
  %6 = fcmp une double %i.dc, -3.705000e+02
  br i1 %6, label %bb.ai, label %checkHeader.exit

bb.ai:                                            ; preds = %loadBlock.exit56.i
  call fastcc void @numerror(ptr noundef nonnull readonly %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #8
  unreachable

checkHeader.exit:                                 ; preds = %loadBlock.exit56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.dd, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.de, align 8, !tbaa !29
  %i.df = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.dg = add i64 %i.df, -1
  store i64 %i.dg, ptr %1, align 8, !tbaa !24
  %.not.i26 = icmp eq i64 %i.df, 0
  br i1 %.not.i26, label %bb.aj, label %.thread.i

.thread.i:                                        ; preds = %checkHeader.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !25
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dl = zext i8 %i.dk to i32
  br label %loadByte.exit

bb.aj:                                            ; preds = %checkHeader.exit
  %i.dm = call i32 @luaZ_fill(ptr noundef nonnull %1) #7 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, -1
  br i1 %i.dn, label %bb.ak, label %loadByte.exit

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @error(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit:                                    ; preds = %.thread.i, %bb.aj
  %i.do = phi i32 [ %i.dl, %.thread.i ], [ %i.dm, %bb.aj ]
  store i64 41, ptr %i.m, align 8, !tbaa !22
  %i.dp = and i32 %i.do, 255
  %i.dq = call ptr @luaF_newLclosure(ptr noundef %0, i32 noundef %i.dp) #7 ; 6 uses
  call void @luaD_anchorobj(ptr noundef %0, ptr noundef %2, ptr noundef %i.dq) #7
  %i.dr = call ptr @luaF_newproto(ptr noundef %0) #7 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 3 uses
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 9
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !51
  %i.dv = and i8 %i.du, 32
  %.not = icmp eq i8 %i.dv, 0
  br i1 %.not, label %bb.an, label %bb.al

bb.al:                                            ; preds = %loadByte.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !41
  %i.dy = and i8 %i.dx, 24
  %.not24 = icmp eq i8 %i.dy, 0
  br i1 %.not24, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @luaC_barrier_(ptr noundef %0, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr) #7
  %.pre = load ptr, ptr %i.ds, align 8, !tbaa !50
  br label %bb.an

bb.an:                                            ; preds = %loadByte.exit, %bb.al, %bb.am
  %i.dz = phi ptr [ %i.dr, %loadByte.exit ], [ %i.dr, %bb.al ], [ %.pre, %bb.am ]
  call fastcc void @loadFunction(ptr noundef %5, ptr noundef %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 10
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !52
  %i.ec = zext i8 %i.eb to i32
  %i.ed = load ptr, ptr %i.ds, align 8, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !42
  %.not25 = icmp eq i32 %i.ef, %i.ec
  br i1 %.not25, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @error(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret ptr %i.dq
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden ptr @luaF_newLclosure(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaD_anchorobj(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @luaF_newproto(ptr noundef) local_unnamed_addr #2

declare hidden void @luaC_barrier_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @loadFunction(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 58 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.f ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !24
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.i, align 8, !tbaa !25
  %i.l = load i8, ptr %i.j, align 1, !tbaa !9
  %i.m = zext i8 %i.l to i32
  br label %loadByte.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @luaZ_fill(ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %loadByte.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i:                                ; preds = %bb.c, %.thread.i.i.i
  %i.p = phi i32 [ %i.m, %.thread.i.i.i ], [ %i.n, %bb.c ]
  %i.q = load i64, ptr %i.e, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1                          ; 2 uses
  store i64 %i.r, ptr %i.e, align 8, !tbaa !22
  %i.s = icmp ugt i64 %.0.i.i, 16777215
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %loadByte.exit.i.i
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.f:                                             ; preds = %loadByte.exit.i.i
  %i.t = trunc i32 %i.p to i8                     ; 2 uses
  %i.u = shl nuw nsw i64 %.0.i.i, 7
  %i.v = and i8 %i.t, 127
  %i.w = zext nneg i8 %i.v to i64
  %i.x = or disjoint i64 %i.u, %i.w               ; 2 uses
  %.not.i.i = icmp sgt i8 %i.t, -1
  br i1 %.not.i.i, label %loadInt.exit, label %bb.b

loadInt.exit:                                     ; preds = %bb.f
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.y, ptr %i.z, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %loadInt.exit
  %i.aa = phi i64 [ %i.r, %loadInt.exit ], [ %i.an, %bb.k ]
  %.0.i.i25 = phi i64 [ 0, %loadInt.exit ], [ %i.as, %bb.k ] ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !24
  %.not.i.i.i26 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i26, label %bb.h, label %.thread.i.i.i27

.thread.i.i.i27:                                  ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !25
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !9
  br label %loadByte.exit.i.i28

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i32 @luaZ_fill(ptr noundef nonnull %i.ab) #7 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.i, label %.loadByte.exit.i.i28_crit_edge

.loadByte.exit.i.i28_crit_edge:                   ; preds = %bb.h
  %.pre = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ak = trunc i32 %i.ai to i8
  br label %loadByte.exit.i.i28

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i28:                              ; preds = %.loadByte.exit.i.i28_crit_edge, %.thread.i.i.i27
  %i.al = phi i64 [ %i.aa, %.thread.i.i.i27 ], [ %.pre, %.loadByte.exit.i.i28_crit_edge ]
  %i.am = phi i8 [ %i.ah, %.thread.i.i.i27 ], [ %i.ak, %.loadByte.exit.i.i28_crit_edge ] ; 2 uses
  %i.an = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.an, ptr %i.e, align 8, !tbaa !22
  %i.ao = icmp ugt i64 %.0.i.i25, 16777215
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadByte.exit.i.i28
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
end_hunk_0
begin_hunk_1_@loadFunction:bb.a
loadByte.exit.i.i.i43:                            ; preds = %.loadByte.exit.i.i.i43_crit_edge, %.thread.i.i.i.i42
  %i.eu = phi i64 [ %i.ej, %.thread.i.i.i.i42 ], [ %.pre141, %.loadByte.exit.i.i.i43_crit_edge ]
  %i.ev = phi i8 [ %i.eq, %.thread.i.i.i.i42 ], [ %i.et, %.loadByte.exit.i.i.i43_crit_edge ] ; 3 uses
  %i.ew = add i64 %i.eu, 1                        ; 2 uses
  store i64 %i.ew, ptr %i.e, align 8, !tbaa !22
  %i.ex = icmp ugt i64 %.0.i.i.i40, 16777215
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %loadByte.exit.i.i.i43
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.ah:                                            ; preds = %loadByte.exit.i.i.i43
  %i.ey = shl nuw nsw i64 %.0.i.i.i40, 7
  %i.ez = and i8 %i.ev, 127
  %i.fa = zext nneg i8 %i.ez to i64               ; 2 uses
  %i.fb = or disjoint i64 %i.ey, %i.fa            ; 6 uses
  %.not.i.i.i44 = icmp sgt i8 %i.ev, -1
  br i1 %.not.i.i.i44, label %loadInt.exit.i45, label %loadCode.exit

loadInt.exit.i45:                                 ; preds = %bb.ah
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = load ptr, ptr %0, align 8, !tbaa !19
  %i.fe = shl nuw nsw i64 %i.fb, 4
  %i.ff = call ptr @luaM_malloc_(ptr noundef %i.fd, i64 noundef %i.fe, i32 noundef 0) #7 ; 10 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.fc, ptr %i.fh, align 4, !tbaa !65
  %.not.i46 = icmp eq i64 %i.fb, 0
  br i1 %.not.i46, label %loadConstants.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %loadInt.exit.i45
  %i.fi = shl nuw nsw i64 %.0.i.i.i40, 7
  %i.fj = add nsw i64 %i.fi, -1
  %i.fk = zext nneg i8 %i.ev to i64
  %i.fl = add nsw i64 %i.fj, %i.fk
  %xtraiter = and i64 %i.fa, 7                    ; 4 uses
  %i.fm = icmp ult i64 %i.fl, 7
  br i1 %i.fm, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub nsw i64 %i.fb, %xtraiter
  br label %.lr.ph.i

.lr.ph54.i.unr-lcssa:                             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph54.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph54.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.7, %.lr.ph54.i.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i.epil
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i8 0, ptr %i.fo, align 8, !tbaa !44
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph54.i, label %.lr.ph.i.epil, !llvm.loop !53

.lr.ph54.i:                                       ; preds = %.lr.ph.i.epil, %.lr.ph54.i.unr-lcssa
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  br label %bb.ai

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i8 0, ptr %i.fr, align 8, !tbaa !44
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i8 0, ptr %i.ft, align 8, !tbaa !44
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store i8 0, ptr %i.fv, align 8, !tbaa !44
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  store i8 0, ptr %i.fx, align 8, !tbaa !44
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  store i8 0, ptr %i.fz, align 8, !tbaa !44
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  store i8 0, ptr %i.gb, align 8, !tbaa !44
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  store i8 0, ptr %i.gd, align 8, !tbaa !44
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 120
  store i8 0, ptr %i.gf, align 8, !tbaa !44
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph54.i.unr-lcssa, label %.lr.ph.i

bb.ai:                                            ; preds = %bb.ay, %.lr.ph54.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph54.i ], [ %indvars.iv.next60.i, %bb.ay ] ; 2 uses
  %i.gg = load ptr, ptr %i.fg, align 8, !tbaa !64
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %indvars.iv59.i ; 9 uses
  %i.gi = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !24 ; 2 uses
  %i.gk = add i64 %i.gj, -1
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !24
  %.not.i.i47 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i47, label %bb.aj, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ai
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !25 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  store ptr %i.gn, ptr %i.gl, align 8, !tbaa !25
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !9
  %i.gp = zext i8 %i.go to i32
  br label %loadByte.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.gq = call i32 @luaZ_fill(ptr noundef nonnull %i.gi) #7 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, -1
  br i1 %i.gr, label %bb.ak, label %loadByte.exit.i

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i:                                  ; preds = %bb.aj, %.thread.i.i
  %i.gs = phi i32 [ %i.gp, %.thread.i.i ], [ %i.gq, %bb.aj ]
  %i.gt = load i64, ptr %i.e, align 8, !tbaa !22
  %i.gu = add i64 %i.gt, 1                        ; 2 uses
  store i64 %i.gu, ptr %i.e, align 8, !tbaa !22
  %i.gv = trunc i32 %i.gs to i8
  switch i8 %i.gv, label %bb.ax [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 17, label %bb.an
    i8 19, label %bb.ao
    i8 3, label %.preheader.i
    i8 4, label %bb.au
    i8 20, label %bb.au
  ]

bb.al:                                            ; preds = %loadByte.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i8 0, ptr %i.gw, align 8, !tbaa !44
  br label %bb.ay

bb.am:                                            ; preds = %loadByte.exit.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i8 1, ptr %i.gx, align 8, !tbaa !44
  br label %bb.ay

bb.an:                                            ; preds = %loadByte.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i8 17, ptr %i.gy, align 8, !tbaa !44
  br label %bb.ay

bb.ao:                                            ; preds = %loadByte.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.gz = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.ha = call i64 @luaZ_read(ptr noundef %i.gz, ptr noundef nonnull %i.b, i64 noundef 8) #7
  %.not.i.i43.i = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i43.i, label %loadNumber.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadNumber.exit.i:                                ; preds = %bb.ao
  %i.hb = load i64, ptr %i.e, align 8, !tbaa !22
  %i.hc = add i64 %i.hb, 8
  store i64 %i.hc, ptr %i.e, align 8, !tbaa !22
  %i.hd = load double, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store double %i.hd, ptr %i.gh, align 8, !tbaa !9
  %i.he = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i8 19, ptr %i.he, align 8, !tbaa !44
  br label %bb.ay

.preheader.i:                                     ; preds = %loadByte.exit.i, %bb.at
  %i.hf = phi i64 [ %i.hq, %bb.at ], [ %i.gu, %loadByte.exit.i ]
  %.0.i.i44.i = phi i64 [ %i.hv, %bb.at ], [ 0, %loadByte.exit.i ] ; 2 uses
  %i.hg = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !24 ; 2 uses
  %i.hi = add i64 %i.hh, -1
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !24
  %.not.i.i.i45.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i45.i, label %bb.aq, label %.thread.i.i.i46.i

.thread.i.i.i46.i:                                ; preds = %.preheader.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !25 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  store ptr %i.hl, ptr %i.hj, align 8, !tbaa !25
  %i.hm = load i8, ptr %i.hk, align 1, !tbaa !9
  br label %loadByte.exit.i.i47.i

bb.aq:                                            ; preds = %.preheader.i
  %i.hn = call i32 @luaZ_fill(ptr noundef nonnull %i.hg) #7 ; 2 uses
  %i.ho = icmp eq i32 %i.hn, -1
  br i1 %i.ho, label %bb.ar, label %.loadByte.exit.i.i47_crit_edge.i

.loadByte.exit.i.i47_crit_edge.i:                 ; preds = %bb.aq
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !22
  %2 = trunc i32 %i.hn to i8
  br label %loadByte.exit.i.i47.i

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i47.i:                            ; preds = %.loadByte.exit.i.i47_crit_edge.i, %.thread.i.i.i46.i
  %i.hp = phi i64 [ %i.hf, %.thread.i.i.i46.i ], [ %.pre.i, %.loadByte.exit.i.i47_crit_edge.i ]
  %3 = phi i8 [ %i.hm, %.thread.i.i.i46.i ], [ %2, %.loadByte.exit.i.i47_crit_edge.i ] ; 2 uses
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.e, align 8, !tbaa !22
  %i.hr = icmp ugt i64 %.0.i.i44.i, 144115188075855871
  br i1 %i.hr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %loadByte.exit.i.i47.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.at:                                            ; preds = %loadByte.exit.i.i47.i
  %i.hs = shl nuw i64 %.0.i.i44.i, 7
  %i.ht = and i8 %3, 127
  %i.hu = zext nneg i8 %i.ht to i64               ; 2 uses
  %i.hv = or disjoint i64 %i.hs, %i.hu            ; 2 uses
  %.not.i.i48.i = icmp sgt i8 %3, -1
  br i1 %.not.i.i48.i, label %loadInteger.exit.i, label %.preheader.i

loadInteger.exit.i:                               ; preds = %bb.at
  %i.hw = lshr i64 %i.hv, 1
  %4 = and i64 %i.hu, 1
  %sext.i.i = sub nsw i64 0, %4
  %.0.i.i48 = xor i64 %i.hw, %sext.i.i
  store i64 %.0.i.i48, ptr %i.gh, align 8, !tbaa !9
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i8 3, ptr %i.hx, align 8, !tbaa !44
  br label %bb.ay

bb.au:                                            ; preds = %loadByte.exit.i, %loadByte.exit.i
  call fastcc void @loadString(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fp)
  %i.hy = load ptr, ptr %i.fp, align 8, !tbaa !67 ; 3 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #8
  unreachable

bb.aw:                                            ; preds = %bb.au
  store ptr %i.hy, ptr %i.gh, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !46
  %i.ic = or i8 %i.ib, 64
  %i.id = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i8 %i.ic, ptr %i.id, align 8, !tbaa !44
  store ptr null, ptr %i.fp, align 8, !tbaa !67
  br label %bb.ay

bb.ax:                                            ; preds = %loadByte.exit.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #8
  unreachable

bb.ay:                                            ; preds = %bb.aw, %loadInteger.exit.i, %loadNumber.exit.i, %bb.an, %bb.am, %bb.al
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next60.i, %i.fb
  br i1 %exitcond64.not.i, label %loadConstants.exit.preheader, label %bb.ai

loadConstants.exit.preheader:                     ; preds = %bb.ay, %loadInt.exit.i45
  br label %loadConstants.exit

loadConstants.exit:                               ; preds = %loadConstants.exit.preheader, %bb.bc
  %.0.i.i.i49 = phi i64 [ %i.iw, %bb.bc ], [ 0, %loadConstants.exit.preheader ] ; 3 uses
  %i.ie = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !24 ; 2 uses
  %i.ig = add i64 %i.if, -1
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !24
  %.not.i.i.i.i50 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i.i.i50, label %bb.az, label %.thread.i.i.i.i51

.thread.i.i.i.i51:                                ; preds = %loadConstants.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !25 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  store ptr %i.ij, ptr %i.ih, align 8, !tbaa !25
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !9
  %i.il = zext i8 %i.ik to i32
  br label %loadByte.exit.i.i.i52

bb.az:                                            ; preds = %loadConstants.exit
  %i.im = call i32 @luaZ_fill(ptr noundef nonnull %i.ie) #7 ; 2 uses
  %i.in = icmp eq i32 %i.im, -1
  br i1 %i.in, label %bb.ba, label %loadByte.exit.i.i.i52

bb.ba:                                            ; preds = %bb.az
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i.i52:                            ; preds = %bb.az, %.thread.i.i.i.i51
  %i.io = phi i32 [ %i.il, %.thread.i.i.i.i51 ], [ %i.im, %bb.az ] ; 2 uses
  %i.ip = load i64, ptr %i.e, align 8, !tbaa !22
  %i.iq = add i64 %i.ip, 1
  store i64 %i.iq, ptr %i.e, align 8, !tbaa !22
  %i.ir = icmp ugt i64 %.0.i.i.i49, 16777215
  br i1 %i.ir, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %loadByte.exit.i.i.i52
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.bc:                                            ; preds = %loadByte.exit.i.i.i52
  %i.is = trunc i32 %i.io to i8                   ; 2 uses
  %i.it = shl nuw nsw i64 %.0.i.i.i49, 7
  %i.iu = and i8 %i.is, 127
  %i.iv = zext nneg i8 %i.iu to i64               ; 2 uses
  %i.iw = or disjoint i64 %i.it, %i.iv            ; 6 uses
  %.not.i.i.i53 = icmp sgt i8 %i.is, -1
  br i1 %.not.i.i.i53, label %loadInt.exit.i54, label %loadConstants.exit

loadInt.exit.i54:                                 ; preds = %bb.bc
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %i.iy = load ptr, ptr %0, align 8, !tbaa !19
  %i.iz = shl nuw nsw i64 %i.iw, 4
  %i.ja = call ptr @luaM_malloc_(ptr noundef %i.iy, i64 noundef %i.iz, i32 noundef 0) #7 ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !68
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.ix, ptr %i.jc, align 8, !tbaa !42
  %.not.i55 = icmp eq i64 %i.iw, 0
  br i1 %.not.i55, label %loadUpvalues.exit.preheader, label %.lr.ph.i56.preheader

.lr.ph.i56.preheader:                             ; preds = %loadInt.exit.i54
  %i.jd = shl nuw nsw i64 %.0.i.i.i49, 7
  %i.je = add nsw i64 %i.jd, -1
  %i.jf = and i32 %i.io, 127
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = add nsw i64 %i.je, %i.jg
  %xtraiter255 = and i64 %i.iv, 3                 ; 4 uses
  %i.ji = icmp ult i64 %i.jh, 3
  br i1 %i.ji, label %.lr.ph.i56.epil.preheader, label %.lr.ph.i56.preheader.new

.lr.ph.i56.preheader.new:                         ; preds = %.lr.ph.i56.preheader
  %unroll_iter259 = sub nsw i64 %i.iw, %xtraiter255
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %.lr.ph.i56.preheader.new
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.i56.preheader.new ], [ %indvars.iv.next.i58.3, %.lr.ph.i56 ] ; 5 uses
  %niter260 = phi i64 [ 0, %.lr.ph.i56.preheader.new ], [ %niter260.next.3, %.lr.ph.i56 ]
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %indvars.iv.i57
  store ptr null, ptr %i.jj, align 8, !tbaa !70
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %indvars.iv.i57
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store ptr null, ptr %i.jl, align 8, !tbaa !70
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %indvars.iv.i57
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store ptr null, ptr %i.jn, align 8, !tbaa !70
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %indvars.iv.i57
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  store ptr null, ptr %i.jp, align 8, !tbaa !70
  %indvars.iv.next.i58.3 = add nuw nsw i64 %indvars.iv.i57, 4 ; 2 uses
  %niter260.next.3 = add i64 %niter260, 4         ; 2 uses
  %niter260.ncmp.3 = icmp eq i64 %niter260.next.3, %unroll_iter259
  br i1 %niter260.ncmp.3, label %.lr.ph31.i.preheader.unr-lcssa, label %.lr.ph.i56

.lr.ph31.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i56
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %.lr.ph31.i.preheader, label %.lr.ph.i56.epil.preheader

.lr.ph.i56.epil.preheader:                        ; preds = %.lr.ph31.i.preheader.unr-lcssa, %.lr.ph.i56.preheader
  %indvars.iv.i57.epil.init = phi i64 [ 0, %.lr.ph.i56.preheader ], [ %indvars.iv.next.i58.3, %.lr.ph31.i.preheader.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter255, 0
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %.lr.ph.i56.epil

.lr.ph.i56.epil:                                  ; preds = %.lr.ph.i56.epil, %.lr.ph.i56.epil.preheader
  %indvars.iv.i57.epil = phi i64 [ %indvars.iv.next.i58.epil, %.lr.ph.i56.epil ], [ %indvars.iv.i57.epil.init, %.lr.ph.i56.epil.preheader ] ; 2 uses
  %epil.iter256 = phi i64 [ %epil.iter256.next, %.lr.ph.i56.epil ], [ 0, %.lr.ph.i56.epil.preheader ]
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %indvars.iv.i57.epil
  store ptr null, ptr %i.jq, align 8, !tbaa !70
  %indvars.iv.next.i58.epil = add nuw nsw i64 %indvars.iv.i57.epil, 1
  %epil.iter256.next = add i64 %epil.iter256, 1   ; 2 uses
  %epil.iter256.cmp.not = icmp eq i64 %epil.iter256.next, %xtraiter255
  br i1 %epil.iter256.cmp.not, label %.lr.ph31.i.preheader, label %.lr.ph.i56.epil, !llvm.loop !54

.lr.ph31.i.preheader:                             ; preds = %.lr.ph.i56.epil, %.lr.ph31.i.preheader.unr-lcssa
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %loadByte.exit28.i
  %i.jr = phi ptr [ %i.li, %loadByte.exit28.i ], [ %i.ja, %.lr.ph31.i.preheader ]
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %loadByte.exit28.i ], [ 0, %.lr.ph31.i.preheader ] ; 4 uses
  %i.js = load ptr, ptr %i.d, align 8, !tbaa !20  ; 5 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !24 ; 2 uses
  %i.ju = add i64 %i.jt, -1                       ; 2 uses
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !24
  %.not.i.i60 = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i60, label %bb.bd, label %.thread.i.i61

.thread.i.i61:                                    ; preds = %.lr.ph31.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !25 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store ptr %i.jx, ptr %i.jv, align 8, !tbaa !25
  %i.jy = load i8, ptr %i.jw, align 1, !tbaa !9
  br label %loadByte.exit.i62

bb.bd:                                            ; preds = %.lr.ph31.i
  %i.jz = call i32 @luaZ_fill(ptr noundef nonnull %i.js) #7 ; 2 uses
  %i.ka = icmp eq i32 %i.jz, -1
  br i1 %i.ka, label %bb.be, label %.loadByte.exit_crit_edge.i

.loadByte.exit_crit_edge.i:                       ; preds = %bb.bd
  %.pre.i63 = load ptr, ptr %i.jb, align 8, !tbaa !68
  %.pre40.i = load ptr, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %.pre41.i = load i64, ptr %.pre40.i, align 8, !tbaa !24
  %i.kb = trunc i32 %i.jz to i8
  br label %loadByte.exit.i62

bb.be:                                            ; preds = %bb.bd
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i62:                                ; preds = %.loadByte.exit_crit_edge.i, %.thread.i.i61
  %i.kc = phi ptr [ %i.jr, %.thread.i.i61 ], [ %.pre.i63, %.loadByte.exit_crit_edge.i ] ; 2 uses
  %i.kd = phi i64 [ %i.ju, %.thread.i.i61 ], [ %.pre41.i, %.loadByte.exit_crit_edge.i ] ; 2 uses
  %i.ke = phi ptr [ %i.js, %.thread.i.i61 ], [ %.pre40.i, %.loadByte.exit_crit_edge.i ] ; 4 uses
  %i.kf = phi i8 [ %i.jy, %.thread.i.i61 ], [ %i.kb, %.loadByte.exit_crit_edge.i ]
  %i.kg = load i64, ptr %i.e, align 8, !tbaa !22
  %i.kh = add i64 %i.kg, 1                        ; 2 uses
  store i64 %i.kh, ptr %i.e, align 8, !tbaa !22
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv34.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i8 %i.kf, ptr %i.kj, align 8, !tbaa !71
  %i.kk = add i64 %i.kd, -1                       ; 2 uses
end_hunk_1
