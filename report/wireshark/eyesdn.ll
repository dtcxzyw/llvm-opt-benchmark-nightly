Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/eyesdn?download=true
inline.NumInlined: 18
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@read_eyesdn_rec:.lr.ph.i
  br label %.critedge

bb.aj:                                            ; preds = %.lr.ph.i92
  store i32 -13, ptr %2, align 4
  %i.db = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #6 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(40) %i.db, ptr noundef nonnull align 1 dereferenceable(40) @.str.3, i64 noundef 40, i1 noundef false) #5
  store ptr %i.db, ptr %3, align 8
  br label %.critedge

bb.ak:                                            ; preds = %.lr.ph.i92
  %i.dc = tail call i32 @file_getc(ptr noundef %0) ; 2 uses
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.de = tail call i32 @file_error(ptr noundef %0, ptr noundef %3) ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %spec.select30.i97 = select i1 %i.df, i32 -12, i32 %i.de
  store i32 %spec.select30.i97, ptr %2, align 4
  br label %.critedge

bb.am:                                            ; preds = %bb.ak
  %i.dg = add i32 %i.dc, 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i92
  %.0.i94 = phi i32 [ %i.dg, %bb.am ], [ %i.cy, %.lr.ph.i92 ]
  %i.dh = trunc i32 %.0.i94 to i8
  %i.di = getelementptr i8, ptr %i.a, i64 %indvars.iv.i93
  store i8 %i.dh, ptr %i.di, align 1
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, 53
  br i1 %exitcond.not.i96, label %esc_read.exit99, label %.lr.ph.i92, !llvm.loop !7

esc_read.exit99:                                  ; preds = %bb.an
  %i.dj = tail call i64 @file_seek(ptr noundef %0, i64 noundef %i.cx, i32 noundef 0, ptr noundef %2)
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %esc_read.exit99
  %i.dl = getelementptr i8, ptr %1, i64 56
  store i32 14, ptr %i.dl, align 8
  store i32 1, ptr %i.c, align 8
  %i.dm = getelementptr i8, ptr %1, i64 68
  store i8 0, ptr %i.dm, align 4
  %i.dn = getelementptr i8, ptr %1, i64 69
  store i8 8, ptr %i.dn, align 1
  %i.do = getelementptr i8, ptr %1, i64 70
  store i8 0, ptr %i.do, align 2
  %i.dp = load i8, ptr %i.a, align 16             ; 2 uses
  %i.dq = and i8 %i.dp, 15
  %narrow = mul nuw i8 %i.dq, 17
  %i.dr = zext i8 %narrow to i16
  %i.ds = getelementptr i8, ptr %1, i64 72
  store i16 %i.dr, ptr %i.ds, align 8
  %i.dt = zext i8 %i.dp to i16                    ; 2 uses
  %i.du = shl nuw nsw i16 %i.dt, 4
  %i.dv = and i16 %i.du, 240
  %i.dw = add nuw nsw i16 %i.dv, %i.dt
  %i.dx = getelementptr i8, ptr %1, i64 74
  store i16 %i.dw, ptr %i.dx, align 2
  %i.dy = and i8 %i.ax, 1
  %i.dz = zext nneg i8 %i.dy to i16
  %i.ea = getelementptr i8, ptr %1, i64 78
  store i16 %i.dz, ptr %i.ea, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.au

bb.ap:                                            ; preds = %esc_read.exit
  %i.eb = and i8 %i.ax, 1
  store i8 %i.eb, ptr %i.c, align 8
  %i.ec = getelementptr i8, ptr %1, i64 65
  store i8 2, ptr %i.ec, align 1
  %i.ed = trunc i32 %.0.i.8 to i16
  %i.ee = and i16 %i.ed, 255
  %i.ef = getelementptr i8, ptr %1, i64 66
  store i16 %i.ee, ptr %i.ef, align 2
  %i.eg = getelementptr i8, ptr %1, i64 56
  store i32 75, ptr %i.eg, align 8
  br label %bb.au

bb.aq:                                            ; preds = %esc_read.exit
  %i.eh = and i8 %i.ax, 1
  store i8 %i.eh, ptr %i.c, align 8
  %i.ei = getelementptr i8, ptr %1, i64 65
  store i8 %i.as, ptr %i.ei, align 1
  %i.ej = getelementptr i8, ptr %1, i64 56
  store i32 117, ptr %i.ej, align 8
  br label %bb.au

bb.ar:                                            ; preds = %esc_read.exit
  %i.ek = and i8 %i.ax, 1
  store i8 %i.ek, ptr %i.c, align 8
  %i.el = getelementptr i8, ptr %1, i64 65
  store i8 %i.as, ptr %i.el, align 1
  %i.em = getelementptr i8, ptr %1, i64 56
  store i32 117, ptr %i.em, align 8
  br label %bb.au

bb.as:                                            ; preds = %esc_read.exit
  %i.en = and i8 %i.ax, 1
  store i8 %i.en, ptr %i.c, align 8
  %i.eo = getelementptr i8, ptr %1, i64 65
  store i8 %i.as, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %1, i64 56
  store i32 143, ptr %i.ep, align 8
  br label %bb.au

bb.at:                                            ; preds = %esc_read.exit
  %i.eq = and i8 %i.ax, 1
  store i8 %i.eq, ptr %i.c, align 8
  %i.er = getelementptr i8, ptr %1, i64 65
  store i8 %i.as, ptr %i.er, align 1
  %i.es = getelementptr i8, ptr %1, i64 56
  store i32 142, ptr %i.es, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.ab, %bb.ad, %bb.ae, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.ac, %bb.ao
  %i.et = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.et, align 4
  %i.eu = getelementptr i8, ptr %1, i64 16
  store i64 %i.ch, ptr %i.eu, align 8
  %i.ev = mul i32 %i.bq, 1000
  %i.ew = getelementptr i8, ptr %1, i64 24
  store i32 %i.ev, ptr %i.ew, align 8
  store i32 %i.cl, ptr %i.b, align 8
  %i.ex = getelementptr i8, ptr %1, i64 52
  store i32 %i.cl, ptr %i.ex, align 4
  %i.ey = getelementptr i8, ptr %1, i64 264       ; 2 uses
  %i.ez = zext i16 %i.ck to i64                   ; 3 uses
  tail call void @ws_buffer_assure_space(ptr noundef %i.ey, i64 noundef %i.ez)
  %.val.i = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %1, i64 288       ; 3 uses
  %.val9.i = load i64, ptr %i.fa, align 8         ; 2 uses
  %i.fb = getelementptr i8, ptr %.val.i, i64 %.val9.i
  %i.fc = icmp eq i16 %i.ck, 0
  br i1 %i.fc, label %esc_read.exit107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.au, %bb.ba
  %indvars.iv.i101 = phi i64 [ %indvars.iv.next.i103, %bb.ba ], [ 0, %bb.au ] ; 2 uses
  %i.fd = tail call i32 @file_getc(ptr noundef %0) ; 2 uses
  switch i32 %i.fd, label %bb.ba [
    i32 -1, label %bb.av
    i32 255, label %bb.aw
    i32 254, label %bb.ax
  ]

bb.av:                                            ; preds = %.lr.ph.i100
  %i.fe = tail call i32 @file_error(ptr noundef %0, ptr noundef %3) ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  %spec.select.i106 = select i1 %i.ff, i32 -12, i32 %i.fe
  store i32 %spec.select.i106, ptr %2, align 4
  br label %esc_read_append_buffer.exit

bb.aw:                                            ; preds = %.lr.ph.i100
  store i32 -13, ptr %2, align 4
  %i.fg = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #6 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(40) %i.fg, ptr noundef nonnull align 1 dereferenceable(40) @.str.3, i64 noundef 40, i1 noundef false) #5
  store ptr %i.fg, ptr %3, align 8
  br label %esc_read_append_buffer.exit

bb.ax:                                            ; preds = %.lr.ph.i100
  %i.fh = tail call i32 @file_getc(ptr noundef %0) ; 2 uses
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fj = tail call i32 @file_error(ptr noundef %0, ptr noundef %3) ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  %spec.select30.i105 = select i1 %i.fk, i32 -12, i32 %i.fj
  store i32 %spec.select30.i105, ptr %2, align 4
  br label %esc_read_append_buffer.exit

bb.az:                                            ; preds = %bb.ax
  %i.fl = add i32 %i.fh, 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i100
  %.0.i102 = phi i32 [ %i.fl, %bb.az ], [ %i.fd, %.lr.ph.i100 ]
  %i.fm = trunc i32 %.0.i102 to i8
  %i.fn = getelementptr i8, ptr %i.fb, i64 %indvars.iv.i101
  store i8 %i.fm, ptr %i.fn, align 1
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i103, %i.ez
  br i1 %exitcond.not.i104, label %esc_read.exit107.loopexit, label %.lr.ph.i100, !llvm.loop !7

esc_read.exit107.loopexit:                        ; preds = %bb.ba
  %.pre = load i64, ptr %i.fa, align 8
  br label %esc_read.exit107

esc_read.exit107:                                 ; preds = %esc_read.exit107.loopexit, %bb.au
  %i.fo = phi i64 [ %.pre, %esc_read.exit107.loopexit ], [ %.val9.i, %bb.au ]
  %i.fp = add i64 %i.fo, %i.ez
  store i64 %i.fp, ptr %i.fa, align 8
  br label %esc_read_append_buffer.exit

.critedge:                                        ; preds = %bb.aj, %bb.al, %bb.ai, %esc_read.exit99, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %esc_read_append_buffer.exit

esc_read_append_buffer.exit:                      ; preds = %bb.b, %bb.d, %bb.a, %esc_read.exit107, %bb.ay, %bb.aw, %bb.av, %.critedge
  %.1 = phi i1 [ false, %.critedge ], [ false, %bb.aw ], [ true, %esc_read.exit107 ], [ false, %bb.av ], [ false, %bb.ay ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @file_getc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @file_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_assure_space(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal range(i32 -8, 1) i32 @eyesdn_dump_can_write_encap(i32 noundef %0) #4 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 17, label %bb.c
    i32 110, label %bb.c
    i32 117, label %bb.c
    i32 14, label %bb.c
    i32 12, label %bb.c
    i32 75, label %bb.c
    i32 143, label %bb.c
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ -8, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @eyesdn_dump_open(ptr noundef initializes((64, 72)) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  store ptr @eyesdn_dump, ptr %i.a, align 8
  %i.b = tail call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef @eyesdn_hdr_magic, i64 noundef 6, ptr noundef %1) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @eyesdn_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 49 uses
  %i.c = getelementptr i8, ptr %1, i64 64
  %i.d = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -24, ptr %2, align 4
  %i.e = tail call ptr @wtap_unwritable_rec_type_err_string(ptr noundef %1)
  store ptr %i.e, ptr %3, align 8
  br label %bb.bb

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = icmp ugt i32 %i.g, 65535
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -22, ptr %2, align 4
  br label %bb.bb

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = getelementptr i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sdiv i32 %i.k, 1000                      ; 3 uses
  %i.m = load i64, ptr %i.i, align 8              ; 5 uses
  %i.n = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.o = getelementptr i8, ptr %1, i64 65
  %i.p = load i8, ptr %i.o, align 1               ; 7 uses
  %i.q = getelementptr i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.m [
    i32 17, label %bb.n
    i32 110, label %bb.f
    i32 117, label %bb.g
    i32 14, label %bb.h
    i32 12, label %bb.i
    i32 75, label %bb.j
    i32 143, label %bb.k
    i32 142, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  store i32 -8, ptr %2, align 4
  br label %bb.bb

bb.n:                                             ; preds = %bb.e, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.028.shrunk = phi i8 [ %i.p, %bb.l ], [ %i.p, %bb.f ], [ %i.p, %bb.g ], [ -128, %bb.h ], [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.e ] ; 2 uses
  %.0 = phi i8 [ 16, %bb.l ], [ 2, %bb.f ], [ 10, %bb.g ], [ 6, %bb.h ], [ 4, %bb.i ], [ 8, %bb.j ], [ 14, %bb.k ], [ 0, %bb.e ]
  %i.s = lshr i32 %i.l, 8
  %i.t = trunc i32 %i.s to i8                     ; 2 uses
  %i.u = trunc i32 %i.l to i8                     ; 2 uses
  %i.v = lshr i64 %i.m, 32
  %i.w = trunc i64 %i.v to i8                     ; 2 uses
  %i.x = lshr i64 %i.m, 24
  %i.y = trunc i64 %i.x to i8                     ; 2 uses
  %i.z = lshr i64 %i.m, 16
  %i.aa = trunc i64 %i.z to i8                    ; 2 uses
  %i.ab = lshr i64 %i.m, 8
  %i.ac = trunc i64 %i.ab to i8                   ; 2 uses
  %i.ad = trunc i64 %i.m to i8                    ; 2 uses
  %i.ae = or disjoint i8 %.0, %i.n
  %i.af = lshr i32 %i.g, 8
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = trunc i32 %i.g to i8                    ; 2 uses
  %i.ai = tail call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef @eyesdn_dump.start_flag, i64 noundef 1, ptr noundef %2)
  br i1 %i.ai, label %.lr.ph.i, label %bb.bb

.lr.ph.i:                                         ; preds = %bb.n
  %i.aj = lshr i32 %i.l, 16
  %i.ak = trunc i32 %i.aj to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i8 %i.ak, ptr %i.b, align 1
  %or.cond.i = icmp ugt i8 %i.ak, -3
  br i1 %or.cond.i, label %bb.au, label %bb.aw

.lr.ph.i.1:                                       ; preds = %bb.aw
  store i8 %i.t, ptr %i.b, align 1
  %or.cond.i.1 = icmp ugt i8 %i.t, -3
  br i1 %or.cond.i.1, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.1
  %i.al = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef @esc_write.esc, i64 noundef 1, ptr noundef %2)
  br i1 %i.al, label %bb.p, label %esc_write.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.am = load i8, ptr %i.b, align 1
  %i.an = add i8 %i.am, -2
  store i8 %i.an, ptr %i.b, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.1
  %i.ao = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef %2)
  br i1 %i.ao, label %.lr.ph.i.2, label %esc_write.exit.thread

.lr.ph.i.2:                                       ; preds = %bb.q
  store i8 %i.u, ptr %i.b, align 1
  %or.cond.i.2 = icmp ugt i8 %i.u, -3
  br i1 %or.cond.i.2, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph.i.2
  %i.ap = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef @esc_write.esc, i64 noundef 1, ptr noundef %2)
  br i1 %i.ap, label %bb.s, label %esc_write.exit.thread

bb.s:                                             ; preds = %bb.r
end_hunk_0
