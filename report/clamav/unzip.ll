inline.NumInlined: 28
inline.NumDeleted: 10
begin_hunk_0_@parse_local_file_header:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !47
  %i.cu = load i16, ptr %i.al, align 1, !tbaa !34
  %i.cv = and i16 %i.cu, 1
  %i.cw = zext nneg i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !48
  br label %bb.ak

bb.ab:                                            ; preds = %bb.x
  %.not168 = icmp eq i32 %.0133, 0
  br i1 %.not168, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51) #13
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !17  ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.db = getelementptr i8, ptr %i.cy, i64 16
  %.val.i177 = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.dc = getelementptr i8, ptr %i.cy, i64 72
  %.val4.i178 = load i64, ptr %i.dc, align 8, !tbaa !37
  %i.dd = ptrtoint ptr %i.cb to i64
  %i.de = ptrtoint ptr %.val.i177 to i64
  %i.df = add i64 %.val4.i178, %i.de
  %i.dg = sub i64 %i.dd, %i.df
  %i.dh = call ptr %i.da(ptr noundef %i.cy, i64 noundef %i.dg, i64 noundef range(i64 0, 4294967296) %i.cd, i32 noundef 0) #13, !inline_history !38 ; 5 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52) #13
  br label %bb.au

bb.af:                                            ; preds = %bb.ad
  %i.dj = load i16, ptr %i.al, align 1, !tbaa !34 ; 2 uses
  %i.dk = and i16 %i.dj, 1
  %.not169 = icmp eq i16 %i.dk, 0
  br i1 %.not169, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.dm = call fastcc i32 @zdecrypt(ptr noundef nonnull %i.dh, i32 noundef %.0133, i32 noundef %.0132, ptr noundef nonnull %i.h, ptr noundef %2, ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.dl) ; 3 uses
  %.not171 = icmp eq i32 %i.dm, 0
  br i1 %.not171, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.53, i32 noundef %i.dm) #13
  br label %bb.au

bb.ai:                                            ; preds = %bb.af
  %i.dn = zext i32 %.0132 to i64
  %i.do = load i16, ptr %i.av, align 1, !tbaa !34
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.dq = call fastcc i32 @unz(ptr noundef nonnull %i.dh, i64 noundef %i.cd, i64 noundef %i.dn, i16 noundef zeroext %i.do, i16 noundef zeroext %i.dj, ptr noundef %2, ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.dp, i1 noundef zeroext false) ; 3 uses
  %.not170 = icmp eq i32 %i.dq, 0
  br i1 %.not170, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.dq) #13
  br label %bb.au

bb.ak:                                            ; preds = %bb.ac, %bb.ai, %bb.ag, %bb.aa
  %.0 = phi ptr [ %i.cb, %bb.aa ], [ %i.dh, %bb.ag ], [ %i.dh, %bb.ai ], [ %i.cb, %bb.ac ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0, i64 %i.cd ; 2 uses
  %i.ds = load i16, ptr %i.al, align 1, !tbaa !34
  %i.dt = and i16 %i.ds, 8
  %.not173 = icmp eq i16 %i.dt, 0
  br i1 %.not173, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = sub i64 %i.cc, %i.cd
  %i.dv = icmp ult i64 %i.du, 12
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55) #13
  br label %bb.au

bb.an:                                            ; preds = %bb.al
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !17  ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31
  %i.dz = getelementptr i8, ptr %i.dw, i64 16
  %.val.i179 = load ptr, ptr %i.dz, align 8, !tbaa !36
  %i.ea = getelementptr i8, ptr %i.dw, i64 72
  %.val4.i180 = load i64, ptr %i.ea, align 8, !tbaa !37
  %i.eb = ptrtoint ptr %i.dr to i64
  %i.ec = ptrtoint ptr %.val.i179 to i64
  %i.ed = add i64 %.val4.i180, %i.ec
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = call ptr %i.dy(ptr noundef %i.dw, i64 noundef %i.ee, i64 noundef 4, i32 noundef 0) #13, !inline_history !38 ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55) #13
  br label %bb.au

bb.ap:                                            ; preds = %bb.an
  %i.eh = load i32, ptr %i.ef, align 1, !tbaa !34
  %i.ei = icmp eq i32 %i.eh, 134695760
  br i1 %i.ei, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.56) #13
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1 = phi ptr [ %i.ej, %bb.aq ], [ %i.ef, %bb.ap ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.1, i64 12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ak
  %.2 = phi ptr [ %i.ek, %bb.ar ], [ %i.dr, %bb.ak ]
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.el = ptrtoint ptr %.2 to i64
  %i.em = ptrtoint ptr %i.h to i64
  %i.en = sub i64 %i.el, %i.em
  store i64 %i.en, ptr %8, align 8, !tbaa !15
  br label %bb.au

.thread:                                          ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40) #13
  br label %bb.aw

bb.au:                                            ; preds = %bb.e, %bb.g, %bb.m, %bb.u, %bb.w, %bb.ae, %bb.ah, %bb.aj, %bb.am, %bb.ao, %bb.k, %bb.p, %bb.r, %bb.at, %bb.as
  %.0134.ph = phi i32 [ 0, %bb.as ], [ 0, %bb.at ], [ %i.dq, %bb.aj ], [ %i.dm, %bb.ah ], [ 27, %bb.ae ], [ 27, %bb.r ], [ 27, %bb.ao ], [ 27, %bb.am ], [ 27, %bb.w ], [ 27, %bb.u ], [ %i.bj, %bb.k ], [ 27, %bb.m ], [ %i.bt, %bb.p ], [ 27, %bb.g ], [ 26, %bb.e ] ; 2 uses
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !49
  call void %i.eq(ptr noundef %i.eo, i64 noundef %i.e, i64 noundef 30) #13, !inline_history !50
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.not175 = icmp eq ptr %.pre9, null
  br i1 %.not175, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %.pre9) #13
  br label %bb.aw

bb.aw:                                            ; preds = %.thread, %bb.av, %bb.au
  %.0134330 = phi i32 [ 27, %.thread ], [ %.0134.ph, %bb.av ], [ %.0134.ph, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0134330
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @index_the_central_directory(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = icmp eq ptr %2, null
  %i.d = icmp eq ptr %3, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2) #13
  br label %.thread179

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !51
  store i64 0, ptr %3, align 8, !tbaa !15
  %i.e = tail call noalias dereferenceable_or_null(3200) ptr @calloc(i64 noundef 1, i64 noundef 3200) #15 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread179, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #13
  %i.g = call fastcc i32 @parse_central_directory_file_header(ptr noundef %0, i64 noundef %i.b, i64 noundef 1, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef %i.a)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.split.thread, label %.lr.ph

.split.thread:                                    ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #13
  br label %.thread179

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %i.j = phi i64 [ 1, %.lr.ph ], [ %i.ae, %bb.m ] ; 10 uses
  %.0102202 = phi i64 [ 1, %.lr.ph ], [ %.1103, %bb.m ] ; 3 uses
  %.0107201 = phi i64 [ %i.b, %.lr.ph ], [ %i.l, %bb.m ]
  %.0113200 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.m ] ; 2 uses
  %.0116199 = phi ptr [ %i.e, %.lr.ph ], [ %.2118, %bb.m ] ; 11 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not213.not.not.not.not = icmp ne i64 %i.k, 0  ; 5 uses
  br i1 %.not213.not.not.not.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %i.k, %.0107201                  ; 2 uses
  %i.m = tail call i32 @cli_checktimelimit(ptr noundef %0) #13
  %.not = icmp eq i32 %i.m, 0
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %i.p) #13
  br label %.preheader

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74   ; 3 uses
  %.not136 = icmp eq i32 %i.r, 0
  %i.s = zext i32 %i.r to i64
  %.not137 = icmp ult i64 %i.j, %i.s
  %or.cond146 = or i1 %.not136, %.not137
  br i1 %or.cond146, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.r) #13
  tail call void @cli_append_potentially_unwanted_if_heur_exceedsmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #13
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.t = mul i64 %.0102202, 100
  %i.u = add i64 %.0113200, 2
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #13
  %i.w = add i64 %.0102202, 1                     ; 3 uses
  %i.x = mul i64 %i.w, 3200
  %i.y = tail call ptr @cli_max_realloc(ptr noundef %.0116199, i64 noundef %i.x) #13 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.j
  %i.ab = mul i64 %i.w, 100
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl i64 %i.ac, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.2118 = phi ptr [ %i.y, %bb.l ], [ %.0116199, %bb.j ] ; 3 uses
  %.1103 = phi i64 [ %i.w, %bb.l ], [ %.0102202, %bb.j ]
  %i.ae = add i64 %i.j, 1                         ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.2118, i64 %i.j
  %i.ag = call fastcc i32 @parse_central_directory_file_header(ptr noundef nonnull %0, i64 noundef %i.l, i64 noundef %i.ae, ptr noundef null, ptr noundef %i.af, ptr noundef %i.a)
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %.preheader, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.i
  %.1114 = phi i64 [ %i.j, %bb.i ], [ %.0113200, %bb.e ] ; 8 uses
  %i.ai = icmp ugt i64 %.1114, 1
  br i1 %i.ai, label %bb.n, label %.thread166

bb.n:                                             ; preds = %.loopexit
  tail call void @cli_qsort(ptr noundef %.0116199, i64 noundef %.1114, i64 noundef 32, ptr noundef nonnull @sort_by_file_offset) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.z
  %i.aj = add nuw i64 %.0106210, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %.1114
  br i1 %exitcond.not, label %.thread166, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0106210 = phi i64 [ 1, %bb.n ], [ %i.aj, %bb.o ] ; 2 uses
  %.0110209 = phi i32 [ 0, %bb.n ], [ %.1111, %bb.o ] ; 2 uses
  %i.ak = getelementptr [32 x i8], ptr %.0116199, i64 %.0106210 ; 7 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -32
  %i.am = getelementptr i8, ptr %i.ak, i64 -28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 -24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !8  ; 2 uses
  %i.aq = add i32 %i.ap, %i.an                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !44 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !8  ; 2 uses
  %i.av = add i32 %i.au, %i.as                    ; 2 uses
  %i.aw = xor i32 %i.aq, -1
  %i.ax = load i32, ptr %i.al, align 8, !tbaa !43 ; 7 uses
  %i.ay = icmp ugt i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = xor i32 %i.av, -1
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !43 ; 6 uses
  %i.bb = icmp ugt i32 %i.ba, %i.az
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #13
  br label %.preheader

bb.s:                                             ; preds = %bb.q
  %i.bc = add i32 %i.ax, %i.aq                    ; 2 uses
  %.not138 = icmp uge i32 %i.ba, %i.ax
  %i.bd = add i32 %i.ba, 2
  %i.be = icmp ult i32 %i.bd, %i.bc
  %or.cond148 = and i1 %.not138, %i.be
  br i1 %or.cond148, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add i32 %i.ba, %i.av
  %.not139 = icmp uge i32 %i.ax, %i.ba
  %i.bg = add i32 %i.ax, 2
  %i.bh = icmp ult i32 %i.bg, %i.bf
  %or.cond150 = select i1 %.not139, i1 %i.bh, i1 false
  br i1 %or.cond150, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = add i32 %.0110209, 1                    ; 3 uses
  %i.bj = icmp eq i32 %i.ba, %i.ax
  %i.bk = icmp eq i32 %i.as, %i.an
  %or.cond182 = select i1 %i.bj, i1 %i.bk, i1 false
  %i.bl = icmp eq i32 %i.au, %i.ap
  %or.cond183 = select i1 %or.cond182, i1 %i.bl, i1 false
  br i1 %or.cond183, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.ax) #13
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.bc) #13
  %i.bm = load i32, ptr %i.ak, align 8, !tbaa !43
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, i32 noundef %i.bm) #13
  %i.bn = icmp ugt i32 %i.bi, 5
  br i1 %i.bn, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !40
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !75
  %i.br = and i32 %i.bq, 4
  %.not140 = icmp eq i32 %i.br, 0
  br i1 %.not140, label %.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = tail call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #13 ; 2 uses
  %.not141 = icmp eq i32 %i.bs, 0
  %spec.select = select i1 %.not141, i32 26, i32 %i.bs
  br label %.preheader

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.t
  %.1111 = phi i32 [ %i.bi, %bb.v ], [ %i.bi, %bb.w ], [ %.0110209, %bb.t ]
  %i.bt = tail call i32 @cli_checktimelimit(ptr noundef %0) #13
  %.not142 = icmp eq i32 %i.bt, 0
  br i1 %.not142, label %bb.o, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !54
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %i.bw) #13
  br label %.preheader

.thread166:                                       ; preds = %bb.o, %.loopexit
  store ptr %.0116199, ptr %2, align 8, !tbaa !51
  store i64 %.1114, ptr %3, align 8, !tbaa !15
  br label %.thread179

.preheader:                                       ; preds = %bb.k, %bb.m, %bb.g, %bb.r, %bb.aa, %bb.x, %bb.y
  %.0116197 = phi ptr [ %.0116199, %bb.x ], [ %.0116199, %bb.y ], [ %.0116199, %bb.g ], [ %.0116199, %bb.aa ], [ %.0116199, %bb.r ], [ %.0116199, %bb.k ], [ %.2118, %bb.m ] ; 2 uses
  %.6165 = phi i32 [ 26, %bb.x ], [ %spec.select, %bb.y ], [ 21, %bb.g ], [ 21, %bb.aa ], [ 26, %bb.r ], [ 20, %bb.k ], [ 1, %bb.m ]
  %.1109164 = phi i1 [ %.not213.not.not.not.not, %bb.x ], [ %.not213.not.not.not.not, %bb.y ], [ false, %bb.g ], [ %.not213.not.not.not.not, %bb.aa ], [ %.not213.not.not.not.not, %bb.r ], [ false, %bb.m ], [ false, %bb.k ]
  %.2115163 = phi i64 [ %.1114, %bb.x ], [ %.1114, %bb.y ], [ %i.j, %bb.g ], [ %.1114, %bb.aa ], [ %.1114, %bb.r ], [ %i.j, %bb.m ], [ %i.j, %bb.k ] ; 2 uses
  %.not214 = icmp eq i64 %.2115163, 0
  br i1 %.not214, label %.split, label %.lr.ph212

.lr.ph212:                                        ; preds = %.preheader, %bb.ac
  %.0211 = phi i64 [ %i.ca, %bb.ac ], [ 0, %.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %.0116197, i64 %.0211
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %.not145 = icmp eq ptr %i.bz, null
  br i1 %.not145, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph212
  tail call void @free(ptr noundef nonnull %i.bz) #13
  store ptr null, ptr %i.by, align 8, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph212, %bb.ab
  %i.ca = add nuw i64 %.0211, 1                   ; 2 uses
  %exitcond231.not = icmp eq i64 %i.ca, %.2115163
  br i1 %exitcond231.not, label %.split, label %.lr.ph212

.split:                                           ; preds = %bb.ac, %.preheader
  tail call void @free(ptr noundef nonnull %.0116197) #13
  %spec.select271 = select i1 %.1109164, i32 25, i32 %.6165
  br label %.thread179

.thread179:                                       ; preds = %.split, %.split.thread, %bb.b, %bb.c, %.thread166
  %.0100 = phi i32 [ 0, %.thread166 ], [ 34, %bb.b ], [ 1, %.split.thread ], [ 20, %bb.c ], [ %spec.select271, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0100
}

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_central_directory_file_header(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8, !tbaa !15
  %i.b = tail call i32 @cli_checktimelimit(ptr noundef %0) #13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57, i32 noundef %i.f) #13
  br label %.thread9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = tail call ptr %i.j(ptr noundef %i.h, i64 noundef %1, i64 noundef 46, i32 noundef 1) #13, !inline_history !33 ; 14 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.58) #13
  br label %.thread9

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 1, !tbaa !34
end_hunk_0
