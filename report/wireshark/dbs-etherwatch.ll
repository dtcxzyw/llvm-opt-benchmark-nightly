Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dbs-etherwatch?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@parse_dbs_etherwatch_packet:bb.a
  %spec.select136 = select i1 %i.dk, i32 -12, i32 %i.dj
  store i32 %spec.select136, ptr %3, align 4
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.dl = call fastcc i32 @parse_single_hex_dump_line(ptr noundef nonnull %i.a, ptr noundef %i.e, i32 noundef %.0) ; 2 uses
  %.not132 = icmp eq i32 %i.dl, 0
  br i1 %.not132, label %g_strdup_inline.exit138, label %bb.af

g_strdup_inline.exit138:                          ; preds = %bb.ae
  store i32 -13, ptr %3, align 4
  %i.dm = call noalias dereferenceable_or_null(44) ptr @g_malloc(i64 noundef 44) #12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(44) %i.dm, ptr noundef nonnull align 1 dereferenceable(44) @.str.18, i64 noundef 44, i1 noundef false) #10
  store ptr %i.dm, ptr %4, align 8
  br label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.dn = add i32 %i.dl, %.0                      ; 2 uses
  %i.do = icmp ugt i32 %i.dn, %i.an
  br i1 %i.do, label %g_strdup_inline.exit, label %bb.ab, !llvm.loop !11

g_strdup_inline.exit:                             ; preds = %bb.af
  store i32 -13, ptr %3, align 4
  %i.dp = call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.dp, ptr noundef nonnull align 1 dereferenceable(53) @.str.19, i64 noundef 53, i1 noundef false) #10
  store ptr %i.dp, ptr %4, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %g_strdup_inline.exit, %g_strdup_inline.exit138, %bb.ad, %bb.z, %g_strdup_inline.exit140, %g_strdup_inline.exit142, %g_strdup_inline.exit144, %g_strdup_inline.exit146, %g_strdup_inline.exit148, %g_strdup_inline.exit150, %g_strdup_inline.exit152, %g_strdup_inline.exit154, %g_strdup_inline.exit156, %bb.h, %g_strdup_inline.exit158, %g_strdup_inline.exit160, %g_strdup_inline.exit162, %bb.b
  %.0112 = phi i1 [ false, %bb.b ], [ false, %g_strdup_inline.exit160 ], [ false, %g_strdup_inline.exit158 ], [ false, %bb.h ], [ false, %g_strdup_inline.exit156 ], [ false, %g_strdup_inline.exit154 ], [ false, %g_strdup_inline.exit152 ], [ false, %g_strdup_inline.exit150 ], [ false, %g_strdup_inline.exit148 ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %g_strdup_inline.exit ], [ false, %g_strdup_inline.exit138 ], [ false, %g_strdup_inline.exit162 ], [ false, %g_strdup_inline.exit146 ], [ false, %g_strdup_inline.exit144 ], [ false, %g_strdup_inline.exit142 ], [ false, %g_strdup_inline.exit140 ], [ true, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.0112
}

; Function Attrs: null_pointer_is_valid
declare i32 @file_getc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_assure_space(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @parse_hex_dump(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef signext range(i8 32, 46) %2, i8 noundef signext range(i8 32, 94) %3) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %.val45 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 %.val45 ; 2 uses
  %i.c = load i8, ptr %0, align 1                 ; 2 uses
  %.not48 = icmp eq i8 %i.c, %3
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr @g_ascii_table, align 8    ; 3 uses
  br label %bb.b

.loopexit:                                        ; preds = %bb.k
  %i.e = add i32 %.050, 1                         ; 2 uses
  %.not = icmp eq i8 %i.ao, %3
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !12

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.f = phi i8 [ %i.c, %.lr.ph ], [ %i.ao, %.loopexit ] ; 3 uses
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.e, %.loopexit ] ; 3 uses
  %.03849 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ] ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr [2 x i8], ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = and i32 %i.j, 1024
  %.not41 = icmp eq i32 %i.k, 0
  br i1 %.not41, label %.loopexit46, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.03849, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr [2 x i8], ptr %i.d, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = and i16 %i.r, 1024
  %.not42 = icmp eq i16 %i.s, 0
  br i1 %.not42, label %.loopexit46, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.j, 8
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = shl i8 %i.f, 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call signext i8 @g_ascii_toupper(i8 noundef signext %i.f) #13
  %i.w = shl i8 %i.v, 4
  %i.x = add i8 %i.w, -112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i8 [ %i.x, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.y = sext i32 %.050 to i64
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y
  store i8 %.sink, ptr %i.z, align 1
  %i.aa = load i8, ptr %i.n, align 1              ; 3 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [2 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, 8
  %.not44 = icmp eq i16 %i.ae, 0
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add i8 %i.aa, -48
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call signext i8 @g_ascii_toupper(i8 noundef signext %i.aa) #13
  %i.ah = add i8 %i.ag, -55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink58 = phi i8 [ %i.ah, %bb.i ], [ %i.af, %bb.h ]
  %i.ai = sext i32 %.050 to i64
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ai
  %i.ak = add i8 %.sink58, %.sink
  store i8 %i.ak, ptr %i.aj, align 1
  %i.al = add i32 %.03849, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i32 [ %i.al, %bb.j ], [ %i.aq, %bb.k ] ; 3 uses
  %i.am = sext i32 %.1 to i64
  %i.an = getelementptr i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1             ; 3 uses
  %i.ap = icmp eq i8 %i.ao, %2
  %i.aq = add i32 %.1, 1
  br i1 %i.ap, label %bb.k, label %.loopexit, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load i64, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ar = phi i64 [ %.val45, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %._crit_edge.loopexit ] ; 2 uses
  %i.as = sext i32 %.0.lcssa to i64
  %i.at = add i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.a, align 8
  br label %.loopexit46

.loopexit46:                                      ; preds = %bb.b, %bb.c, %._crit_edge
  %.039 = phi i32 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.039
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @parse_single_hex_dump_line(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2147483647) %2) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 91                      ; 2 uses
  %. = select i1 %i.h, i32 21, i32 1              ; 2 uses
  br i1 %i.h, label %.lr.ph, label %.preheader42

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.o = getelementptr i8, ptr %0, i64 5
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.r = getelementptr i8, ptr %0, i64 6
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.u = getelementptr i8, ptr %0, i64 7
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.aa = getelementptr i8, ptr %0, i64 9
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.ad = getelementptr i8, ptr %0, i64 10
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.ag = getelementptr i8, ptr %0, i64 11
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %.loopexit, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %.lr.ph.9
  %i.aj = getelementptr i8, ptr %0, i64 12
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %.lr.ph.10
  %i.am = getelementptr i8, ptr %0, i64 13
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %.lr.ph.11
  %i.ap = getelementptr i8, ptr %0, i64 14
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.loopexit, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %.lr.ph.12
  %i.as = getelementptr i8, ptr %0, i64 15
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %.lr.ph.13
  %i.av = getelementptr i8, ptr %0, i64 16
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.loopexit, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %.lr.ph.14
  %i.ay = getelementptr i8, ptr %0, i64 17
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.lr.ph.16

.lr.ph.16:                                        ; preds = %.lr.ph.15
  %i.bb = getelementptr i8, ptr %0, i64 18
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %.loopexit, label %.lr.ph.17

.lr.ph.17:                                        ; preds = %.lr.ph.16
  %i.be = getelementptr i8, ptr %0, i64 19
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %.lr.ph.18

.lr.ph.18:                                        ; preds = %.lr.ph.17
  %i.bh = getelementptr i8, ptr %0, i64 20
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %.loopexit, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph.18, %bb.c
  %3 = load ptr, ptr @g_ascii_table, align 8      ; 5 uses
  %4 = zext nneg i32 %. to i64                    ; 5 uses
  %5 = add nuw nsw i32 %., 5
  %i.bk = getelementptr i8, ptr %0, i64 %4
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr [2 x i8], ptr %3, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = and i32 %i.bp, 256
  %.not40 = icmp eq i32 %i.bq, 0
  br i1 %.not40, label %bb.d, label %bb.f

.lr.ph:                                           ; preds = %bb.c
  %i.br = getelementptr i8, ptr %0, i64 2
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.loopexit, label %.lr.ph.1

bb.d:                                             ; preds = %.preheader42
  %i.bu = and i32 %i.bp, 8
  %.not41 = icmp eq i32 %i.bu, 0
  br i1 %.not41, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = sext i8 %i.bl to i32
  %i.bw = add nsw i32 %i.bv, -48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader42
  %.1 = phi i32 [ 0, %.preheader42 ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 %4
  %i.by = getelementptr i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr [2 x i8], ptr %3, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 256
  %.not40.1 = icmp eq i32 %i.ce, 0
  br i1 %.not40.1, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cf = and i32 %i.cd, 8
  %.not41.1 = icmp eq i32 %i.cf, 0
  br i1 %.not41.1, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = mul nsw i32 %.1, 10
  %i.ch = sext i8 %i.bz to i32
  %i.ci = add nsw i32 %i.cg, -48
  %i.cj = add nsw i32 %i.ci, %i.ch
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1.1 = phi i32 [ %.1, %bb.f ], [ %i.cj, %bb.h ] ; 2 uses
  %i.ck = getelementptr i8, ptr %0, i64 %4
  %i.cl = getelementptr i8, ptr %i.ck, i64 2
  %i.cm = load i8, ptr %i.cl, align 1             ; 2 uses
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr [2 x i8], ptr %3, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 256
  %.not40.2 = icmp eq i32 %i.cr, 0
  br i1 %.not40.2, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cs = and i32 %i.cq, 8
  %.not41.2 = icmp eq i32 %i.cs, 0
  br i1 %.not41.2, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = mul nsw i32 %.1.1, 10
  %i.cu = sext i8 %i.cm to i32
  %i.cv = add nsw i32 %i.ct, -48
  %i.cw = add nsw i32 %i.cv, %i.cu
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1.2 = phi i32 [ %.1.1, %bb.i ], [ %i.cw, %bb.k ] ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 %4
  %i.cy = getelementptr i8, ptr %i.cx, i64 3
  %i.cz = load i8, ptr %i.cy, align 1             ; 2 uses
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr [2 x i8], ptr %3, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %i.de = and i32 %i.dd, 256
  %.not40.3 = icmp eq i32 %i.de, 0
  br i1 %.not40.3, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.df = and i32 %i.dd, 8
  %.not41.3 = icmp eq i32 %i.df, 0
  br i1 %.not41.3, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = mul nsw i32 %.1.2, 10
  %i.dh = sext i8 %i.cz to i32
  %i.di = add nsw i32 %i.dg, -48
  %i.dj = add nsw i32 %i.di, %i.dh
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.1.3 = phi i32 [ %.1.2, %bb.l ], [ %i.dj, %bb.n ] ; 2 uses
  %i.dk = getelementptr i8, ptr %0, i64 %4
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %i.dm = load i8, ptr %i.dl, align 1             ; 2 uses
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr [2 x i8], ptr %3, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = and i32 %i.dq, 256
  %.not40.4 = icmp eq i32 %i.dr, 0
  br i1 %.not40.4, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ds = and i32 %i.dq, 8
  %.not41.4 = icmp eq i32 %i.ds, 0
  br i1 %.not41.4, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = mul nsw i32 %.1.3, 10
  %i.du = sext i8 %i.dm to i32
  %i.dv = add nsw i32 %i.dt, -48
  %i.dw = add nsw i32 %i.dv, %i.du
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.1.4 = phi i32 [ %.1.3, %bb.o ], [ %i.dw, %bb.q ]
  %.not = icmp eq i32 %.1.4, %2
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.r, %bb.s
  %.236 = phi i32 [ %i.ea, %bb.s ], [ %5, %bb.r ] ; 3 uses
  %i.dx = sext i32 %.236 to i64
  %i.dy = getelementptr i8, ptr %0, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  switch i8 %i.dz, label %bb.s [
    i8 91, label %bb.t
    i8 0, label %.loopexit
  ]

bb.s:                                             ; preds = %.preheader
  %i.ea = add i32 %.236, 1
  br label %.preheader, !llvm.loop !14

bb.t:                                             ; preds = %.preheader
  %i.eb = add i32 %.236, 1
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr %0, i64 %i.ec
  %i.ee = tail call fastcc i32 @parse_hex_dump(ptr noundef %i.ed, ptr noundef %1, i8 noundef signext 32, i8 noundef signext 93)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %.lr.ph.13, %.lr.ph.14, %.lr.ph.15, %.lr.ph.16, %.lr.ph.17, %.lr.ph.18, %.preheader, %bb.a, %bb.b, %bb.d, %bb.g, %bb.j, %bb.m, %bb.p, %bb.r, %bb.t
  %.037 = phi i32 [ %i.ee, %bb.t ], [ 0, %.preheader ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %.lr.ph.18 ], [ 0, %.lr.ph.17 ], [ 0, %.lr.ph.16 ], [ 0, %.lr.ph.15 ], [ 0, %.lr.ph.14 ], [ 0, %.lr.ph.13 ], [ 0, %.lr.ph.12 ], [ 0, %.lr.ph.11 ], [ 0, %.lr.ph.10 ], [ 0, %.lr.ph.9 ], [ 0, %.lr.ph.8 ], [ 0, %.lr.ph.7 ], [ 0, %.lr.ph.6 ], [ 0, %.lr.ph.5 ], [ 0, %.lr.ph.4 ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ]
  ret i32 %.037
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare signext i8 @g_ascii_toupper(i8 noundef signext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare i64 @file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { allocsize(0) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
end_hunk_0
