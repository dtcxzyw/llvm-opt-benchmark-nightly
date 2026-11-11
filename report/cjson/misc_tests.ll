Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/misc_tests?download=true
inline.NumInlined: 403
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@cjson_set_bool_value_must_not_break_objects:bb.a
  %i.al = phi i32 [ %i.aj, %cJSON_IsString.exit153 ], [ %.pre265, %bb.r ] ; 2 uses
  %i.am = and i32 %i.al, 256
  %.not111 = icmp eq i32 %i.am, 0
  br i1 %.not111, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 764) #29
  %.pre266 = load i32, ptr %i.ae, align 8, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.an = phi i32 [ %.pre266, %bb.t ], [ %i.al, %bb.s ] ; 3 uses
  %i.ao = and i32 %i.an, 3
  %.not112 = icmp eq i32 %i.ao, 0
  br i1 %.not112, label %cJSON_IsString.exit155, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = and i32 %i.an, -4
  %i.aq = or disjoint i32 %i.ap, 1                ; 2 uses
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !36
  br label %cJSON_IsString.exit155

cJSON_IsString.exit155:                           ; preds = %bb.u, %bb.v
  %i.ar = phi i32 [ %i.an, %bb.u ], [ %i.aq, %bb.v ] ; 2 uses
  %i.as = and i32 %i.ar, 255
  %.not256 = icmp eq i32 %i.as, 16
  br i1 %.not256, label %bb.x, label %bb.w

bb.w:                                             ; preds = %cJSON_IsString.exit155
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 766) #29
  %.pre267 = load i32, ptr %i.ae, align 8, !tbaa !36
  br label %bb.x

bb.x:                                             ; preds = %cJSON_IsString.exit155, %bb.w
  %i.at = phi i32 [ %i.ar, %cJSON_IsString.exit155 ], [ %.pre267, %bb.w ]
  %i.au = and i32 %i.at, 256
  %.not114 = icmp eq i32 %i.au, 0
  br i1 %.not114, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 767) #29
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  tail call void @cJSON_Delete(ptr noundef nonnull %i.z)
  %global_hooks.val.i156 = load ptr, ptr @global_hooks, align 8, !tbaa !40
  %i.av = tail call ptr %global_hooks.val.i156(i64 noundef 64) #29, !inline_history !17 ; 6 uses
  %.not.i.i157 = icmp eq ptr %i.av, null
  br i1 %.not.i.i157, label %bb.aa, label %.thread279

.thread279:                                       ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, i8 0, i64 64, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 320, ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.x, ptr %i.ax, align 8, !tbaa !44
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 771) #29
  %.pre269 = load i32, ptr inttoptr (i64 24 to ptr), align 8, !tbaa !36
  %i.ay = and i32 %.pre269, 256
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 772) #29
  br label %bb.ac

bb.ac:                                            ; preds = %.thread279, %bb.ab, %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !36 ; 3 uses
  %i.bc = and i32 %i.bb, 3
  %.not118 = icmp eq i32 %i.bc, 0
  br i1 %.not118, label %cJSON_IsObject.exit161, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = and i32 %i.bb, -4
  %i.be = or disjoint i32 %i.bd, 2                ; 2 uses
  store i32 %i.be, ptr %i.ba, align 8, !tbaa !36
  br label %cJSON_IsObject.exit161

cJSON_IsObject.exit161:                           ; preds = %bb.ac, %bb.ad
  %i.bf = phi i32 [ %i.bb, %bb.ac ], [ %i.be, %bb.ad ] ; 2 uses
  %i.bg = and i32 %i.bf, 255
  %.not257 = icmp eq i32 %i.bg, 64
  br i1 %.not257, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %cJSON_IsObject.exit161
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 774) #29
  %.pre270 = load i32, ptr %i.ba, align 8, !tbaa !36
  br label %bb.af

bb.af:                                            ; preds = %cJSON_IsObject.exit161, %bb.ae
  %i.bh = phi i32 [ %i.bf, %cJSON_IsObject.exit161 ], [ %.pre270, %bb.ae ] ; 2 uses
  %i.bi = and i32 %i.bh, 256
  %.not120 = icmp eq i32 %i.bi, 0
  br i1 %.not120, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 775) #29
  %.pre271 = load i32, ptr %i.ba, align 8, !tbaa !36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bj = phi i32 [ %.pre271, %bb.ag ], [ %i.bh, %bb.af ] ; 3 uses
  %i.bk = and i32 %i.bj, 3
  %.not121 = icmp eq i32 %i.bk, 0
  br i1 %.not121, label %cJSON_IsObject.exit163, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = and i32 %i.bj, -4
  %i.bm = or disjoint i32 %i.bl, 1                ; 2 uses
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !36
  br label %cJSON_IsObject.exit163

cJSON_IsObject.exit163:                           ; preds = %bb.ah, %bb.ai
  %i.bn = phi i32 [ %i.bj, %bb.ah ], [ %i.bm, %bb.ai ] ; 2 uses
  %i.bo = and i32 %i.bn, 255
  %.not258 = icmp eq i32 %i.bo, 64
  br i1 %.not258, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %cJSON_IsObject.exit163
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 777) #29
  %.pre272 = load i32, ptr %i.ba, align 8, !tbaa !36
  br label %bb.ak

bb.ak:                                            ; preds = %cJSON_IsObject.exit163, %bb.aj
  %i.bp = phi i32 [ %i.bn, %cJSON_IsObject.exit163 ], [ %.pre272, %bb.aj ]
  %i.bq = and i32 %i.bp, 256
  %.not123 = icmp eq i32 %i.bq, 0
  br i1 %.not123, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @UnityFail(ptr noundef nonnull @.str.62, i64 noundef 778) #29
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  tail call void @cJSON_Delete(ptr noundef nonnull %i.av)
  tail call void @cJSON_Delete(ptr noundef %i.x)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  tail call void @cJSON_Delete(ptr noundef %.0.i135191195200207211216223227)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_parse_big_numbers_should_not_report_error() #8 {
bb.a:
  %i.a = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull @.str.101, i64 noundef 91, ptr noundef null, i32 noundef 0) ; 2 uses
  %i.b = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull @.str.102, i64 noundef 94, ptr noundef null, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.72, i64 noundef 793) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @UnityFail(ptr noundef nonnull @.str.72, i64 noundef 794) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.c = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull @.str.103, i64 noundef 93, ptr noundef null, i32 noundef 0)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @UnityFail(ptr noundef nonnull @.str.105, i64 noundef 795) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.e = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull @.str.104, i64 noundef 93, ptr noundef null, i32 noundef 0)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @UnityFail(ptr noundef nonnull @.str.105, i64 noundef 796) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @cJSON_Delete(ptr noundef %i.a)
  tail call void @cJSON_Delete(ptr noundef %i.b)
  ret void
}

declare i32 @UnityEnd() local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_string(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 5 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 6 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54
  %.not = icmp eq i8 %i.e, 34
  br i1 %.not, label %.preheader, label %.thread103

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 3 uses
  %i.h = add nuw nsw i64 %i.c, 1
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread103

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.059117 = phi i64 [ %.160, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %.063116.idx = phi i64 [ %.164.add, %bb.d ], [ 1, %.preheader ] ; 5 uses
  %.063116.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.j = load i8, ptr %.063116.ptr, align 1, !tbaa !54
  switch i8 %i.j, label %bb.d [
    i8 34, label %bb.e
    i8 92, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %.063116.add = add nuw nsw i64 %.063116.idx, 1  ; 2 uses
  %i.k = add nuw nsw i64 %i.c, %.063116.add
  %.not75 = icmp ult i64 %i.k, %i.g
  br i1 %.not75, label %bb.c, label %.thread103

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.059117, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.164.idx = phi i64 [ %.063116.add, %bb.c ], [ %.063116.idx, %.lr.ph ]
  %.160 = phi i64 [ %i.l, %bb.c ], [ %.059117, %.lr.ph ]
  %.164.add = add nuw nsw i64 %.164.idx, 1        ; 2 uses
  %i.m = add nuw nsw i64 %i.c, %.164.add
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %.lr.ph, label %.thread103

bb.e:                                             ; preds = %.lr.ph
  %.063116.ptr.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx ; 2 uses
  %2 = ptrtoint ptr %.063116.ptr.le to i64        ; 4 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.r = add i64 %.059117, %i.o
  %reass.sub = sub i64 %2, %i.r
  %i.s = add i64 %reass.sub, 1
  %i.t = tail call ptr %i.q(i64 noundef %i.s) #29 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread103, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.e
  %i.v = icmp sgt i64 %.063116.idx, 1
  br i1 %i.v, label %.lr.ph123, label %.critedge._crit_edge

.lr.ph123:                                        ; preds = %.critedge.preheader, %.critedge
  %.065120 = phi ptr [ %.2, %.critedge ], [ %.ptr, %.critedge.preheader ] ; 13 uses
  %.090119 = phi ptr [ %.393, %.critedge ], [ %i.t, %.critedge.preheader ] ; 19 uses
  %i.w = load i8, ptr %.065120, align 1, !tbaa !54 ; 2 uses
  %.not76 = icmp eq i8 %i.w, 92
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph123
  %i.x = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.w, ptr %.090119, align 1, !tbaa !54
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph123
  %i.z = ptrtoint ptr %.065120 to i64
  %i.aa = sub i64 %2, %i.z                        ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %utf16_literal_to_utf8.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !54  ; 2 uses
  switch i8 %i.ad, label %utf16_literal_to_utf8.exit.thread [
    i8 98, label %bb.i
    i8 102, label %bb.j
    i8 110, label %bb.k
    i8 114, label %bb.l
    i8 116, label %bb.m
    i8 34, label %bb.n
    i8 92, label %bb.n
    i8 47, label %bb.n
    i8 117, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 8, ptr %.090119, align 1, !tbaa !54
  br label %bb.al

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 12, ptr %.090119, align 1, !tbaa !54
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 10, ptr %.090119, align 1, !tbaa !54
  br label %bb.al

bb.l:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 13, ptr %.090119, align 1, !tbaa !54
  br label %bb.al

bb.m:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 9, ptr %.090119, align 1, !tbaa !54
  br label %bb.al

bb.n:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.ad, ptr %.090119, align 1, !tbaa !54
  br label %bb.al

bb.o:                                             ; preds = %bb.h
  %i.ak = icmp samesign ult i64 %i.aa, 6
  br i1 %i.ak, label %utf16_literal_to_utf8.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.065120, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !54  ; 4 uses
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = add i8 %i.am, -48
  %or.cond.i.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = add i8 %i.am, -65
  %or.cond31.i.i = icmp ult i8 %i.ap, 6
  br i1 %or.cond31.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = add i8 %i.am, -97
  %or.cond32.i.i = icmp ult i8 %i.aq, 6
  br i1 %or.cond32.i.i, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sink.i.i = phi i32 [ -48, %bb.p ], [ -55, %bb.q ], [ -87, %bb.r ]
  %i.ar = add nsw i32 %.sink.i.i, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %.065120, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !54  ; 4 uses
  %i.au = zext nneg i8 %i.at to i32
  %i.av = add i8 %i.at, -48
  %or.cond.1.i.i = icmp ult i8 %i.av, 10
  br i1 %or.cond.1.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = add i8 %i.at, -65
  %or.cond31.1.i.i = icmp ult i8 %i.aw, 6
  br i1 %or.cond31.1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = add i8 %i.at, -97
  %or.cond32.1.i.i = icmp ult i8 %i.ax, 6
  br i1 %or.cond32.1.i.i, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink35.i.i = phi i32 [ -55, %bb.t ], [ -87, %bb.u ], [ -48, %bb.s ]
  %i.ay = add nsw i32 %.sink35.i.i, %i.au
  %i.az = shl nuw nsw i32 %i.ar, 8
  %i.ba = shl nuw nsw i32 %i.ay, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.065120, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !54  ; 4 uses
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = add i8 %i.bc, -48
  %or.cond.2.i.i = icmp ult i8 %i.be, 10
  br i1 %or.cond.2.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = add i8 %i.bc, -65
  %or.cond31.2.i.i = icmp ult i8 %i.bf, 6
  br i1 %or.cond31.2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = add i8 %i.bc, -97
  %or.cond32.2.i.i = icmp ult i8 %i.bg, 6
  br i1 %or.cond32.2.i.i, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sink36.i.i = phi i32 [ -55, %bb.w ], [ -87, %bb.x ], [ -48, %bb.v ]
  %i.bh = add nuw nsw i32 %i.ba, %i.az
  %i.bi = add nuw nsw i32 %i.bh, %i.bd
  %.1.2.i.i = add nsw i32 %i.bi, %.sink36.i.i
  %i.bj = shl nuw nsw i32 %.1.2.i.i, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.065120, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !54  ; 4 uses
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = add i8 %i.bl, -48
  %or.cond.3.i.i = icmp ult i8 %i.bn, 10
  br i1 %or.cond.3.i.i, label %parse_hex4.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = add i8 %i.bl, -65
  %or.cond31.3.i.i = icmp ult i8 %i.bo, 6
  br i1 %or.cond31.3.i.i, label %parse_hex4.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = add i8 %i.bl, -97
  %or.cond32.3.i.i = icmp ult i8 %i.bp, 6
  br i1 %or.cond32.3.i.i, label %parse_hex4.exit.i, label %bb.ak

parse_hex4.exit.i:                                ; preds = %bb.aa, %bb.z, %bb.y
  %.sink37.i.i = phi i32 [ -55, %bb.z ], [ -87, %bb.aa ], [ -48, %bb.y ]
  %i.bq = add nuw nsw i32 %i.bj, %i.bm
  %.1.3.i.i = add nsw i32 %i.bq, %.sink37.i.i     ; 10 uses
  %i.br = and i32 %.1.3.i.i, -1024
  switch i32 %i.br, label %bb.af [
    i32 56320, label %utf16_literal_to_utf8.exit.thread
    i32 55296, label %bb.ab
  ]

bb.ab:                                            ; preds = %parse_hex4.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.065120, i64 6 ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %2, %i.bt
  %i.bv = icmp slt i64 %i.bu, 6
  br i1 %i.bv, label %utf16_literal_to_utf8.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.bw, 92
  br i1 %.not.i, label %bb.ad, label %utf16_literal_to_utf8.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %.065120, i64 7
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !54
  %.not53.i = icmp eq i8 %i.by, 117
  br i1 %.not53.i, label %bb.ae, label %utf16_literal_to_utf8.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.bz = getelementptr inbounds nuw i8, ptr %.065120, i64 8
  %i.ca = tail call fastcc i32 @parse_hex4(ptr noundef nonnull %i.bz) ; 2 uses
  %i.cb = add nsw i32 %i.ca, -57344
  %or.cond5.i = icmp ult i32 %i.cb, -1024
  br i1 %or.cond5.i, label %utf16_literal_to_utf8.exit.thread, label %.thread83.i

end_hunk_0
