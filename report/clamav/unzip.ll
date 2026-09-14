Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unzip?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
begin_hunk_0_@parse_local_file_header:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !45
  %i.cu = load i16, ptr %i.al, align 1, !tbaa !35
  %i.cv = and i16 %i.cu, 1
  %i.cw = zext nneg i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !46
  br label %bb.ak

bb.ab:                                            ; preds = %bb.x
  %.not168 = icmp eq i32 %.0133, 0
  br i1 %.not168, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51) #13
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !32  ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !34
  %i.db = getelementptr i8, ptr %i.cy, i64 16
  %.val.i177 = load ptr, ptr %i.db, align 8, !tbaa !37
  %i.dc = getelementptr i8, ptr %i.cy, i64 72
  %.val4.i178 = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.dd = ptrtoint ptr %i.cb to i64
  %i.de = ptrtoint ptr %.val.i177 to i64
  %i.df = add i64 %.val4.i178, %i.de
  %i.dg = sub i64 %i.dd, %i.df
  %i.dh = call ptr %i.da(ptr noundef %i.cy, i64 noundef %i.dg, i64 noundef range(i64 0, 4294967296) %i.cd, i32 noundef 0) #13, !inline_history !80 ; 5 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52) #13
  br label %bb.au

bb.af:                                            ; preds = %bb.ad
  %i.dj = load i16, ptr %i.al, align 1, !tbaa !35 ; 2 uses
  %i.dk = and i16 %i.dj, 1
  %.not169 = icmp eq i16 %i.dk, 0
  br i1 %.not169, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.dm = call fastcc i32 @zdecrypt(ptr noundef nonnull %i.dh, i32 noundef %.0133, i32 noundef %.0132, ptr noundef nonnull %i.h, ptr noundef %2, ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.dl) ; 3 uses
  %.not171 = icmp eq i32 %i.dm, 0
  br i1 %.not171, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.53, i32 noundef %i.dm) #13
  br label %bb.au

bb.ai:                                            ; preds = %bb.af
  %i.dn = zext i32 %.0132 to i64
  %i.do = load i16, ptr %i.av, align 1, !tbaa !35
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.dq = call fastcc i32 @unz(ptr noundef nonnull %i.dh, i64 noundef %i.cd, i64 noundef %i.dn, i16 noundef zeroext %i.do, i16 noundef zeroext %i.dj, ptr noundef %2, ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.dp, i1 noundef zeroext false) ; 3 uses
  %.not170 = icmp eq i32 %i.dq, 0
  br i1 %.not170, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.dq) #13
  br label %bb.au

bb.ak:                                            ; preds = %bb.ac, %bb.ai, %bb.ag, %bb.aa
  %.0 = phi ptr [ %i.cb, %bb.aa ], [ %i.dh, %bb.ag ], [ %i.dh, %bb.ai ], [ %i.cb, %bb.ac ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0, i64 %i.cd ; 2 uses
  %i.ds = load i16, ptr %i.al, align 1, !tbaa !35
  %i.dt = and i16 %i.ds, 8
  %.not173 = icmp eq i16 %i.dt, 0
  br i1 %.not173, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = sub nuw i64 %i.cc, %i.cd
  %i.dv = icmp ult i64 %i.du, 12
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55) #13
  br label %bb.au

bb.an:                                            ; preds = %bb.al
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !32  ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !34
  %i.dz = getelementptr i8, ptr %i.dw, i64 16
  %.val.i179 = load ptr, ptr %i.dz, align 8, !tbaa !37
  %i.ea = getelementptr i8, ptr %i.dw, i64 72
  %.val4.i180 = load i64, ptr %i.ea, align 8, !tbaa !38
  %i.eb = ptrtoint ptr %i.dr to i64
  %i.ec = ptrtoint ptr %.val.i179 to i64
  %i.ed = add i64 %.val4.i180, %i.ec
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = call ptr %i.dy(ptr noundef %i.dw, i64 noundef %i.ee, i64 noundef 4, i32 noundef 0) #13, !inline_history !80 ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55) #13
  br label %bb.au

bb.ap:                                            ; preds = %bb.an
  %i.eh = load i32, ptr %i.ef, align 1, !tbaa !35
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
  store i64 %i.en, ptr %8, align 8, !tbaa !18
  br label %bb.au

.thread:                                          ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40) #13
  br label %bb.aw

bb.au:                                            ; preds = %bb.e, %bb.g, %bb.m, %bb.u, %bb.w, %bb.ae, %bb.ah, %bb.aj, %bb.am, %bb.ao, %bb.k, %bb.p, %bb.r, %bb.at, %bb.as
  %.0134.ph = phi i32 [ 0, %bb.as ], [ 0, %bb.at ], [ %i.dq, %bb.aj ], [ %i.dm, %bb.ah ], [ 27, %bb.ae ], [ 27, %bb.r ], [ 27, %bb.ao ], [ 27, %bb.am ], [ 27, %bb.w ], [ 27, %bb.u ], [ %i.bj, %bb.k ], [ 27, %bb.m ], [ %i.bt, %bb.p ], [ 27, %bb.g ], [ 26, %bb.e ] ; 2 uses
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !47
  call void %i.eq(ptr noundef %i.eo, i64 noundef %i.e, i64 noundef 30) #13, !inline_history !81
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
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
  store ptr null, ptr %2, align 8, !tbaa !49
  store i64 0, ptr %3, align 8, !tbaa !18
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
  %4 = phi i64 [ 1, %.lr.ph ], [ %i.ad, %bb.m ]   ; 10 uses
  %.0101202.a = phi i64 [ %i.b, %.lr.ph ], [ %i.k, %bb.m ]
  %.0106201 = phi i64 [ 0, %.lr.ph ], [ %4, %bb.m ] ; 2 uses
  %.0109200 = phi ptr [ %i.e, %.lr.ph ], [ %.2111, %bb.m ] ; 11 uses
  %.0113199 = phi i64 [ 1, %.lr.ph ], [ %.1114, %bb.m ] ; 3 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not213.not.not.not.not = icmp ne i64 %i.j, 0  ; 5 uses
  br i1 %.not213.not.not.not.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.k = add i64 %i.j, %.0101202.a                ; 2 uses
  %i.l = tail call i32 @cli_checktimelimit(ptr noundef %0) #13
  %.not = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !70
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %i.o) #13
  br label %.preheader

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !71   ; 3 uses
  %.not136 = icmp eq i32 %i.q, 0
  %i.r = zext i32 %i.q to i64
  %.not137 = icmp ult i64 %4, %i.r
  %or.cond146 = or i1 %.not136, %.not137
  br i1 %or.cond146, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.q) #13
  tail call void @cli_append_potentially_unwanted_if_heur_exceedsmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #13
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.s = mul i64 %.0113199, 100
  %i.t = add i64 %.0106201, 2
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #13
  %i.v = add i64 %.0113199, 1                     ; 3 uses
  %i.w = mul i64 %i.v, 3200
  %i.x = tail call ptr @cli_max_realloc(ptr noundef %.0109200, i64 noundef %i.w) #13 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %4
  %i.aa = mul i64 %i.v, 100
  %i.ab = sub i64 %i.aa, %4
  %i.ac = shl i64 %i.ab, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.1114 = phi i64 [ %i.v, %bb.l ], [ %.0113199, %bb.j ]
  %.2111 = phi ptr [ %i.x, %bb.l ], [ %.0109200, %bb.j ] ; 3 uses
  %i.ad = add i64 %4, 1                           ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.2111, i64 %4
  %i.af = call fastcc i32 @parse_central_directory_file_header(ptr noundef nonnull %0, i64 noundef %i.k, i64 noundef %i.ad, ptr noundef null, ptr noundef %i.ae, ptr noundef %i.a)
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.preheader, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.i
  %.1107 = phi i64 [ %4, %bb.i ], [ %.0106201, %bb.e ] ; 8 uses
  %i.ah = icmp ugt i64 %.1107, 1
  br i1 %i.ah, label %bb.n, label %.thread166

bb.n:                                             ; preds = %.loopexit
  tail call void @cli_qsort(ptr noundef %.0109200, i64 noundef %.1107, i64 noundef 32, ptr noundef nonnull @sort_by_file_offset) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.z
  %i.ai = add nuw i64 %.0112209, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %.1107
  br i1 %exitcond.not, label %.thread166, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0104210 = phi i32 [ 0, %bb.n ], [ %.1105, %bb.o ] ; 2 uses
  %.0112209 = phi i64 [ 1, %bb.n ], [ %i.ai, %bb.o ] ; 2 uses
  %i.aj = getelementptr [32 x i8], ptr %.0109200, i64 %.0112209 ; 7 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -32
  %i.al = getelementptr i8, ptr %i.aj, i64 -28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 -24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = add i32 %i.ao, %i.am                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !42 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.au = add i32 %i.at, %i.ar                    ; 2 uses
  %i.av = xor i32 %i.ap, -1
  %i.aw = load i32, ptr %i.ak, align 8, !tbaa !41 ; 7 uses
  %i.ax = icmp ugt i32 %i.aw, %i.av
  br i1 %i.ax, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = xor i32 %i.au, -1
  %i.az = load i32, ptr %i.aj, align 8, !tbaa !41 ; 6 uses
  %i.ba = icmp ugt i32 %i.az, %i.ay
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #13
  br label %.preheader

bb.s:                                             ; preds = %bb.q
  %i.bb = add i32 %i.aw, %i.ap                    ; 2 uses
  %.not138 = icmp uge i32 %i.az, %i.aw
  %i.bc = add i32 %i.az, 2
  %i.bd = icmp ult i32 %i.bc, %i.bb
  %or.cond148 = and i1 %.not138, %i.bd
  br i1 %or.cond148, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = add i32 %i.az, %i.au
  %.not139 = icmp uge i32 %i.aw, %i.az
  %i.bf = add i32 %i.aw, 2
  %i.bg = icmp ult i32 %i.bf, %i.be
  %or.cond150 = select i1 %.not139, i1 %i.bg, i1 false
  br i1 %or.cond150, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = add i32 %.0104210, 1                    ; 3 uses
  %i.bi = icmp eq i32 %i.az, %i.aw
  %i.bj = icmp eq i32 %i.ar, %i.am
  %or.cond182 = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = icmp eq i32 %i.at, %i.ao
  %or.cond183 = select i1 %or.cond182, i1 %i.bk, i1 false
  br i1 %or.cond183, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.aw) #13
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.bb) #13
  %i.bl = load i32, ptr %i.aj, align 8, !tbaa !41
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, i32 noundef %i.bl) #13
  %i.bm = icmp ugt i32 %i.bh, 5
  br i1 %i.bm, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !72
  %i.bq = and i32 %i.bp, 4
  %.not140 = icmp eq i32 %i.bq, 0
  br i1 %.not140, label %.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = tail call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #13 ; 2 uses
  %.not141 = icmp eq i32 %i.br, 0
  %spec.select = select i1 %.not141, i32 26, i32 %i.br
  br label %.preheader

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.t
  %.1105 = phi i32 [ %i.bh, %bb.v ], [ %i.bh, %bb.w ], [ %.0104210, %bb.t ]
  %i.bs = tail call i32 @cli_checktimelimit(ptr noundef %0) #13
  %.not142 = icmp eq i32 %i.bs, 0
  br i1 %.not142, label %bb.o, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 68
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !70
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %i.bv) #13
  br label %.preheader

.thread166:                                       ; preds = %bb.o, %.loopexit
  store ptr %.0109200, ptr %2, align 8, !tbaa !49
  store i64 %.1107, ptr %3, align 8, !tbaa !18
  br label %.thread179

.preheader:                                       ; preds = %bb.k, %bb.m, %bb.g, %bb.r, %bb.aa, %bb.x, %bb.y
  %.0109197 = phi ptr [ %.0109200, %bb.aa ], [ %.0109200, %bb.r ], [ %.0109200, %bb.g ], [ %.0109200, %bb.x ], [ %.0109200, %bb.y ], [ %.0109200, %bb.k ], [ %.2111, %bb.m ] ; 2 uses
  %.1103165 = phi i1 [ %.not213.not.not.not.not, %bb.aa ], [ %.not213.not.not.not.not, %bb.r ], [ false, %bb.g ], [ %.not213.not.not.not.not, %bb.x ], [ %.not213.not.not.not.not, %bb.y ], [ false, %bb.m ], [ false, %bb.k ]
  %.2108164 = phi i64 [ %.1107, %bb.aa ], [ %.1107, %bb.r ], [ %4, %bb.g ], [ %.1107, %bb.x ], [ %.1107, %bb.y ], [ %4, %bb.m ], [ %4, %bb.k ] ; 2 uses
  %.6162 = phi i32 [ 21, %bb.aa ], [ 26, %bb.r ], [ 21, %bb.g ], [ 26, %bb.x ], [ %spec.select, %bb.y ], [ 20, %bb.k ], [ 1, %bb.m ]
  %.not214 = icmp eq i64 %.2108164, 0
  br i1 %.not214, label %.split, label %.lr.ph212

.lr.ph212:                                        ; preds = %.preheader, %bb.ac
  %.0211 = phi i64 [ %i.bz, %bb.ac ], [ 0, %.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %.0109197, i64 %.0211
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15 ; 2 uses
  %.not145 = icmp eq ptr %i.by, null
  br i1 %.not145, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph212
  tail call void @free(ptr noundef nonnull %i.by) #13
  store ptr null, ptr %i.bx, align 8, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph212, %bb.ab
  %i.bz = add nuw i64 %.0211, 1                   ; 2 uses
  %exitcond231.not = icmp eq i64 %i.bz, %.2108164
  br i1 %exitcond231.not, label %.split, label %.lr.ph212

.split:                                           ; preds = %bb.ac, %.preheader
  tail call void @free(ptr noundef nonnull %.0109197) #13
  %spec.select271 = select i1 %.1103165, i32 25, i32 %.6162
  br label %.thread179

.thread179:                                       ; preds = %.split, %.split.thread, %bb.b, %bb.c, %.thread166
  %.0119 = phi i32 [ 0, %.thread166 ], [ 34, %bb.b ], [ 1, %.split.thread ], [ 20, %bb.c ], [ %spec.select271, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0119
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
  store i64 0, ptr %5, align 8, !tbaa !18
  %i.b = tail call i32 @cli_checktimelimit(ptr noundef %0) #13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57, i32 noundef %i.f) #13
  br label %.thread9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = tail call ptr %i.j(ptr noundef %i.h, i64 noundef %1, i64 noundef 46, i32 noundef 1) #13, !inline_history !0 ; 14 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.58) #13
  br label %.thread9

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 1, !tbaa !35
  %.not90 = icmp eq i32 %i.m, 33639248
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59) #13
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.n = add i64 %1, 46                           ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.s = load i16, ptr %i.r, align 1, !tbaa !35
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.v = load i32, ptr %i.u, align 1, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 1, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 3 uses
  %i.z = load i16, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 30 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 34
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 42 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !35
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.60, i32 noundef %i.q, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.al) #13
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !36
  %i.ap = load i16, ptr %i.y, align 1, !tbaa !35  ; 2 uses
  %i.aq = zext i16 %i.ap to i64
  %i.ar = add i64 %i.n, %i.aq
  %.not91 = icmp ugt i64 %i.ao, %i.ar
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61) #13
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %spec.select13 = tail call i16 @llvm.umin.i16(i16 %i.ap, i16 255)
  %spec.select = zext nneg i16 %spec.select13 to i64 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34
  %i.au = tail call ptr %i.at(ptr noundef nonnull %i.am, i64 noundef %i.n, i64 noundef %spec.select, i32 noundef 0) #13, !inline_history !1 ; 2 uses
  %.not92 = icmp eq ptr %i.au, null
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.au, i64 %spec.select, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select
  store i8 0, ptr %i.av, align 1, !tbaa !35
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.62, ptr noundef nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = load i16, ptr %i.y, align 1, !tbaa !35
  %i.ax = load i32, ptr %i.u, align 1, !tbaa !35
  %i.ay = zext i32 %i.ax to i64
  %i.az = load i32, ptr %i.w, align 1, !tbaa !35
  %i.ba = zext i32 %i.az to i64
  %i.bb = load i16, ptr %i.o, align 1, !tbaa !35
  %i.bc = and i16 %i.bb, 1
  %i.bd = zext nneg i16 %i.bc to i32
  %i.be = trunc i64 %2 to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !35
  %i.bh = call i32 @cli_matchmeta(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.ay, i64 noundef %i.ba, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bg) #13
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = zext i16 %i.aw to i64
  %i.bk = add i64 %i.n, %i.bj
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !36 ; 2 uses
  %i.bo = load i16, ptr %i.ab, align 1, !tbaa !35
  %i.bp = zext i16 %i.bo to i64
  %i.bq = add i64 %i.bk, %i.bp                    ; 2 uses
  %.not93 = icmp ugt i64 %i.bn, %i.bq
  br i1 %.not93, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63) #13
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.br = load i16, ptr %i.ae, align 1, !tbaa !35
  %i.bs = zext i16 %i.br to i64
  %i.bt = add i64 %i.bq, %i.bs                    ; 2 uses
  %i.bu = icmp ult i64 %i.bn, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64) #13
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.bv = sub i64 %i.bt, %1
  store i64 %i.bv, ptr %5, align 8, !tbaa !18
  %.not94 = icmp eq ptr %3, null
  br i1 %.not94, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !74
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 164
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.ak, align 1, !tbaa !35
  %i.ce = call fastcc i32 @parse_local_file_header(ptr noundef nonnull %0, i32 noundef %i.cd, ptr noundef null, i64 noundef %2, ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef nonnull @cli_magic_scan_desc, ptr noundef %4, ptr noundef null)
end_hunk_0
