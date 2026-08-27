Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/file?download=true
inline.NumInlined: 76
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@match_regex_reverse:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.m = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not, i32 %i.n, i32 %i.p
  %.0.in = add i32 %spec.select, -1               ; 2 uses
  %.not1820 = icmp eq i32 %.0.in, 0
  br i1 %.not1820, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.0 = zext i32 %.0.in to i64
  %i.q = getelementptr i8, ptr %0, i64 208
  %i.r = getelementptr i8, ptr %2, i64 264
  %i.s = getelementptr i8, ptr %2, i64 280
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.t = add nsw i64 %.121, -1                    ; 2 uses
  %.not18 = icmp eq i64 %i.t, 0
  br i1 %.not18, label %.loopexit, label %bb.d, !llvm.loop !40

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.121 = phi i64 [ %.0, %.lr.ph ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8
  %.val = load ptr, ptr %i.r, align 8
  %.val19 = load i64, ptr %i.s, align 8
  %i.v = getelementptr i8, ptr %.val, i64 %.val19
  %i.w = load i32, ptr %i.m, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = call zeroext i1 @ws_regex_matches_pos(ptr noundef %i.u, ptr noundef %i.v, i64 noundef %i.x, i64 noundef %.121, ptr noundef nonnull %i.c)
  br i1 %i.y, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.c, align 16             ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  store i32 %i.aa, ptr %i.o, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = sub i64 %i.ac, %i.z
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr i8, ptr %0, i64 196
  store i32 %i.ae, ptr %i.af, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %cf_read_record.exit, %bb.e
  %.016 = phi i32 [ 2, %cf_read_record.exit ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.016
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare signext i8 @g_ascii_tolower(i8 noundef signext) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare void @ws_mempbrk_compile(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_narrow_and_wide_case(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call zeroext i1 @wtap_seek_read(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = getelementptr i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %2, i64 280
  %.val79 = load i64, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val, i64 %.val79 ; 4 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w     ; 7 uses
  %i.y = getelementptr i8, ptr %0, i64 196        ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %.not = icmp eq i32 %i.z, 0
  %i.aa = getelementptr i8, ptr %0, i64 192
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not76 = icmp eq i32 %i.ab, 0
  %or.cond119 = select i1 %.not, i1 %.not76, i1 false
  %i.ac = add i32 %i.ab, 1
  %i.ad = zext i32 %i.ac to i64
  %.065.idx = select i1 %or.cond119, i64 0, i64 %i.ad
  %.065 = getelementptr i8, ptr %i.v, i64 %.065.idx ; 2 uses
  %i.ae = icmp ult ptr %.065, %i.x
  br i1 %i.ae, label %.lr.ph96, label %.loopexit

.lr.ph96:                                         ; preds = %bb.b
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph96, %._crit_edge90
  %.16694 = phi ptr [ %.065, %.lr.ph96 ], [ %i.bw, %._crit_edge90 ] ; 2 uses
  %i.ag = ptrtoint ptr %.16694 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call ptr @ws_mempbrk_exec(ptr noundef %.16694, i64 noundef %i.ah, ptr noundef %i.h, ptr noundef nonnull %i.c) ; 10 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ak = icmp ult ptr %i.ai, %i.x
  br i1 %i.ak, label %.lr.ph, label %._crit_edge90

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.al = phi ptr [ %i.ba, %bb.f ], [ %i.ai, %.preheader ]
  %.084 = phi i64 [ %i.ar, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = call signext i8 @g_ascii_toupper(i8 noundef signext %i.am) #27 ; 2 uses
  store i8 %i.an, ptr %i.c, align 1
  %i.ao = getelementptr i8, ptr %i.d, i64 %.084
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.d, label %.lr.ph89.preheader

bb.d:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.084, 1                        ; 3 uses
  %i.as = icmp eq i64 %i.ar, %i.f
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %indvars105.le = trunc i64 %.084 to i32
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = ptrtoint ptr %i.v to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %0, i64 192
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = add i32 %indvars105.le, 1
  store i32 %i.ay, ptr %i.y, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.az = and i64 %i.ar, 4294967295
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az  ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.x
  br i1 %i.bb, label %.lr.ph, label %.lr.ph89.preheader, !llvm.loop !41

.lr.ph89.preheader:                               ; preds = %bb.f, %.lr.ph
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.j
  %i.bc = phi ptr [ %i.bu, %bb.j ], [ %i.ai, %.lr.ph89.preheader ]
  %.187 = phi i64 [ %i.bi, %bb.j ], [ 0, %.lr.ph89.preheader ] ; 2 uses
  %.16486 = phi i32 [ %i.bs, %bb.j ], [ 0, %.lr.ph89.preheader ] ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = call signext i8 @g_ascii_toupper(i8 noundef signext %i.bd) #27 ; 2 uses
  store i8 %i.be, ptr %i.c, align 1
  %i.bf = getelementptr i8, ptr %i.d, i64 %.187
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.be, %i.bg
  br i1 %i.bh, label %bb.g, label %._crit_edge90

bb.g:                                             ; preds = %.lr.ph89
  %i.bi = add i64 %.187, 1                        ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.f
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = ptrtoint ptr %i.ai to i64
  %i.bl = ptrtoint ptr %i.v to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr i8, ptr %0, i64 192
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = or disjoint i32 %.16486, 1
  store i32 %i.bp, ptr %i.y, align 4
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %4 = or disjoint i32 %.16486, 1
  %5 = zext i32 %4 to i64
  %i.bq = getelementptr i8, ptr %i.ai, i64 %5     ; 2 uses
  %.not77 = icmp ult ptr %i.bq, %i.x
  br i1 %.not77, label %bb.j, label %._crit_edge90

bb.j:                                             ; preds = %bb.i
  %i.br = load i8, ptr %i.bq, align 1
  %.not78 = icmp eq i8 %i.br, 0
  %i.bs = add i32 %.16486, 2                      ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.ai, i64 %i.bt  ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.x
  %or.cond = select i1 %.not78, i1 %i.bv, i1 false
  br i1 %or.cond, label %.lr.ph89, label %._crit_edge90, !llvm.loop !42

._crit_edge90:                                    ; preds = %.lr.ph89, %bb.i, %bb.j, %.preheader
  %i.bw = getelementptr i8, ptr %i.ai, i64 1      ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.x
  br i1 %i.bx, label %bb.c, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %._crit_edge90, %bb.c, %bb.b, %cf_read_record.exit, %bb.e, %bb.h
  %.068 = phi i32 [ 2, %cf_read_record.exit ], [ 1, %bb.h ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %._crit_edge90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.068
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_narrow_and_wide_case_reverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call zeroext i1 @wtap_seek_read(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = getelementptr i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %i.f, %i.t
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %2, i64 280
  %.val87 = load i64, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val, i64 %.val87 ; 6 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t     ; 5 uses
  %i.z = getelementptr i8, ptr %0, i64 196        ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %._crit_edge117

._crit_edge117:                                   ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 192
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i64 0, %i.f
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 192
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.not83 = icmp eq i32 %i.ae, 0
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge117, %bb.d
  %i.af = phi i32 [ %.pre, %._crit_edge117 ], [ %i.ae, %bb.d ]
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.069 = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %.not84104 = icmp ult ptr %.069, %i.x
  br i1 %.not84104, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.f
  %i.aj = ptrtoint ptr %i.x to i64                ; 3 uses
  %invariant.op = sub i64 1, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph107, %._crit_edge100
  %.170105 = phi ptr [ %.069, %.lr.ph107 ], [ %i.bx, %._crit_edge100 ]
  %i.ak = ptrtoint ptr %.170105 to i64
  %.reass.reass = add i64 %i.ak, %invariant.op
  %i.al = call ptr @ws_memrpbrk_exec(ptr noundef %i.x, i64 noundef %.reass.reass, ptr noundef %i.h, ptr noundef nonnull %i.c) ; 10 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.an = icmp ult ptr %i.al, %i.y
  br i1 %i.an, label %.lr.ph, label %._crit_edge100

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.ao = phi ptr [ %i.bc, %bb.j ], [ %i.al, %.preheader ]
  %.094 = phi i64 [ %i.au, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = call signext i8 @g_ascii_toupper(i8 noundef signext %i.ap) #27 ; 2 uses
  store i8 %i.aq, ptr %i.c, align 1
  %i.ar = getelementptr i8, ptr %i.d, i64 %.094
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.aq, %i.as
  br i1 %i.at, label %bb.h, label %.lr.ph99.preheader

bb.h:                                             ; preds = %.lr.ph
  %i.au = add i64 %.094, 1                        ; 3 uses
  %i.av = icmp eq i64 %i.au, %i.f
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars116.le = trunc i64 %.094 to i32
  %i.aw = ptrtoint ptr %i.al to i64
  %i.ax = sub i64 %i.aw, %i.aj
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr i8, ptr %0, i64 192
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = add i32 %indvars116.le, 1
  store i32 %i.ba, ptr %i.z, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bb = and i64 %i.au, 4294967295
  %i.bc = getelementptr i8, ptr %i.al, i64 %i.bb  ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.y
  br i1 %i.bd, label %.lr.ph, label %.lr.ph99.preheader, !llvm.loop !44

.lr.ph99.preheader:                               ; preds = %bb.j, %.lr.ph
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %bb.n
  %i.be = phi ptr [ %i.bv, %bb.n ], [ %i.al, %.lr.ph99.preheader ]
  %.197 = phi i64 [ %i.bk, %bb.n ], [ 0, %.lr.ph99.preheader ] ; 2 uses
  %.16896 = phi i32 [ %i.bt, %bb.n ], [ 0, %.lr.ph99.preheader ] ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = call signext i8 @g_ascii_toupper(i8 noundef signext %i.bf) #27 ; 2 uses
  store i8 %i.bg, ptr %i.c, align 1
  %i.bh = getelementptr i8, ptr %i.d, i64 %.197
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bg, %i.bi
  br i1 %i.bj, label %bb.k, label %._crit_edge100

bb.k:                                             ; preds = %.lr.ph99
  %i.bk = add i64 %.197, 1                        ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.f
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %i.al to i64
  %i.bn = sub i64 %i.bm, %i.aj
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr i8, ptr %0, i64 192
  store i32 %i.bo, ptr %i.bp, align 8
  %i.bq = or disjoint i32 %.16896, 1
  store i32 %i.bq, ptr %i.z, align 4
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %4 = or disjoint i32 %.16896, 1
  %5 = zext i32 %4 to i64
  %i.br = getelementptr i8, ptr %i.al, i64 %5     ; 2 uses
  %.not85 = icmp ult ptr %i.br, %i.y
  br i1 %.not85, label %bb.n, label %._crit_edge100

bb.n:                                             ; preds = %bb.m
  %i.bs = load i8, ptr %i.br, align 1
  %.not86 = icmp eq i8 %i.bs, 0
  %i.bt = add i32 %.16896, 2                      ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %i.al, i64 %i.bu  ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.y
  %or.cond = select i1 %.not86, i1 %i.bw, i1 false
  br i1 %or.cond, label %.lr.ph99, label %._crit_edge100, !llvm.loop !45

._crit_edge100:                                   ; preds = %.lr.ph99, %bb.m, %bb.n, %.preheader
  %i.bx = getelementptr i8, ptr %i.al, i64 -1     ; 2 uses
  %.not84 = icmp ult ptr %i.bx, %i.x
  br i1 %.not84, label %.loopexit, label %bb.g, !llvm.loop !46

.loopexit:                                        ; preds = %._crit_edge100, %bb.g, %bb.f, %cf_read_record.exit, %bb.i, %bb.l, %bb.b
  %.072 = phi i32 [ 2, %cf_read_record.exit ], [ 0, %bb.b ], [ 1, %bb.l ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.072
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_narrow_case(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %3, align 8
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call zeroext i1 @wtap_seek_read(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = getelementptr i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %2, i64 280
  %.val50 = load i64, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val, i64 %.val50 ; 3 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w     ; 5 uses
  %i.y = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %.not = icmp eq i32 %i.z, 0
  %i.aa = getelementptr i8, ptr %0, i64 192
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not49 = icmp eq i32 %i.ab, 0
  %or.cond = select i1 %.not, i1 %.not49, i1 false
  %i.ac = add i32 %i.ab, 1
  %i.ad = zext i32 %i.ac to i64
  %.042.idx = select i1 %or.cond, i64 0, i64 %i.ad
  %.042 = getelementptr i8, ptr %i.v, i64 %.042.idx ; 2 uses
  %i.ae = icmp ult ptr %.042, %i.x
  br i1 %i.ae, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %bb.b
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %._crit_edge
  %.155 = phi ptr [ %.042, %.lr.ph57 ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.ag = ptrtoint ptr %.155 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call ptr @ws_mempbrk_exec(ptr noundef %.155, i64 noundef %i.ah, ptr noundef %i.h, ptr noundef nonnull %i.c) ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ak = icmp ult ptr %i.ai, %i.x
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.al = phi ptr [ %i.ba, %bb.f ], [ %i.ai, %.preheader ]
  %.053 = phi i64 [ %i.ar, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = call signext i8 @g_ascii_toupper(i8 noundef signext %i.am) #27 ; 2 uses
  store i8 %i.an, ptr %i.c, align 1
  %i.ao = getelementptr i8, ptr %i.d, i64 %.053
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.053, 1                        ; 3 uses
  %i.as = icmp eq i64 %i.ar, %i.f
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %indvars61.le = trunc i64 %.053 to i32
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = ptrtoint ptr %i.v to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %0, i64 192
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = add i32 %indvars61.le, 1
  store i32 %i.ay, ptr %i.y, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.az = and i64 %i.ar, 4294967295
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az  ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.x
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %bb.f, %.preheader
  %i.bc = getelementptr i8, ptr %i.ai, i64 1      ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.x
  br i1 %i.bd, label %bb.c, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %bb.b, %cf_read_record.exit, %bb.e
  %.044 = phi i32 [ 2, %cf_read_record.exit ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.044
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_narrow_case_reverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %3, align 8
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call zeroext i1 @wtap_seek_read(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = getelementptr i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %i.f, %i.t
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %2, i64 280
  %.val57 = load i64, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val, i64 %.val57 ; 6 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t     ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %._crit_edge71

._crit_edge71:                                    ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 192
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i64 0, %i.f
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 192
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.not55 = icmp eq i32 %i.ae, 0
  br i1 %.not55, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge71, %bb.d
  %i.af = phi i32 [ %.pre, %._crit_edge71 ], [ %i.ae, %bb.d ]
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.046 = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %.not5663 = icmp ult ptr %.046, %i.x
  br i1 %.not5663, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.f
  %i.aj = ptrtoint ptr %i.x to i64                ; 2 uses
  %invariant.op = sub i64 1, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph66, %._crit_edge
  %.164 = phi ptr [ %.046, %.lr.ph66 ], [ %i.be, %._crit_edge ]
  %i.ak = ptrtoint ptr %.164 to i64
  %.reass.reass = add i64 %i.ak, %invariant.op
  %i.al = call ptr @ws_memrpbrk_exec(ptr noundef %i.x, i64 noundef %.reass.reass, ptr noundef %i.h, ptr noundef nonnull %i.c) ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.an = icmp ult ptr %i.al, %i.y
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.ao = phi ptr [ %i.bc, %bb.j ], [ %i.al, %.preheader ]
  %.061 = phi i64 [ %i.au, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = call signext i8 @g_ascii_toupper(i8 noundef signext %i.ap) #27 ; 2 uses
  store i8 %i.aq, ptr %i.c, align 1
  %i.ar = getelementptr i8, ptr %i.d, i64 %.061
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.aq, %i.as
  br i1 %i.at, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.au = add i64 %.061, 1                        ; 3 uses
  %i.av = icmp eq i64 %i.au, %i.f
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars70.le = trunc i64 %.061 to i32
  %i.aw = ptrtoint ptr %i.al to i64
  %i.ax = sub i64 %i.aw, %i.aj
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr i8, ptr %0, i64 192
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = add i32 %indvars70.le, 1
  store i32 %i.ba, ptr %i.z, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bb = and i64 %i.au, 4294967295
  %i.bc = getelementptr i8, ptr %i.al, i64 %i.bb  ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.y
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %bb.j, %.preheader
  %i.be = getelementptr i8, ptr %i.al, i64 -1     ; 2 uses
  %.not56 = icmp ult ptr %i.be, %i.x
  br i1 %.not56, label %.loopexit, label %bb.g, !llvm.loop !50

.loopexit:                                        ; preds = %._crit_edge, %bb.g, %bb.f, %cf_read_record.exit, %bb.i, %bb.b
  %.048 = phi i32 [ 2, %cf_read_record.exit ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.048
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_wide_case(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %3, align 8
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call zeroext i1 @wtap_seek_read(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = getelementptr i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %2, i64 280
  %.val59 = load i64, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val, i64 %.val59 ; 3 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w     ; 6 uses
  %i.y = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %.not = icmp eq i32 %i.z, 0
  %i.aa = getelementptr i8, ptr %0, i64 192
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not56 = icmp eq i32 %i.ab, 0
  %or.cond84 = select i1 %.not, i1 %.not56, i1 false
  %i.ac = add i32 %i.ab, 1
  %i.ad = zext i32 %i.ac to i64
  %.048.idx = select i1 %or.cond84, i64 0, i64 %i.ad
  %.048 = getelementptr i8, ptr %i.v, i64 %.048.idx ; 2 uses
  %i.ae = icmp ult ptr %.048, %i.x
  br i1 %i.ae, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %bb.b
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph68, %._crit_edge
  %.166 = phi ptr [ %.048, %.lr.ph68 ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.ag = ptrtoint ptr %.166 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call ptr @ws_mempbrk_exec(ptr noundef %.166, i64 noundef %i.ah, ptr noundef %i.h, ptr noundef nonnull %i.c) ; 7 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ak = icmp ult ptr %i.ai, %i.x
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.al = phi ptr [ %i.bd, %bb.g ], [ %i.ai, %.preheader ]
  %.062 = phi i64 [ %i.ar, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %.04761 = phi i32 [ %i.bb, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = call signext i8 @g_ascii_toupper(i8 noundef signext %i.am) #27 ; 2 uses
  store i8 %i.an, ptr %i.c, align 1
  %i.ao = getelementptr i8, ptr %i.d, i64 %.062
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.062, 1                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.f
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = ptrtoint ptr %i.v to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %0, i64 192
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = or disjoint i32 %.04761, 1
  store i32 %i.ay, ptr %i.y, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %4 = or disjoint i32 %.04761, 1
  %5 = zext i32 %4 to i64
  %i.az = getelementptr i8, ptr %i.ai, i64 %5     ; 2 uses
  %.not57 = icmp ult ptr %i.az, %i.x
  br i1 %.not57, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ba = load i8, ptr %i.az, align 1
  %.not58 = icmp eq i8 %i.ba, 0
  %i.bb = add i32 %.04761, 2                      ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.ai, i64 %i.bc  ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.x
  %or.cond = select i1 %.not58, i1 %i.be, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.f, %bb.g, %.preheader
  %i.bf = getelementptr i8, ptr %i.ai, i64 1      ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.x
  br i1 %i.bg, label %bb.c, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %bb.b, %cf_read_record.exit, %bb.e
  %.050 = phi i32 [ 2, %cf_read_record.exit ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.050
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_wide_case_reverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %3, align 8
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call zeroext i1 @wtap_seek_read(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = getelementptr i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %i.f, %i.t
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %2, i64 280
  %.val67 = load i64, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val, i64 %.val67 ; 6 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t     ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 192
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i64 0, %i.f
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 192
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.not63 = icmp eq i32 %i.ae, 0
  br i1 %.not63, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge85, %bb.d
  %i.af = phi i32 [ %.pre, %._crit_edge85 ], [ %i.ae, %bb.d ]
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.052 = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %.not6475 = icmp ult ptr %.052, %i.x
  br i1 %.not6475, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.f
  %i.aj = ptrtoint ptr %i.x to i64                ; 2 uses
  %invariant.op = sub i64 1, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph78, %._crit_edge
  %.176 = phi ptr [ %.052, %.lr.ph78 ], [ %i.bh, %._crit_edge ]
  %i.ak = ptrtoint ptr %.176 to i64
  %.reass.reass = add i64 %i.ak, %invariant.op
  %i.al = call ptr @ws_memrpbrk_exec(ptr noundef %i.x, i64 noundef %.reass.reass, ptr noundef %i.h, ptr noundef nonnull %i.c) ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.an = icmp ult ptr %i.al, %i.y
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %i.ao = phi ptr [ %i.bf, %bb.k ], [ %i.al, %.preheader ]
  %.071 = phi i64 [ %i.au, %bb.k ], [ 0, %.preheader ] ; 2 uses
  %.05170 = phi i32 [ %i.bd, %bb.k ], [ 0, %.preheader ] ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = call signext i8 @g_ascii_toupper(i8 noundef signext %i.ap) #27 ; 2 uses
  store i8 %i.aq, ptr %i.c, align 1
  %i.ar = getelementptr i8, ptr %i.d, i64 %.071
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.aq, %i.as
  br i1 %i.at, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.au = add i64 %.071, 1                        ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.f
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %i.al to i64
  %i.ax = sub i64 %i.aw, %i.aj
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr i8, ptr %0, i64 192
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = or disjoint i32 %.05170, 1
  store i32 %i.ba, ptr %i.z, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %4 = or disjoint i32 %.05170, 1
  %5 = zext i32 %4 to i64
  %i.bb = getelementptr i8, ptr %i.al, i64 %5     ; 2 uses
  %.not65 = icmp ult ptr %i.bb, %i.y
  br i1 %.not65, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.bb, align 1
  %.not66 = icmp eq i8 %i.bc, 0
  %i.bd = add i32 %.05170, 2                      ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.al, i64 %i.be  ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.y
  %or.cond = select i1 %.not66, i1 %i.bg, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %bb.j, %bb.k, %.preheader
  %i.bh = getelementptr i8, ptr %i.al, i64 -1     ; 2 uses
  %.not64 = icmp ult ptr %i.bh, %i.x
  br i1 %.not64, label %.loopexit, label %bb.g, !llvm.loop !54

.loopexit:                                        ; preds = %._crit_edge, %bb.g, %bb.f, %cf_read_record.exit, %bb.i, %bb.b
  %.054 = phi i32 [ 2, %cf_read_record.exit ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.054
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_narrow_and_wide(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %3, align 8                ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.f = getelementptr i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call zeroext i1 @wtap_seek_read(ptr noundef %i.g, i64 noundef %i.i, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.j, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.a, align 4
  %i.n = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %2, i64 280
  %.val80 = load i64, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val, i64 %.val80 ; 4 uses
  %i.t = zext i32 %i.p to i64
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t     ; 7 uses
  %i.v = getelementptr i8, ptr %0, i64 196        ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %.not = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %0, i64 192
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not77 = icmp eq i32 %i.y, 0
  %or.cond118 = select i1 %.not, i1 %.not77, i1 false
  %i.z = add i32 %i.y, 1
  %i.aa = zext i32 %i.z to i64
  %.066.idx = select i1 %or.cond118, i64 0, i64 %i.aa
  %.066 = getelementptr i8, ptr %i.s, i64 %.066.idx ; 2 uses
  %i.ab = icmp ult ptr %.066, %i.u
  br i1 %i.ab, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.b
  %i.ac = load i8, ptr %i.c, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = ptrtoint ptr %i.u to i64
  %i.af = trunc i64 %i.e to i32                   ; 2 uses
  %i.ag = shl i32 %i.af, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph97, %._crit_edge91
  %.16795 = phi ptr [ %.066, %.lr.ph97 ], [ %i.bu, %._crit_edge91 ] ; 2 uses
  %i.ah = ptrtoint ptr %.16795 to i64
  %i.ai = sub i64 %i.ae, %i.ah
  %i.aj = call ptr @memchr(ptr noundef %.16795, i32 noundef %i.ad, i64 noundef %i.ai) #25 ; 10 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.al = icmp ult ptr %i.aj, %i.u
  br i1 %i.al, label %.lr.ph, label %._crit_edge91

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.am = phi ptr [ %i.az, %bb.f ], [ %i.aj, %.preheader ]
  %.085 = phi i64 [ %i.ar, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %i.c, i64 %.085
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.d, label %.lr.ph90.preheader

bb.d:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.085, 1                        ; 3 uses
  %i.as = icmp eq i64 %i.ar, %i.e
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = ptrtoint ptr %i.aj to i64
  %i.au = ptrtoint ptr %i.s to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %0, i64 192
  store i32 %i.aw, ptr %i.ax, align 8
  store i32 %i.af, ptr %i.v, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ay = and i64 %i.ar, 4294967295
  %i.az = getelementptr i8, ptr %i.aj, i64 %i.ay  ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.u
  br i1 %i.ba, label %.lr.ph, label %.lr.ph90.preheader, !llvm.loop !55

.lr.ph90.preheader:                               ; preds = %bb.f, %.lr.ph
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.j
  %i.bb = phi ptr [ %i.bs, %bb.j ], [ %i.aj, %.lr.ph90.preheader ]
  %.188 = phi i64 [ %i.bg, %bb.j ], [ 0, %.lr.ph90.preheader ] ; 2 uses
  %.16587 = phi i32 [ %i.bq, %bb.j ], [ 0, %.lr.ph90.preheader ] ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr i8, ptr %i.c, i64 %.188
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %._crit_edge91

bb.g:                                             ; preds = %.lr.ph90
  %i.bg = add i64 %.188, 1                        ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.e
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = ptrtoint ptr %i.aj to i64
  %i.bj = ptrtoint ptr %i.s to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr i8, ptr %0, i64 192
  store i32 %i.bl, ptr %i.bm, align 8
  %i.bn = add i32 %i.ag, -1
  store i32 %i.bn, ptr %i.v, align 4
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %4 = or disjoint i32 %.16587, 1
  %5 = zext i32 %4 to i64
  %i.bo = getelementptr i8, ptr %i.aj, i64 %5     ; 2 uses
  %.not78 = icmp ult ptr %i.bo, %i.u
  br i1 %.not78, label %bb.j, label %._crit_edge91

bb.j:                                             ; preds = %bb.i
  %i.bp = load i8, ptr %i.bo, align 1
  %.not79 = icmp eq i8 %i.bp, 0
  %i.bq = add i32 %.16587, 2                      ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.aj, i64 %i.br  ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.u
  %or.cond = select i1 %.not79, i1 %i.bt, i1 false
  br i1 %or.cond, label %.lr.ph90, label %._crit_edge91, !llvm.loop !56

._crit_edge91:                                    ; preds = %.lr.ph90, %bb.i, %bb.j, %.preheader
  %i.bu = getelementptr i8, ptr %i.aj, i64 1      ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.u
  br i1 %i.bv, label %bb.c, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %._crit_edge91, %bb.c, %bb.b, %cf_read_record.exit, %bb.e, %bb.h
  %.069 = phi i32 [ 2, %cf_read_record.exit ], [ 1, %bb.h ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %._crit_edge91 ]
  ret i32 %.069
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_narrow_and_wide_reverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %3, align 8                ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.f = getelementptr i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call zeroext i1 @wtap_seek_read(ptr noundef %i.g, i64 noundef %i.i, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.j, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.a, align 4
  %i.n = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp ugt i64 %i.e, %i.q
  br i1 %i.r, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %2, i64 280
  %.val86 = load i64, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val, i64 %.val86 ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 %i.q     ; 7 uses
  %i.w = getelementptr i8, ptr %0, i64 196        ; 3 uses
  %i.x = load i32, ptr %i.w, align 4
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 192
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 0, %i.e
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %0, i64 192
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not83 = icmp eq i32 %i.ab, 0
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge115, %bb.d
  %i.ac = phi i32 [ %.pre, %._crit_edge115 ], [ %i.ab, %bb.d ]
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.070 = phi ptr [ %i.af, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.ag = icmp ult ptr %.070, %i.v
  br i1 %i.ag, label %.lr.ph105, label %.loopexit

.lr.ph105:                                        ; preds = %bb.f
  %i.ah = ptrtoint ptr %i.u to i64                ; 3 uses
  %i.ai = trunc nuw i64 %i.e to i32               ; 2 uses
  %i.aj = shl i32 %i.ai, 1
  %invariant.op = sub i64 1, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph105, %._crit_edge99
  %.171103 = phi ptr [ %.070, %.lr.ph105 ], [ %i.bw, %._crit_edge99 ]
  %i.ak = load i8, ptr %i.c, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = ptrtoint ptr %.171103 to i64
  %.reass.reass = add i64 %i.am, %invariant.op
  %i.an = call ptr @ws_memrchr(ptr noundef %i.u, i32 noundef %i.al, i64 noundef %.reass.reass) ; 10 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ap = icmp ult ptr %i.an, %i.v
  br i1 %i.ap, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.aq = phi ptr [ %i.bc, %bb.j ], [ %i.an, %.preheader ]
  %.093 = phi i64 [ %i.av, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr i8, ptr %i.c, i64 %.093
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %.lr.ph98.preheader

bb.h:                                             ; preds = %.lr.ph
  %i.av = add i64 %.093, 1                        ; 3 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.an to i64
  %i.ay = sub i64 %i.ax, %i.ah
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr i8, ptr %0, i64 192
  store i32 %i.az, ptr %i.ba, align 8
  store i32 %i.ai, ptr %i.w, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bb = and i64 %i.av, 4294967295
  %i.bc = getelementptr i8, ptr %i.an, i64 %i.bb  ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.v
  br i1 %i.bd, label %.lr.ph, label %.lr.ph98.preheader, !llvm.loop !58

.lr.ph98.preheader:                               ; preds = %bb.j, %.lr.ph
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %bb.n
  %i.be = phi ptr [ %i.bu, %bb.n ], [ %i.an, %.lr.ph98.preheader ]
  %.196 = phi i64 [ %i.bj, %bb.n ], [ 0, %.lr.ph98.preheader ] ; 2 uses
  %.16995 = phi i32 [ %i.bs, %bb.n ], [ 0, %.lr.ph98.preheader ] ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr i8, ptr %i.c, i64 %.196
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %bb.k, label %._crit_edge99

bb.k:                                             ; preds = %.lr.ph98
  %i.bj = add i64 %.196, 1                        ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.e
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = ptrtoint ptr %i.an to i64
  %i.bm = sub i64 %i.bl, %i.ah
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr i8, ptr %0, i64 192
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = add i32 %i.aj, -1
  store i32 %i.bp, ptr %i.w, align 4
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %4 = or disjoint i32 %.16995, 1
  %5 = zext i32 %4 to i64
  %i.bq = getelementptr i8, ptr %i.an, i64 %5     ; 2 uses
  %.not84 = icmp ult ptr %i.bq, %i.v
  br i1 %.not84, label %bb.n, label %._crit_edge99

bb.n:                                             ; preds = %bb.m
  %i.br = load i8, ptr %i.bq, align 1
  %.not85 = icmp eq i8 %i.br, 0
  %i.bs = add i32 %.16995, 2                      ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.an, i64 %i.bt  ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.v
  %or.cond = select i1 %.not85, i1 %i.bv, i1 false
  br i1 %or.cond, label %.lr.ph98, label %._crit_edge99, !llvm.loop !59

._crit_edge99:                                    ; preds = %.lr.ph98, %bb.m, %bb.n, %.preheader
  %i.bw = getelementptr i8, ptr %i.an, i64 1      ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.v
  br i1 %i.bx, label %bb.g, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %._crit_edge99, %bb.g, %bb.f, %cf_read_record.exit, %bb.i, %bb.l, %bb.b
  %.073 = phi i32 [ 2, %cf_read_record.exit ], [ 0, %bb.b ], [ 1, %bb.l ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge99 ]
  ret i32 %.073
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = getelementptr i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call zeroext i1 @wtap_seek_read(ptr noundef %i.f, i64 noundef %i.h, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.i, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %i.a, align 4
  %i.m = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %2, i64 280
  %.val30 = load i64, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val, i64 %.val30 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not = icmp eq i32 %i.r, 0
  %i.s = getelementptr i8, ptr %0, i64 192
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %.not28 = icmp eq i32 %i.t, 0
  %or.cond = select i1 %.not, i1 %.not28, i1 false
  %i.u = add i32 %i.t, 1
  %i.v = zext i32 %i.u to i64
  %.0 = select i1 %or.cond, i64 0, i64 %i.v       ; 3 uses
  %i.w = getelementptr i8, ptr %1, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp samesign ult i64 %.0, %i.y
  br i1 %i.z, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.p, i64 %.0
  %i.ab = sub nuw nsw i64 %i.y, %.0
  %i.ac = load ptr, ptr %3, align 8
  %i.ad = call ptr @ws_memmem(ptr noundef %i.aa, i64 noundef %i.ab, ptr noundef %i.ac, i64 noundef %i.d) ; 2 uses
  %.not29 = icmp eq ptr %i.ad, null
  br i1 %.not29, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.p to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr i8, ptr %0, i64 192
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = trunc i64 %i.d to i32
  store i32 %i.aj, ptr %i.q, align 4
  br label %.thread

.thread:                                          ; preds = %bb.b, %cf_read_record.exit, %bb.c, %bb.d
  %.026 = phi i32 [ 2, %cf_read_record.exit ], [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.026
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_binary_reverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = getelementptr i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call zeroext i1 @wtap_seek_read(ptr noundef %i.f, i64 noundef %i.h, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.i, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %i.a, align 4
  %i.m = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %2, i64 280
  %.val41 = load i64, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val, i64 %.val41 ; 6 uses
  %i.q = getelementptr i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.d, %i.s
  br i1 %i.t, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 192
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.p, i64 %i.s
  %i.x = sub nsw i64 0, %i.d
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %0, i64 192
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %.not39 = icmp eq i32 %i.aa, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ab = phi i32 [ %.pre, %._crit_edge ], [ %i.aa, %bb.d ]
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.ae, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.not4043 = icmp ult ptr %.0, %i.p
  br i1 %.not4043, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.af = ptrtoint ptr %i.p to i64                ; 2 uses
  %.pre47 = load ptr, ptr %3, align 8
  %invariant.op = sub i64 1, %i.af
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %i.ag = phi ptr [ %.pre47, %.lr.ph ], [ %i.am, %bb.j ]
  %.144 = phi ptr [ %.0, %.lr.ph ], [ %i.at, %bb.j ]
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = ptrtoint ptr %.144 to i64
  %.reass.reass = add i64 %i.aj, %invariant.op
  %i.ak = call ptr @ws_memrchr(ptr noundef %i.p, i32 noundef %i.ai, i64 noundef %.reass.reass) ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %3, align 8               ; 2 uses
  %bcmp = call i32 @bcmp(ptr nonnull %i.ak, ptr %i.am, i64 %i.d)
  %i.an = icmp eq i32 %bcmp, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.af
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr i8, ptr %0, i64 192
  store i32 %i.aq, ptr %i.ar, align 8
  %i.as = trunc nuw i64 %i.d to i32
  store i32 %i.as, ptr %i.u, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr i8, ptr %i.ak, i64 -1     ; 2 uses
  %.not40 = icmp ult ptr %i.at, %i.p
  br i1 %.not40, label %.loopexit, label %bb.g, !llvm.loop !61

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.f, %cf_read_record.exit, %bb.i, %bb.b
  %.034 = phi i32 [ 2, %cf_read_record.exit ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.034
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_wide(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.f = getelementptr i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call zeroext i1 @wtap_seek_read(ptr noundef %i.g, i64 noundef %i.i, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.j, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.a, align 4
  %i.n = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %2, i64 280
  %.val59 = load i64, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val, i64 %.val59 ; 3 uses
  %i.t = zext i32 %i.p to i64
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t     ; 6 uses
  %i.v = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %.not = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %0, i64 192
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not56 = icmp eq i32 %i.y, 0
  %or.cond83 = select i1 %.not, i1 %.not56, i1 false
  %i.z = add i32 %i.y, 1
  %i.aa = zext i32 %i.z to i64
  %.048.idx = select i1 %or.cond83, i64 0, i64 %i.aa
  %.048 = getelementptr i8, ptr %i.s, i64 %.048.idx ; 2 uses
  %i.ab = icmp ult ptr %.048, %i.u
  br i1 %i.ab, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %bb.b
  %i.ac = load i8, ptr %i.c, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = ptrtoint ptr %i.u to i64
  %i.af = trunc i64 %i.e to i32
  %i.ag = shl i32 %i.af, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph68, %._crit_edge
  %.166 = phi ptr [ %.048, %.lr.ph68 ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.ah = ptrtoint ptr %.166 to i64
  %i.ai = sub i64 %i.ae, %i.ah
  %i.aj = call ptr @memchr(ptr noundef %.166, i32 noundef %i.ad, i64 noundef %i.ai) #25 ; 7 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.al = icmp ult ptr %i.aj, %i.u
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.am = phi ptr [ %i.bd, %bb.g ], [ %i.aj, %.preheader ]
  %.062 = phi i64 [ %i.ar, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %.04761 = phi i32 [ %i.bb, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %i.c, i64 %.062
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.062, 1                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.e
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = ptrtoint ptr %i.aj to i64
  %i.au = ptrtoint ptr %i.s to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %0, i64 192
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = add i32 %i.ag, -1
  store i32 %i.ay, ptr %i.v, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %4 = or disjoint i32 %.04761, 1
  %5 = zext i32 %4 to i64
  %i.az = getelementptr i8, ptr %i.aj, i64 %5     ; 2 uses
  %.not57 = icmp ult ptr %i.az, %i.u
  br i1 %.not57, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ba = load i8, ptr %i.az, align 1
  %.not58 = icmp eq i8 %i.ba, 0
  %i.bb = add i32 %.04761, 2                      ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.aj, i64 %i.bc  ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.u
  %or.cond = select i1 %.not58, i1 %i.be, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %bb.f, %bb.g, %.preheader
  %i.bf = getelementptr i8, ptr %i.aj, i64 1      ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.u
  br i1 %i.bg, label %bb.c, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %bb.b, %cf_read_record.exit, %bb.e
  %.050 = phi i32 [ 2, %cf_read_record.exit ], [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  ret i32 %.050
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_wide_reverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.f = getelementptr i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call zeroext i1 @wtap_seek_read(ptr noundef %i.g, i64 noundef %i.i, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.j, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.a, align 4
  %i.n = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp ugt i64 %i.e, %i.q
  br i1 %i.r, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %2, i64 280
  %.val65 = load i64, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val, i64 %.val65 ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 %i.q     ; 6 uses
  %i.w = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %._crit_edge82

._crit_edge82:                                    ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 192
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 0, %i.e
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %0, i64 192
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not62 = icmp eq i32 %i.ab, 0
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge82, %bb.d
  %i.ac = phi i32 [ %.pre, %._crit_edge82 ], [ %i.ab, %bb.d ]
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.052 = phi ptr [ %i.af, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.ag = icmp ult ptr %.052, %i.v
  br i1 %i.ag, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %bb.f
  %i.ah = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ai = trunc nuw i64 %i.e to i32
  %i.aj = shl i32 %i.ai, 1
  %invariant.op = sub i64 1, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph75, %._crit_edge
  %.173 = phi ptr [ %.052, %.lr.ph75 ], [ %i.bi, %._crit_edge ]
  %i.ak = load i8, ptr %i.c, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = ptrtoint ptr %.173 to i64
  %.reass.reass = add i64 %i.am, %invariant.op
  %i.an = call ptr @ws_memrchr(ptr noundef %i.u, i32 noundef %i.al, i64 noundef %.reass.reass) ; 7 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ap = icmp ult ptr %i.an, %i.v
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %i.aq = phi ptr [ %i.bg, %bb.k ], [ %i.an, %.preheader ]
  %.069 = phi i64 [ %i.av, %bb.k ], [ 0, %.preheader ] ; 2 uses
  %.05168 = phi i32 [ %i.be, %bb.k ], [ 0, %.preheader ] ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr i8, ptr %i.c, i64 %.069
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.av = add i64 %.069, 1                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.an to i64
  %i.ay = sub i64 %i.ax, %i.ah
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr i8, ptr %0, i64 192
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = add i32 %i.aj, -1
  store i32 %i.bb, ptr %i.w, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %4 = or disjoint i32 %.05168, 1
  %5 = zext i32 %4 to i64
  %i.bc = getelementptr i8, ptr %i.an, i64 %5     ; 2 uses
  %.not63 = icmp ult ptr %i.bc, %i.v
  br i1 %.not63, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bd = load i8, ptr %i.bc, align 1
  %.not64 = icmp eq i8 %i.bd, 0
  %i.be = add i32 %.05168, 2                      ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.an, i64 %i.bf  ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.v
  %or.cond = select i1 %.not64, i1 %i.bh, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %bb.j, %bb.k, %.preheader
  %i.bi = getelementptr i8, ptr %i.an, i64 1      ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.v
  br i1 %i.bj, label %bb.g, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %._crit_edge, %bb.g, %bb.f, %cf_read_record.exit, %bb.i, %bb.b
  %.054 = phi i32 [ 2, %cf_read_record.exit ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ]
  ret i32 %.054
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_find_field_from_offset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @cf_find_packet_dfilter(ptr noundef initializes((34, 35)) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @find_packet(ptr noundef %0, ptr noundef nonnull @match_dfilter, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 3) i32 @match_dfilter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.epan_dissect, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = getelementptr i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = call zeroext i1 @wtap_seek_read(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.g, label %bb.b, label %cf_read_record.exit

cf_read_record.exit:                              ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.a, align 4
  %i.k = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.l = load ptr, ptr %0, align 8
  call void @epan_dissect_init(ptr noundef nonnull %4, ptr noundef %i.l, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @epan_dissect_prime_with_dfilter(ptr noundef nonnull %4, ptr noundef %3)
  %i.m = getelementptr i8, ptr %0, i64 48
  %i.n = load i16, ptr %i.m, align 8
  %i.o = zext i16 %i.n to i32
  call void @epan_dissect_run(ptr noundef nonnull %4, i32 noundef %i.o, ptr noundef %2, ptr noundef %1, ptr noundef null)
  %i.p = call zeroext i1 @dfilter_apply_edt(ptr noundef %3, ptr noundef nonnull %4)
  %i.q = zext i1 %i.p to i32
  call void @epan_dissect_cleanup(ptr noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %cf_read_record.exit, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ 2, %cf_read_record.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @cf_find_packet_dfilter_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call zeroext i1 @dfilter_compile_full(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 6, ptr noundef nonnull @__func__.cf_find_packet_dfilter_string)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call fastcc zeroext i1 @find_packet(ptr noundef %0, ptr noundef nonnull @match_dfilter, ptr noundef nonnull %i.c, i32 noundef %2, i1 noundef zeroext true)
  %i.f = load ptr, ptr %i.a, align 8
  call void @dfilter_free(ptr noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ %i.e, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @cf_find_packet_marked(ptr noundef initializes((34, 35)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @find_packet(ptr noundef %0, ptr noundef nonnull @match_marked, ptr noundef null, i32 noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @match_marked(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 53
  %i.b = load i16, ptr %i.a, align 1
  %i.c = lshr i16 %i.b, 4
  %.lobit = and i16 %i.c, 1
  %i.d = zext nneg i16 %.lobit to i32
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @cf_find_packet_time_reference(ptr noundef initializes((34, 35)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @find_packet(ptr noundef %0, ptr noundef nonnull @match_time_reference, ptr noundef null, i32 noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @match_time_reference(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 53
  %i.b = load i16, ptr %i.a, align 1
  %i.c = lshr i16 %i.b, 5
  %.lobit = and i16 %i.c, 1
  %i.d = zext nneg i16 %.lobit to i32
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @cf_goto_frame(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @statusbar_push_temporary_msg(ptr noundef nonnull @.str.37)
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @frame_data_sequence_find(ptr noundef nonnull %i.c, i32 noundef %1) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @statusbar_push_temporary_msg(ptr noundef nonnull @.str.38, i32 noundef %1)
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.e, i64 53
  %i.h = load i16, ptr %i.g, align 1
  %i.i = and i16 %i.h, 1
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %0, i64 280
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %or.cond = or i1 %2, %i.l
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @statusbar_push_temporary_msg(ptr noundef nonnull @.str.39, i32 noundef %1)
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %i.e, i64 92       ; 3 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @statusbar_push_temporary_msg(ptr noundef nonnull @.str.40, i32 noundef %1, i32 noundef %i.k)
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.p = add i32 %1, 1                            ; 2 uses
  %factor = shl i32 %1, 1
  %i.q = xor i32 %i.n, -1
  %i.r = add i32 %factor, %i.q                    ; 2 uses
  %.not6171 = icmp ugt i32 %i.p, %i.r
  br i1 %.not6171, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.p
  %.04273 = phi i32 [ %.244, %bb.p ], [ %i.r, %bb.k ] ; 2 uses
  %.04572 = phi i32 [ %.247, %bb.p ], [ %i.p, %bb.k ] ; 3 uses
  %i.s = add i32 %.04273, %.04572
  %i.t = lshr i32 %i.s, 1                         ; 3 uses
  %i.u = load ptr, ptr %i.b, align 8
end_hunk_0
