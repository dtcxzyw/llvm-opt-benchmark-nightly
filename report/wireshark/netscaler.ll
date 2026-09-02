Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/netscaler?download=true
inline.NumInlined: 134
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nstrace_read_v10:bb.a
nstrace_read_page.exit:                           ; preds = %bb.ab
  %i.fk = getelementptr i8, ptr %i.fa, i64 28
  store i32 %i.ff, ptr %i.fk, align 4
  br label %bb.b, !llvm.loop !11

.critedge:                                        ; preds = %._crit_edge, %bb.ac, %bb.aa, %.thread245, %nstrace_ensure_buflen.exit240, %.thread243, %nstrace_ensure_buflen.exit237, %.thread, %nstrace_ensure_buflen.exit, %g_strdup_inline.exit196, %g_strdup_inline.exit194, %bb.p, %g_strdup_inline.exit202, %g_strdup_inline.exit200, %bb.i, %g_strdup_inline.exit198, %g_strdup_inline.exit204
  %.8 = phi i1 [ false, %.thread245 ], [ false, %nstrace_ensure_buflen.exit237 ], [ false, %g_strdup_inline.exit204 ], [ false, %nstrace_ensure_buflen.exit240 ], [ false, %g_strdup_inline.exit198 ], [ true, %bb.i ], [ false, %.thread ], [ true, %bb.p ], [ false, %.thread243 ], [ false, %nstrace_ensure_buflen.exit ], [ false, %g_strdup_inline.exit202 ], [ false, %g_strdup_inline.exit200 ], [ false, %g_strdup_inline.exit196 ], [ false, %g_strdup_inline.exit194 ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %._crit_edge ]
  ret i1 %.8
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @nstrace_seek_read_v10(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef initializes((0, 4)) %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.nspr_hd_v10, align 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i32 0, ptr %3, align 4
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @file_seek(ptr noundef %i.b, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call zeroext i1 @wtap_read_bytes(ptr noundef %i.e, ptr noundef nonnull %5, i32 noundef 4, ptr noundef %3, ptr noundef %4)
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 2
  %.val56 = load i16, ptr %i.g, align 1           ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 264        ; 3 uses
  call void @ws_buffer_append(ptr noundef %i.h, ptr noundef nonnull %5, i64 noundef 4)
  %i.i = icmp ugt i16 %.val56, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext i16 %.val56 to i32
  %i.k = add nsw i32 %i.j, -4
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %i.l, ptr noundef %i.h, i32 noundef %i.k, ptr noundef %3, ptr noundef %4)
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val58 = load ptr, ptr %i.h, align 8
  %i.n = getelementptr i8, ptr %2, i64 280
  %.val59 = load i64, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val58, i64 %.val59 ; 4 uses
  %.val54 = load i16, ptr %i.o, align 1
  switch i16 %.val54, label %bb.h [
    i16 784, label %bb.f
    i16 785, label %bb.f
    i16 786, label %bb.f
    i16 788, label %bb.g
    i16 789, label %bb.g
    i16 790, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.p = getelementptr i8, ptr %0, i64 168
  %i.q = load i32, ptr %i.p, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.q)
  %i.r = call ptr @wtap_block_create(i32 noundef 5)
  %i.s = getelementptr i8, ptr %2, i64 216
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %2, i64 4
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.o, i64 2
  %.val52 = load i16, ptr %i.u, align 1
  %i.v = zext i16 %.val52 to i32                  ; 2 uses
  %i.w = getelementptr i8, ptr %2, i64 48
  %i.x = getelementptr i8, ptr %2, i64 52
  store i32 %i.v, ptr %i.x, align 4
  store i32 %i.v, ptr %i.w, align 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.y = getelementptr i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.z)
  %i.aa = call ptr @wtap_block_create(i32 noundef 5)
  %i.ab = getelementptr i8, ptr %2, i64 216
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %2, i64 4
  store i32 2, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.o, i64 12
  %.val50 = load i16, ptr %i.ad, align 1
  %i.ae = zext i16 %.val50 to i32
  %i.af = add nuw nsw i32 %i.ae, 16
  %i.ag = getelementptr i8, ptr %2, i64 48
  %i.ah = getelementptr i8, ptr %2, i64 52
  store i32 %i.af, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %i.o, i64 2
  %.val = load i16, ptr %i.ai, align 1
  %i.aj = zext i16 %.val to i32
  store i32 %i.aj, ptr %i.ag, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i16 [ 12, %bb.f ], [ 16, %bb.g ]
  %i.ak = getelementptr i8, ptr %2, i64 76
  store <4 x i8> <i8 4, i8 4, i8 0, i8 2>, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %2, i64 80
  store i16 %.sink, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %2, i64 84
  store i8 16, ptr %i.am, align 4
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.e ], [ true, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @nstrace_read_v20(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr noundef initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56       ; 15 uses
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 24       ; 15 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 28       ; 18 uses
  %i.i = load i32, ptr %i.h, align 4
  store i32 0, ptr %2, align 4
  store ptr null, ptr %3, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 40       ; 4 uses
  %i.k = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  %i.l = getelementptr i8, ptr %i.b, i64 32       ; 9 uses
  %i.m = getelementptr i8, ptr %i.b, i64 16       ; 16 uses
  %i.n = getelementptr i8, ptr %i.b, i64 64
  br label %bb.b

bb.b:                                             ; preds = %nstrace_read_page.exit, %bb.a
  %.0974 = phi i32 [ %i.g, %bb.a ], [ 0, %nstrace_read_page.exit ] ; 2 uses
  %.0973 = phi i32 [ %i.i, %bb.a ], [ %spec.select, %nstrace_read_page.exit ] ; 32 uses
  %i.o = icmp ult i32 %.0974, %.0973
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.fx
  %.19751353 = phi i32 [ %.5979, %bb.fx ], [ %.0974, %bb.b ] ; 39 uses
  %i.p = zext i32 %.19751353 to i64               ; 15 uses
  %i.q = getelementptr i8, ptr %i.e, i64 %i.p     ; 102 uses
  %i.r = load i8, ptr %i.q, align 1
  switch i8 %i.r, label %bb.fs [
    i8 -64, label %bb.c
    i8 -63, label %bb.c
    i8 -62, label %bb.c
    i8 -60, label %bb.p
    i8 -59, label %bb.p
    i8 -58, label %bb.p
    i8 -48, label %bb.ac
    i8 -47, label %bb.ac
    i8 -46, label %bb.ac
    i8 -44, label %bb.ap
    i8 -43, label %bb.ap
    i8 -42, label %bb.ap
    i8 -32, label %bb.bc
    i8 -31, label %bb.bc
    i8 -30, label %bb.bc
    i8 -28, label %bb.bp
    i8 -27, label %bb.bp
    i8 -26, label %bb.bp
    i8 -16, label %bb.cc
    i8 -15, label %bb.cc
    i8 -14, label %bb.cc
    i8 -12, label %bb.cm
    i8 -11, label %bb.cm
    i8 -10, label %bb.cm
    i8 -8, label %bb.cw
    i8 -7, label %bb.cw
    i8 -6, label %bb.cw
    i8 -5, label %bb.cw
    i8 -4, label %bb.dg
    i8 -3, label %bb.dg
    i8 -2, label %bb.dg
    i8 -1, label %bb.dg
    i8 -80, label %bb.dq
    i8 -79, label %bb.dq
    i8 -78, label %bb.dq
    i8 -77, label %bb.dq
    i8 -76, label %bb.ea
    i8 -75, label %bb.ea
    i8 -74, label %bb.ea
    i8 -73, label %bb.ea
    i8 -96, label %bb.ek
    i8 -95, label %bb.ek
    i8 -94, label %bb.ek
    i8 -93, label %bb.ek
    i8 -92, label %bb.eu
    i8 -91, label %bb.eu
    i8 -90, label %bb.eu
    i8 -89, label %bb.eu
    i8 7, label %bb.fe
    i8 8, label %bb.fk
    i8 0, label %bb.fr
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.s = sub nuw i32 %.0973, %.19751353           ; 2 uses
  %i.t = icmp ult i32 %i.s, 8
  br i1 %i.t, label %g_strdup_inline.exit1133, label %bb.d

g_strdup_inline.exit1133:                         ; preds = %bb.c
  store i32 -13, ptr %2, align 4
  %i.u = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.u, ptr %3, align 8
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.q, i64 1        ; 3 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %.not1040 = icmp sgt i8 %i.w, -1
  br i1 %.not1040, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.q, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 7
  %i.ac = and i32 %i.x, 127
  %i.ad = or disjoint i32 %i.ab, %i.ac
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ae = phi i32 [ %i.ad, %bb.e ], [ %i.x, %bb.d ]
  %i.af = icmp samesign ult i32 %i.ae, 8
  br i1 %i.af, label %g_strdup_inline.exit1131, label %bb.g

g_strdup_inline.exit1131:                         ; preds = %bb.f
  store i32 -13, ptr %2, align 4
  %i.ag = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.ag, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.ag, ptr %3, align 8
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %0, i64 168
  %i.ai = load i32, ptr %i.ah, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.ai)
  %i.aj = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.ak = getelementptr i8, ptr %1, i64 216
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %i.q, i64 4
  %i.an = load i32, ptr %i.am, align 1            ; 2 uses
  %i.ao = and i32 %i.an, 1073741823
  %i.ap = lshr i32 %i.an, 30
  %i.aq = zext nneg i32 %i.ao to i64              ; 4 uses
  switch i32 %i.ap, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %ns_hrtime2nsec.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = mul nuw nsw i64 %i.aq, 1000000000
  br label %ns_hrtime2nsec.exit

bb.i:                                             ; preds = %bb.g
  %i.as = mul nuw nsw i64 %i.aq, 1000000
  br label %ns_hrtime2nsec.exit

bb.j:                                             ; preds = %bb.g
  %i.at = mul nuw nsw i64 %i.aq, 1000
  br label %ns_hrtime2nsec.exit

default.unreachable:                              ; preds = %bb.bt, %bb.bg, %bb.at, %bb.ag, %bb.t, %bb.g
  unreachable

ns_hrtime2nsec.exit:                              ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i1157 = phi i64 [ %i.ar, %bb.h ], [ %i.as, %bb.i ], [ %i.at, %bb.j ], [ %i.aq, %bb.g ]
  %i.au = add i64 %.0.i1157, %i.d                 ; 3 uses
  %i.av = load i32, ptr %i.l, align 8
  %i.aw = udiv i64 %i.au, 1000000000
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.av, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %1, i64 16
  store i64 %i.az, ptr %i.ba, align 8
  %i.bb = urem i64 %i.au, 1000000000
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = getelementptr i8, ptr %1, i64 24
  store i32 %i.bc, ptr %i.bd, align 8
  %i.be = load i8, ptr %i.v, align 1              ; 2 uses
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %.not1041 = icmp sgt i8 %i.be, -1
  br i1 %.not1041, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ns_hrtime2nsec.exit
  %i.bg = getelementptr i8, ptr %i.q, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 7
  %i.bk = and i32 %i.bf, 127
  %i.bl = or disjoint i32 %i.bj, %i.bk
  br label %bb.l

bb.l:                                             ; preds = %ns_hrtime2nsec.exit, %bb.k
  %i.bm = phi i32 [ %i.bl, %bb.k ], [ %i.bf, %ns_hrtime2nsec.exit ] ; 4 uses
  %i.bn = getelementptr i8, ptr %1, i64 48
  %i.bo = getelementptr i8, ptr %1, i64 52
  store i32 %i.bm, ptr %i.bo, align 4
  store i32 %i.bm, ptr %i.bn, align 8
  %i.bp = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %1, i64 80
  store i16 8, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %1, i64 84
  store i8 32, ptr %i.br, align 4
  %i.bs = icmp ult i32 %i.s, %i.bm
  br i1 %i.bs, label %g_strdup_inline.exit1129, label %bb.m

g_strdup_inline.exit1129:                         ; preds = %bb.l
  store i32 -13, ptr %2, align 4
  %i.bt = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.bt, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.bt, ptr %3, align 8
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr i8, ptr %1, i64 264
  %i.bv = zext nneg i32 %i.bm to i64
  tail call void @ws_buffer_append(ptr noundef %i.bu, ptr noundef %i.q, i64 noundef %i.bv)
  %i.bw = load i64, ptr %i.m, align 8
  %i.bx = add i64 %i.bw, %i.p
  store i64 %i.bx, ptr %4, align 8
  %i.by = load i8, ptr %i.v, align 1              ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %.not1042 = icmp sgt i8 %i.by, -1
  br i1 %.not1042, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr i8, ptr %i.q, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 7
  %i.ce = and i32 %i.bz, 127
  %i.cf = or disjoint i32 %i.cd, %i.ce
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cg = phi i32 [ %i.cf, %bb.n ], [ %i.bz, %bb.m ]
  %i.ch = add i32 %i.cg, %.19751353
  store i32 %i.ch, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.au, ptr %i.c, align 8
  br label %.critedge

bb.p:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.ci = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 12
  br i1 %i.cj, label %g_strdup_inline.exit1127, label %bb.q

g_strdup_inline.exit1127:                         ; preds = %bb.p
  store i32 -13, ptr %2, align 4
  %i.ck = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.ck, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.ck, ptr %3, align 8
  br label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1             ; 2 uses
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %.not1037 = icmp sgt i8 %i.cm, -1
  br i1 %.not1037, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr i8, ptr %i.q, i64 2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 7
  %i.cs = and i32 %i.cn, 127
  %i.ct = or disjoint i32 %i.cr, %i.cs
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.cu = phi i32 [ %i.ct, %bb.r ], [ %i.cn, %bb.q ]
  %i.cv = icmp samesign ult i32 %i.cu, 12
  br i1 %i.cv, label %g_strdup_inline.exit1125, label %bb.t

g_strdup_inline.exit1125:                         ; preds = %bb.s
  store i32 -13, ptr %2, align 4
  %i.cw = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.cw, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.cw, ptr %3, align 8
  br label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr i8, ptr %0, i64 168
  %i.cy = load i32, ptr %i.cx, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.cy)
  %i.cz = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.da = getelementptr i8, ptr %1, i64 216
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %1, i64 4         ; 2 uses
  store i32 1, ptr %i.db, align 4
  %i.dc = getelementptr i8, ptr %i.q, i64 4
  %i.dd = load i32, ptr %i.dc, align 1            ; 2 uses
  %i.de = and i32 %i.dd, 1073741823
  %i.df = lshr i32 %i.dd, 30
  %i.dg = zext nneg i32 %i.de to i64              ; 4 uses
  switch i32 %i.df, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %ns_hrtime2nsec.exit1160
  ]

bb.u:                                             ; preds = %bb.t
  %i.dh = mul nuw nsw i64 %i.dg, 1000000000
  br label %ns_hrtime2nsec.exit1160

bb.v:                                             ; preds = %bb.t
  %i.di = mul nuw nsw i64 %i.dg, 1000000
  br label %ns_hrtime2nsec.exit1160

bb.w:                                             ; preds = %bb.t
  %i.dj = mul nuw nsw i64 %i.dg, 1000
  br label %ns_hrtime2nsec.exit1160

ns_hrtime2nsec.exit1160:                          ; preds = %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i1158 = phi i64 [ %i.dh, %bb.u ], [ %i.di, %bb.v ], [ %i.dj, %bb.w ], [ %i.dg, %bb.t ]
  %i.dk = add i64 %.0.i1158, %i.d                 ; 3 uses
  %i.dl = load i32, ptr %i.l, align 8
  %i.dm = udiv i64 %i.dk, 1000000000
  %i.dn = trunc i64 %i.dm to i32
  %i.do = add i32 %i.dl, %i.dn
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %1, i64 16
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = urem i64 %i.dk, 1000000000
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = getelementptr i8, ptr %1, i64 24
  store i32 %i.ds, ptr %i.dt, align 8
  store i32 3, ptr %i.db, align 4
  %i.du = getelementptr i8, ptr %i.q, i64 8
  %.val1149 = load i16, ptr %i.du, align 1
  %i.dv = zext i16 %.val1149 to i32
  %i.dw = add nuw nsw i32 %i.dv, 12
  %i.dx = getelementptr i8, ptr %1, i64 48
  %i.dy = getelementptr i8, ptr %1, i64 52
  store i32 %i.dw, ptr %i.dy, align 4
  %i.dz = load i8, ptr %i.cl, align 1             ; 2 uses
  %i.ea = zext i8 %i.dz to i32                    ; 2 uses
  %.not1038 = icmp sgt i8 %i.dz, -1
  br i1 %.not1038, label %bb.y, label %bb.x

bb.x:                                             ; preds = %ns_hrtime2nsec.exit1160
  %i.eb = getelementptr i8, ptr %i.q, i64 2
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 7
  %i.ef = and i32 %i.ea, 127
  %i.eg = or disjoint i32 %i.ee, %i.ef
  br label %bb.y

bb.y:                                             ; preds = %ns_hrtime2nsec.exit1160, %bb.x
  %i.eh = phi i32 [ %i.eg, %bb.x ], [ %i.ea, %ns_hrtime2nsec.exit1160 ] ; 3 uses
  store i32 %i.eh, ptr %i.dx, align 8
  %i.ei = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.ei, align 4
  %i.ej = getelementptr i8, ptr %1, i64 80
  store i16 12, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %1, i64 84
  store i8 32, ptr %i.ek, align 4
  %i.el = icmp ult i32 %i.ci, %i.eh
  br i1 %i.el, label %g_strdup_inline.exit1123, label %bb.z

g_strdup_inline.exit1123:                         ; preds = %bb.y
  store i32 -13, ptr %2, align 4
  %i.em = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.em, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.em, ptr %3, align 8
  br label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.en = getelementptr i8, ptr %1, i64 264
  %i.eo = zext nneg i32 %i.eh to i64
  tail call void @ws_buffer_append(ptr noundef %i.en, ptr noundef %i.q, i64 noundef %i.eo)
  %i.ep = load i64, ptr %i.m, align 8
  %i.eq = add i64 %i.ep, %i.p
  store i64 %i.eq, ptr %4, align 8
  %i.er = load i8, ptr %i.cl, align 1             ; 2 uses
  %i.es = zext i8 %i.er to i32                    ; 2 uses
  %.not1039 = icmp sgt i8 %i.er, -1
  br i1 %.not1039, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr i8, ptr %i.q, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 7
  %i.ex = and i32 %i.es, 127
  %i.ey = or disjoint i32 %i.ew, %i.ex
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ez = phi i32 [ %i.ey, %bb.aa ], [ %i.es, %bb.z ]
  %i.fa = add i32 %i.ez, %.19751353
  store i32 %i.fa, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.dk, ptr %i.c, align 8
  br label %.critedge

bb.ac:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.fb = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 16
  br i1 %i.fc, label %g_strdup_inline.exit1121, label %bb.ad

g_strdup_inline.exit1121:                         ; preds = %bb.ac
  store i32 -13, ptr %2, align 4
  %i.fd = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.fd, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.fd, ptr %3, align 8
  br label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.fe = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1             ; 2 uses
  %i.fg = zext i8 %i.ff to i32                    ; 2 uses
  %.not1034 = icmp sgt i8 %i.ff, -1
  br i1 %.not1034, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fh = getelementptr i8, ptr %i.q, i64 2
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 7
  %i.fl = and i32 %i.fg, 127
  %i.fm = or disjoint i32 %i.fk, %i.fl
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.fn = phi i32 [ %i.fm, %bb.ae ], [ %i.fg, %bb.ad ]
  %i.fo = icmp samesign ult i32 %i.fn, 16
  br i1 %i.fo, label %g_strdup_inline.exit1119, label %bb.ag

g_strdup_inline.exit1119:                         ; preds = %bb.af
  store i32 -13, ptr %2, align 4
  %i.fp = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.fp, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.fp, ptr %3, align 8
  br label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr i8, ptr %0, i64 168
  %i.fr = load i32, ptr %i.fq, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.fr)
  %i.fs = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.ft = getelementptr i8, ptr %1, i64 216
  store ptr %i.fs, ptr %i.ft, align 8
  %i.fu = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.fu, align 4
  %i.fv = getelementptr i8, ptr %i.q, i64 4
  %i.fw = load i32, ptr %i.fv, align 1            ; 2 uses
  %i.fx = and i32 %i.fw, 1073741823
  %i.fy = lshr i32 %i.fw, 30
  %i.fz = zext nneg i32 %i.fx to i64              ; 4 uses
  switch i32 %i.fy, label %default.unreachable [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %ns_hrtime2nsec.exit1163
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ga = mul nuw nsw i64 %i.fz, 1000000000
  br label %ns_hrtime2nsec.exit1163

bb.ai:                                            ; preds = %bb.ag
  %i.gb = mul nuw nsw i64 %i.fz, 1000000
  br label %ns_hrtime2nsec.exit1163

bb.aj:                                            ; preds = %bb.ag
  %i.gc = mul nuw nsw i64 %i.fz, 1000
  br label %ns_hrtime2nsec.exit1163

ns_hrtime2nsec.exit1163:                          ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i1161 = phi i64 [ %i.ga, %bb.ah ], [ %i.gb, %bb.ai ], [ %i.gc, %bb.aj ], [ %i.fz, %bb.ag ]
  %i.gd = add i64 %.0.i1161, %i.d                 ; 3 uses
  %i.ge = load i32, ptr %i.l, align 8
  %i.gf = udiv i64 %i.gd, 1000000000
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = add i32 %i.ge, %i.gg
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr i8, ptr %1, i64 16
  store i64 %i.gi, ptr %i.gj, align 8
  %i.gk = urem i64 %i.gd, 1000000000
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = getelementptr i8, ptr %1, i64 24
  store i32 %i.gl, ptr %i.gm, align 8
  %i.gn = load i8, ptr %i.fe, align 1             ; 2 uses
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %.not1035 = icmp sgt i8 %i.gn, -1
  br i1 %.not1035, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %ns_hrtime2nsec.exit1163
  %i.gp = getelementptr i8, ptr %i.q, i64 2
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = zext i8 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 7
  %i.gt = and i32 %i.go, 127
  %i.gu = or disjoint i32 %i.gs, %i.gt
  br label %bb.al

bb.al:                                            ; preds = %ns_hrtime2nsec.exit1163, %bb.ak
  %i.gv = phi i32 [ %i.gu, %bb.ak ], [ %i.go, %ns_hrtime2nsec.exit1163 ] ; 4 uses
  %i.gw = getelementptr i8, ptr %1, i64 48
  %i.gx = getelementptr i8, ptr %1, i64 52
  store i32 %i.gv, ptr %i.gx, align 4
  store i32 %i.gv, ptr %i.gw, align 8
  %i.gy = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.gy, align 4
  %i.gz = getelementptr i8, ptr %1, i64 80
  store i16 16, ptr %i.gz, align 8
  %i.ha = getelementptr i8, ptr %1, i64 82
  store i8 8, ptr %i.ha, align 2
  %i.hb = getelementptr i8, ptr %1, i64 83
  store i8 12, ptr %i.hb, align 1
  %i.hc = getelementptr i8, ptr %1, i64 84
  store i8 33, ptr %i.hc, align 4
  %i.hd = icmp ult i32 %i.fb, %i.gv
  br i1 %i.hd, label %g_strdup_inline.exit1117, label %bb.am

g_strdup_inline.exit1117:                         ; preds = %bb.al
  store i32 -13, ptr %2, align 4
  %i.he = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.he, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.he, ptr %3, align 8
  br label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr i8, ptr %1, i64 264
  %i.hg = zext nneg i32 %i.gv to i64
  tail call void @ws_buffer_append(ptr noundef %i.hf, ptr noundef %i.q, i64 noundef %i.hg)
  %i.hh = load i64, ptr %i.m, align 8
  %i.hi = add i64 %i.hh, %i.p
  store i64 %i.hi, ptr %4, align 8
  %i.hj = load i8, ptr %i.fe, align 1             ; 2 uses
  %i.hk = zext i8 %i.hj to i32                    ; 2 uses
  %.not1036 = icmp sgt i8 %i.hj, -1
  br i1 %.not1036, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hl = getelementptr i8, ptr %i.q, i64 2
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i32
  %i.ho = shl nuw nsw i32 %i.hn, 7
  %i.hp = and i32 %i.hk, 127
  %i.hq = or disjoint i32 %i.ho, %i.hp
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.hr = phi i32 [ %i.hq, %bb.an ], [ %i.hk, %bb.am ]
  %i.hs = add i32 %i.hr, %.19751353
  store i32 %i.hs, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.gd, ptr %i.c, align 8
  br label %.critedge

bb.ap:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.ht = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.hu = icmp ult i32 %i.ht, 20
  br i1 %i.hu, label %g_strdup_inline.exit1115, label %bb.aq

g_strdup_inline.exit1115:                         ; preds = %bb.ap
  store i32 -13, ptr %2, align 4
  %i.hv = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.hv, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.hv, ptr %3, align 8
  br label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.hw = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1             ; 2 uses
  %i.hy = zext i8 %i.hx to i32                    ; 2 uses
  %.not1031 = icmp sgt i8 %i.hx, -1
  br i1 %.not1031, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hz = getelementptr i8, ptr %i.q, i64 2
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 7
  %i.id = and i32 %i.hy, 127
  %i.ie = or disjoint i32 %i.ic, %i.id
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.if = phi i32 [ %i.ie, %bb.ar ], [ %i.hy, %bb.aq ]
  %i.ig = icmp samesign ult i32 %i.if, 20
  br i1 %i.ig, label %g_strdup_inline.exit1113, label %bb.at

g_strdup_inline.exit1113:                         ; preds = %bb.as
  store i32 -13, ptr %2, align 4
  %i.ih = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.ih, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.ih, ptr %3, align 8
  br label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.ii = getelementptr i8, ptr %0, i64 168
  %i.ij = load i32, ptr %i.ii, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.ij)
  %i.ik = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.il = getelementptr i8, ptr %1, i64 216
  store ptr %i.ik, ptr %i.il, align 8
  %i.im = getelementptr i8, ptr %1, i64 4         ; 2 uses
  store i32 1, ptr %i.im, align 4
  %i.in = getelementptr i8, ptr %i.q, i64 4
  %i.io = load i32, ptr %i.in, align 1            ; 2 uses
  %i.ip = and i32 %i.io, 1073741823
  %i.iq = lshr i32 %i.io, 30
  %i.ir = zext nneg i32 %i.ip to i64              ; 4 uses
  switch i32 %i.iq, label %default.unreachable [
    i32 0, label %bb.au
    i32 1, label %bb.av
    i32 2, label %bb.aw
    i32 3, label %ns_hrtime2nsec.exit1166
  ]

bb.au:                                            ; preds = %bb.at
  %i.is = mul nuw nsw i64 %i.ir, 1000000000
  br label %ns_hrtime2nsec.exit1166

bb.av:                                            ; preds = %bb.at
  %i.it = mul nuw nsw i64 %i.ir, 1000000
  br label %ns_hrtime2nsec.exit1166

bb.aw:                                            ; preds = %bb.at
  %i.iu = mul nuw nsw i64 %i.ir, 1000
  br label %ns_hrtime2nsec.exit1166

ns_hrtime2nsec.exit1166:                          ; preds = %bb.at, %bb.au, %bb.av, %bb.aw
  %.0.i1164 = phi i64 [ %i.is, %bb.au ], [ %i.it, %bb.av ], [ %i.iu, %bb.aw ], [ %i.ir, %bb.at ]
  %i.iv = add i64 %.0.i1164, %i.d                 ; 3 uses
  %i.iw = load i32, ptr %i.l, align 8
  %i.ix = udiv i64 %i.iv, 1000000000
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = add i32 %i.iw, %i.iy
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr i8, ptr %1, i64 16
  store i64 %i.ja, ptr %i.jb, align 8
  %i.jc = urem i64 %i.iv, 1000000000
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = getelementptr i8, ptr %1, i64 24
  store i32 %i.jd, ptr %i.je, align 8
  store i32 3, ptr %i.im, align 4
  %i.jf = getelementptr i8, ptr %i.q, i64 8
  %.val1147 = load i16, ptr %i.jf, align 1
  %i.jg = zext i16 %.val1147 to i32
  %i.jh = add nuw nsw i32 %i.jg, 20
  %i.ji = getelementptr i8, ptr %1, i64 48
  %i.jj = getelementptr i8, ptr %1, i64 52
  store i32 %i.jh, ptr %i.jj, align 4
  %i.jk = load i8, ptr %i.hw, align 1             ; 2 uses
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %.not1032 = icmp sgt i8 %i.jk, -1
  br i1 %.not1032, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %ns_hrtime2nsec.exit1166
  %i.jm = getelementptr i8, ptr %i.q, i64 2
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i32
  %i.jp = shl nuw nsw i32 %i.jo, 7
  %i.jq = and i32 %i.jl, 127
  %i.jr = or disjoint i32 %i.jp, %i.jq
  br label %bb.ay

bb.ay:                                            ; preds = %ns_hrtime2nsec.exit1166, %bb.ax
  %i.js = phi i32 [ %i.jr, %bb.ax ], [ %i.jl, %ns_hrtime2nsec.exit1166 ] ; 3 uses
  store i32 %i.js, ptr %i.ji, align 8
  %i.jt = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.jt, align 4
  %i.ju = getelementptr i8, ptr %1, i64 80
  store i16 20, ptr %i.ju, align 8
  %i.jv = getelementptr i8, ptr %1, i64 82
  store i8 12, ptr %i.jv, align 2
  %i.jw = getelementptr i8, ptr %1, i64 83
  store i8 16, ptr %i.jw, align 1
  %i.jx = getelementptr i8, ptr %1, i64 84
  store i8 33, ptr %i.jx, align 4
  %i.jy = icmp ult i32 %i.ht, %i.js
  br i1 %i.jy, label %g_strdup_inline.exit1111, label %bb.az

g_strdup_inline.exit1111:                         ; preds = %bb.ay
  store i32 -13, ptr %2, align 4
  %i.jz = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.jz, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.jz, ptr %3, align 8
  br label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.ka = getelementptr i8, ptr %1, i64 264
  %i.kb = zext nneg i32 %i.js to i64
  tail call void @ws_buffer_append(ptr noundef %i.ka, ptr noundef %i.q, i64 noundef %i.kb)
  %i.kc = load i64, ptr %i.m, align 8
  %i.kd = add i64 %i.kc, %i.p
  store i64 %i.kd, ptr %4, align 8
  %i.ke = load i8, ptr %i.hw, align 1             ; 2 uses
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %.not1033 = icmp sgt i8 %i.ke, -1
  br i1 %.not1033, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kg = getelementptr i8, ptr %i.q, i64 2
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = zext i8 %i.kh to i32
  %i.kj = shl nuw nsw i32 %i.ki, 7
  %i.kk = and i32 %i.kf, 127
  %i.kl = or disjoint i32 %i.kj, %i.kk
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.km = phi i32 [ %i.kl, %bb.ba ], [ %i.kf, %bb.az ]
  %i.kn = add i32 %i.km, %.19751353
  store i32 %i.kn, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.iv, ptr %i.c, align 8
  br label %.critedge

bb.bc:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.ko = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.kp = icmp ult i32 %i.ko, 18
  br i1 %i.kp, label %g_strdup_inline.exit1109, label %bb.bd

g_strdup_inline.exit1109:                         ; preds = %bb.bc
  store i32 -13, ptr %2, align 4
  %i.kq = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.kq, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.kq, ptr %3, align 8
  br label %.critedge

bb.bd:                                            ; preds = %bb.bc
  %i.kr = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.ks = load i8, ptr %i.kr, align 1             ; 2 uses
  %i.kt = zext i8 %i.ks to i32                    ; 2 uses
  %.not1028 = icmp sgt i8 %i.ks, -1
  br i1 %.not1028, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr i8, ptr %i.q, i64 2
  %i.kv = load i8, ptr %i.ku, align 1
  %i.kw = zext i8 %i.kv to i32
  %i.kx = shl nuw nsw i32 %i.kw, 7
  %i.ky = and i32 %i.kt, 127
  %i.kz = or disjoint i32 %i.kx, %i.ky
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.la = phi i32 [ %i.kz, %bb.be ], [ %i.kt, %bb.bd ]
  %i.lb = icmp samesign ult i32 %i.la, 18
  br i1 %i.lb, label %g_strdup_inline.exit1107, label %bb.bg

g_strdup_inline.exit1107:                         ; preds = %bb.bf
  store i32 -13, ptr %2, align 4
  %i.lc = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.lc, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.lc, ptr %3, align 8
  br label %.critedge

bb.bg:                                            ; preds = %bb.bf
  %i.ld = getelementptr i8, ptr %0, i64 168
  %i.le = load i32, ptr %i.ld, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.le)
  %i.lf = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.lg = getelementptr i8, ptr %1, i64 216
  store ptr %i.lf, ptr %i.lg, align 8
  %i.lh = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.lh, align 4
  %i.li = getelementptr i8, ptr %i.q, i64 4
  %i.lj = load i32, ptr %i.li, align 1            ; 2 uses
  %i.lk = and i32 %i.lj, 1073741823
  %i.ll = lshr i32 %i.lj, 30
  %i.lm = zext nneg i32 %i.lk to i64              ; 4 uses
  switch i32 %i.ll, label %default.unreachable [
    i32 0, label %bb.bh
    i32 1, label %bb.bi
    i32 2, label %bb.bj
    i32 3, label %ns_hrtime2nsec.exit1169
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ln = mul nuw nsw i64 %i.lm, 1000000000
  br label %ns_hrtime2nsec.exit1169

bb.bi:                                            ; preds = %bb.bg
  %i.lo = mul nuw nsw i64 %i.lm, 1000000
  br label %ns_hrtime2nsec.exit1169

bb.bj:                                            ; preds = %bb.bg
  %i.lp = mul nuw nsw i64 %i.lm, 1000
  br label %ns_hrtime2nsec.exit1169

ns_hrtime2nsec.exit1169:                          ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.0.i1167 = phi i64 [ %i.ln, %bb.bh ], [ %i.lo, %bb.bi ], [ %i.lp, %bb.bj ], [ %i.lm, %bb.bg ]
  %i.lq = add i64 %.0.i1167, %i.d                 ; 3 uses
  %i.lr = load i32, ptr %i.l, align 8
  %i.ls = udiv i64 %i.lq, 1000000000
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = add i32 %i.lr, %i.lt
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr i8, ptr %1, i64 16
  store i64 %i.lv, ptr %i.lw, align 8
  %i.lx = urem i64 %i.lq, 1000000000
  %i.ly = trunc nuw nsw i64 %i.lx to i32
  %i.lz = getelementptr i8, ptr %1, i64 24
  store i32 %i.ly, ptr %i.lz, align 8
  %i.ma = load i8, ptr %i.kr, align 1             ; 2 uses
  %i.mb = zext i8 %i.ma to i32                    ; 2 uses
  %.not1029 = icmp sgt i8 %i.ma, -1
  br i1 %.not1029, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %ns_hrtime2nsec.exit1169
  %i.mc = getelementptr i8, ptr %i.q, i64 2
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = zext i8 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 7
  %i.mg = and i32 %i.mb, 127
  %i.mh = or disjoint i32 %i.mf, %i.mg
  br label %bb.bl

bb.bl:                                            ; preds = %ns_hrtime2nsec.exit1169, %bb.bk
  %i.mi = phi i32 [ %i.mh, %bb.bk ], [ %i.mb, %ns_hrtime2nsec.exit1169 ] ; 4 uses
  %i.mj = getelementptr i8, ptr %1, i64 48
  %i.mk = getelementptr i8, ptr %1, i64 52
  store i32 %i.mi, ptr %i.mk, align 4
  store i32 %i.mi, ptr %i.mj, align 8
  %i.ml = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.ml, align 4
  %i.mm = getelementptr i8, ptr %1, i64 80
  store i16 18, ptr %i.mm, align 8
  %i.mn = getelementptr i8, ptr %1, i64 82
  store <4 x i8> <i8 8, i8 12, i8 34, i8 16>, ptr %i.mn, align 2
  %i.mo = icmp ult i32 %i.ko, %i.mi
  br i1 %i.mo, label %g_strdup_inline.exit1105, label %bb.bm

g_strdup_inline.exit1105:                         ; preds = %bb.bl
  store i32 -13, ptr %2, align 4
  %i.mp = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.mp, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.mp, ptr %3, align 8
  br label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.mq = getelementptr i8, ptr %1, i64 264
  %i.mr = zext nneg i32 %i.mi to i64
  tail call void @ws_buffer_append(ptr noundef %i.mq, ptr noundef %i.q, i64 noundef %i.mr)
  %i.ms = load i64, ptr %i.m, align 8
  %i.mt = add i64 %i.ms, %i.p
  store i64 %i.mt, ptr %4, align 8
  %i.mu = load i8, ptr %i.kr, align 1             ; 2 uses
  %i.mv = zext i8 %i.mu to i32                    ; 2 uses
  %.not1030 = icmp sgt i8 %i.mu, -1
  br i1 %.not1030, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mw = getelementptr i8, ptr %i.q, i64 2
  %i.mx = load i8, ptr %i.mw, align 1
  %i.my = zext i8 %i.mx to i32
  %i.mz = shl nuw nsw i32 %i.my, 7
  %i.na = and i32 %i.mv, 127
  %i.nb = or disjoint i32 %i.mz, %i.na
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.nc = phi i32 [ %i.nb, %bb.bn ], [ %i.mv, %bb.bm ]
  %i.nd = add i32 %i.nc, %.19751353
  store i32 %i.nd, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.lq, ptr %i.c, align 8
  br label %.critedge

bb.bp:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.ne = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.nf = icmp ult i32 %i.ne, 22
  br i1 %i.nf, label %g_strdup_inline.exit1103, label %bb.bq

g_strdup_inline.exit1103:                         ; preds = %bb.bp
  store i32 -13, ptr %2, align 4
  %i.ng = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.ng, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.ng, ptr %3, align 8
  br label %.critedge

bb.bq:                                            ; preds = %bb.bp
  %i.nh = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.ni = load i8, ptr %i.nh, align 1             ; 2 uses
  %i.nj = zext i8 %i.ni to i32                    ; 2 uses
  %.not1025 = icmp sgt i8 %i.ni, -1
  br i1 %.not1025, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nk = getelementptr i8, ptr %i.q, i64 2
  %i.nl = load i8, ptr %i.nk, align 1
  %i.nm = zext i8 %i.nl to i32
  %i.nn = shl nuw nsw i32 %i.nm, 7
  %i.no = and i32 %i.nj, 127
  %i.np = or disjoint i32 %i.nn, %i.no
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.nq = phi i32 [ %i.np, %bb.br ], [ %i.nj, %bb.bq ]
  %i.nr = icmp samesign ult i32 %i.nq, 22
  br i1 %i.nr, label %g_strdup_inline.exit1101, label %bb.bt

g_strdup_inline.exit1101:                         ; preds = %bb.bs
  store i32 -13, ptr %2, align 4
  %i.ns = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.ns, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.ns, ptr %3, align 8
  br label %.critedge

bb.bt:                                            ; preds = %bb.bs
  %i.nt = getelementptr i8, ptr %0, i64 168
  %i.nu = load i32, ptr %i.nt, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.nu)
  %i.nv = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.nw = getelementptr i8, ptr %1, i64 216
  store ptr %i.nv, ptr %i.nw, align 8
  %i.nx = getelementptr i8, ptr %1, i64 4         ; 2 uses
  store i32 1, ptr %i.nx, align 4
  %i.ny = getelementptr i8, ptr %i.q, i64 4
  %i.nz = load i32, ptr %i.ny, align 1            ; 2 uses
  %i.oa = and i32 %i.nz, 1073741823
  %i.ob = lshr i32 %i.nz, 30
  %i.oc = zext nneg i32 %i.oa to i64              ; 4 uses
  switch i32 %i.ob, label %default.unreachable [
    i32 0, label %bb.bu
    i32 1, label %bb.bv
    i32 2, label %bb.bw
    i32 3, label %ns_hrtime2nsec.exit1172
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.od = mul nuw nsw i64 %i.oc, 1000000000
  br label %ns_hrtime2nsec.exit1172

bb.bv:                                            ; preds = %bb.bt
  %i.oe = mul nuw nsw i64 %i.oc, 1000000
  br label %ns_hrtime2nsec.exit1172

bb.bw:                                            ; preds = %bb.bt
  %i.of = mul nuw nsw i64 %i.oc, 1000
  br label %ns_hrtime2nsec.exit1172

ns_hrtime2nsec.exit1172:                          ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %.0.i1170 = phi i64 [ %i.od, %bb.bu ], [ %i.oe, %bb.bv ], [ %i.of, %bb.bw ], [ %i.oc, %bb.bt ]
  %i.og = add i64 %.0.i1170, %i.d                 ; 3 uses
  %i.oh = load i32, ptr %i.l, align 8
  %i.oi = udiv i64 %i.og, 1000000000
  %i.oj = trunc i64 %i.oi to i32
  %i.ok = add i32 %i.oh, %i.oj
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr i8, ptr %1, i64 16
  store i64 %i.ol, ptr %i.om, align 8
  %i.on = urem i64 %i.og, 1000000000
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = getelementptr i8, ptr %1, i64 24
  store i32 %i.oo, ptr %i.op, align 8
  store i32 3, ptr %i.nx, align 4
  %i.oq = getelementptr i8, ptr %i.q, i64 8
  %.val1145 = load i16, ptr %i.oq, align 1
  %i.or = zext i16 %.val1145 to i32
  %i.os = add nuw nsw i32 %i.or, 22
  %i.ot = getelementptr i8, ptr %1, i64 48
  %i.ou = getelementptr i8, ptr %1, i64 52
  store i32 %i.os, ptr %i.ou, align 4
  %i.ov = load i8, ptr %i.nh, align 1             ; 2 uses
  %i.ow = zext i8 %i.ov to i32                    ; 2 uses
  %.not1026 = icmp sgt i8 %i.ov, -1
  br i1 %.not1026, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %ns_hrtime2nsec.exit1172
  %i.ox = getelementptr i8, ptr %i.q, i64 2
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = zext i8 %i.oy to i32
  %i.pa = shl nuw nsw i32 %i.oz, 7
  %i.pb = and i32 %i.ow, 127
  %i.pc = or disjoint i32 %i.pa, %i.pb
  br label %bb.by

bb.by:                                            ; preds = %ns_hrtime2nsec.exit1172, %bb.bx
  %i.pd = phi i32 [ %i.pc, %bb.bx ], [ %i.ow, %ns_hrtime2nsec.exit1172 ] ; 3 uses
  store i32 %i.pd, ptr %i.ot, align 8
  %i.pe = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.pe, align 4
  %i.pf = getelementptr i8, ptr %1, i64 80
  store i16 22, ptr %i.pf, align 8
  %i.pg = getelementptr i8, ptr %1, i64 82
  store <4 x i8> <i8 12, i8 16, i8 34, i8 20>, ptr %i.pg, align 2
  %i.ph = icmp ult i32 %i.ne, %i.pd
  br i1 %i.ph, label %g_strdup_inline.exit1099, label %bb.bz

g_strdup_inline.exit1099:                         ; preds = %bb.by
  store i32 -13, ptr %2, align 4
  %i.pi = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.pi, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.pi, ptr %3, align 8
  br label %.critedge

bb.bz:                                            ; preds = %bb.by
  %i.pj = getelementptr i8, ptr %1, i64 264
  %i.pk = zext nneg i32 %i.pd to i64
  tail call void @ws_buffer_append(ptr noundef %i.pj, ptr noundef %i.q, i64 noundef %i.pk)
  %i.pl = load i64, ptr %i.m, align 8
  %i.pm = add i64 %i.pl, %i.p
  store i64 %i.pm, ptr %4, align 8
  %i.pn = load i8, ptr %i.nh, align 1             ; 2 uses
  %i.po = zext i8 %i.pn to i32                    ; 2 uses
  %.not1027 = icmp sgt i8 %i.pn, -1
  br i1 %.not1027, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pp = getelementptr i8, ptr %i.q, i64 2
  %i.pq = load i8, ptr %i.pp, align 1
  %i.pr = zext i8 %i.pq to i32
  %i.ps = shl nuw nsw i32 %i.pr, 7
  %i.pt = and i32 %i.po, 127
  %i.pu = or disjoint i32 %i.ps, %i.pt
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.pv = phi i32 [ %i.pu, %bb.ca ], [ %i.po, %bb.bz ]
  %i.pw = add i32 %i.pv, %.19751353
  store i32 %i.pw, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.og, ptr %i.c, align 8
  br label %.critedge

bb.cc:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.px = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.py = icmp ult i32 %i.px, 24
  br i1 %i.py, label %g_strdup_inline.exit1097, label %bb.cd

g_strdup_inline.exit1097:                         ; preds = %bb.cc
  store i32 -13, ptr %2, align 4
  %i.pz = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.pz, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.pz, ptr %3, align 8
  br label %.critedge

bb.cd:                                            ; preds = %bb.cc
  %i.qa = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.qb = load i8, ptr %i.qa, align 1             ; 2 uses
  %i.qc = zext i8 %i.qb to i32                    ; 2 uses
  %.not1022 = icmp sgt i8 %i.qb, -1
  br i1 %.not1022, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qd = getelementptr i8, ptr %i.q, i64 2
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = zext i8 %i.qe to i32
  %i.qg = shl nuw nsw i32 %i.qf, 7
  %i.qh = and i32 %i.qc, 127
  %i.qi = or disjoint i32 %i.qg, %i.qh
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.qj = phi i32 [ %i.qi, %bb.ce ], [ %i.qc, %bb.cd ]
  %i.qk = icmp samesign ult i32 %i.qj, 24
  br i1 %i.qk, label %g_strdup_inline.exit1095, label %bb.cg

g_strdup_inline.exit1095:                         ; preds = %bb.cf
  store i32 -13, ptr %2, align 4
  %i.ql = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.ql, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.ql, ptr %3, align 8
  br label %.critedge

bb.cg:                                            ; preds = %bb.cf
  %i.qm = getelementptr i8, ptr %0, i64 168
  %i.qn = load i32, ptr %i.qm, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.qn)
  %i.qo = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.qp = getelementptr i8, ptr %1, i64 216
  store ptr %i.qo, ptr %i.qp, align 8
  %i.qq = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.qq, align 4
  %i.qr = getelementptr i8, ptr %i.q, i64 4
  %i.qs = load i64, ptr %i.qr, align 1            ; 3 uses
  %i.qt = udiv i64 %i.qs, 1000000000
  %i.qu = and i64 %i.qt, 4294967295
  %i.qv = getelementptr i8, ptr %1, i64 16
  store i64 %i.qu, ptr %i.qv, align 8
  %i.qw = urem i64 %i.qs, 1000000000
  %i.qx = trunc nuw nsw i64 %i.qw to i32
  %i.qy = getelementptr i8, ptr %1, i64 24
  store i32 %i.qx, ptr %i.qy, align 8
  %i.qz = load i8, ptr %i.qa, align 1             ; 2 uses
  %i.ra = zext i8 %i.qz to i32                    ; 2 uses
  %.not1023 = icmp sgt i8 %i.qz, -1
  br i1 %.not1023, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rb = getelementptr i8, ptr %i.q, i64 2
  %i.rc = load i8, ptr %i.rb, align 1
  %i.rd = zext i8 %i.rc to i32
  %i.re = shl nuw nsw i32 %i.rd, 7
  %i.rf = and i32 %i.ra, 127
  %i.rg = or disjoint i32 %i.re, %i.rf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.rh = phi i32 [ %i.rg, %bb.ch ], [ %i.ra, %bb.cg ] ; 4 uses
  %i.ri = getelementptr i8, ptr %1, i64 48
  %i.rj = getelementptr i8, ptr %1, i64 52
  store i32 %i.rh, ptr %i.rj, align 4
  store i32 %i.rh, ptr %i.ri, align 8
  %i.rk = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.rk, align 4
  %i.rl = getelementptr i8, ptr %1, i64 80
  store i16 24, ptr %i.rl, align 8
  %i.rm = getelementptr i8, ptr %1, i64 82
  %i.rn = getelementptr i8, ptr %1, i64 86
  store i8 22, ptr %i.rn, align 2
  store <4 x i8> <i8 12, i8 16, i8 35, i8 20>, ptr %i.rm, align 2
  %i.ro = icmp ult i32 %i.px, %i.rh
  br i1 %i.ro, label %g_strdup_inline.exit1093, label %bb.cj

g_strdup_inline.exit1093:                         ; preds = %bb.ci
  store i32 -13, ptr %2, align 4
  %i.rp = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.rp, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.rp, ptr %3, align 8
  br label %.critedge

bb.cj:                                            ; preds = %bb.ci
  %i.rq = getelementptr i8, ptr %1, i64 264
  %i.rr = zext nneg i32 %i.rh to i64
  tail call void @ws_buffer_append(ptr noundef %i.rq, ptr noundef %i.q, i64 noundef %i.rr)
  %i.rs = load i64, ptr %i.m, align 8
  %i.rt = add i64 %i.rs, %i.p
  store i64 %i.rt, ptr %4, align 8
  %i.ru = load i8, ptr %i.qa, align 1             ; 2 uses
  %i.rv = zext i8 %i.ru to i32                    ; 2 uses
  %.not1024 = icmp sgt i8 %i.ru, -1
  br i1 %.not1024, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rw = getelementptr i8, ptr %i.q, i64 2
  %i.rx = load i8, ptr %i.rw, align 1
  %i.ry = zext i8 %i.rx to i32
  %i.rz = shl nuw nsw i32 %i.ry, 7
  %i.sa = and i32 %i.rv, 127
  %i.sb = or disjoint i32 %i.rz, %i.sa
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %i.sc = phi i32 [ %i.sb, %bb.ck ], [ %i.rv, %bb.cj ]
  %i.sd = add i32 %i.sc, %.19751353
  store i32 %i.sd, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.qs, ptr %i.c, align 8
  br label %.critedge

bb.cm:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.se = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.sf = icmp ult i32 %i.se, 28
  br i1 %i.sf, label %g_strdup_inline.exit1091, label %bb.cn

g_strdup_inline.exit1091:                         ; preds = %bb.cm
  store i32 -13, ptr %2, align 4
  %i.sg = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.sg, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.sg, ptr %3, align 8
  br label %.critedge

bb.cn:                                            ; preds = %bb.cm
  %i.sh = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.si = load i8, ptr %i.sh, align 1             ; 2 uses
  %i.sj = zext i8 %i.si to i32                    ; 2 uses
  %.not1019 = icmp sgt i8 %i.si, -1
  br i1 %.not1019, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sk = getelementptr i8, ptr %i.q, i64 2
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = zext i8 %i.sl to i32
  %i.sn = shl nuw nsw i32 %i.sm, 7
  %i.so = and i32 %i.sj, 127
  %i.sp = or disjoint i32 %i.sn, %i.so
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %i.sq = phi i32 [ %i.sp, %bb.co ], [ %i.sj, %bb.cn ]
  %i.sr = icmp samesign ult i32 %i.sq, 28
  br i1 %i.sr, label %g_strdup_inline.exit1089, label %bb.cq

g_strdup_inline.exit1089:                         ; preds = %bb.cp
  store i32 -13, ptr %2, align 4
  %i.ss = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.ss, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.ss, ptr %3, align 8
  br label %.critedge

bb.cq:                                            ; preds = %bb.cp
  %i.st = getelementptr i8, ptr %0, i64 168
  %i.su = load i32, ptr %i.st, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.su)
  %i.sv = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.sw = getelementptr i8, ptr %1, i64 216
  store ptr %i.sv, ptr %i.sw, align 8
  %i.sx = getelementptr i8, ptr %1, i64 4         ; 2 uses
  store i32 1, ptr %i.sx, align 4
  %i.sy = getelementptr i8, ptr %i.q, i64 4
  %i.sz = load i64, ptr %i.sy, align 1            ; 3 uses
  %i.ta = udiv i64 %i.sz, 1000000000
  %i.tb = and i64 %i.ta, 4294967295
  %i.tc = getelementptr i8, ptr %1, i64 16
  store i64 %i.tb, ptr %i.tc, align 8
  %i.td = urem i64 %i.sz, 1000000000
  %i.te = trunc nuw nsw i64 %i.td to i32
  %i.tf = getelementptr i8, ptr %1, i64 24
  store i32 %i.te, ptr %i.tf, align 8
  store i32 3, ptr %i.sx, align 4
  %i.tg = getelementptr i8, ptr %i.q, i64 12
  %.val1143 = load i16, ptr %i.tg, align 1
  %i.th = zext i16 %.val1143 to i32
  %i.ti = add nuw nsw i32 %i.th, 28
  %i.tj = getelementptr i8, ptr %1, i64 48
  %i.tk = getelementptr i8, ptr %1, i64 52
  store i32 %i.ti, ptr %i.tk, align 4
  %i.tl = load i8, ptr %i.sh, align 1             ; 2 uses
  %i.tm = zext i8 %i.tl to i32                    ; 2 uses
  %.not1020 = icmp sgt i8 %i.tl, -1
  br i1 %.not1020, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tn = getelementptr i8, ptr %i.q, i64 2
  %i.to = load i8, ptr %i.tn, align 1
  %i.tp = zext i8 %i.to to i32
  %i.tq = shl nuw nsw i32 %i.tp, 7
  %i.tr = and i32 %i.tm, 127
  %i.ts = or disjoint i32 %i.tq, %i.tr
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.tt = phi i32 [ %i.ts, %bb.cr ], [ %i.tm, %bb.cq ] ; 3 uses
  store i32 %i.tt, ptr %i.tj, align 8
  %i.tu = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.tu, align 4
  %i.tv = getelementptr i8, ptr %1, i64 80
  store i16 28, ptr %i.tv, align 8
  %i.tw = getelementptr i8, ptr %1, i64 82
  %i.tx = getelementptr i8, ptr %1, i64 86
  store i8 26, ptr %i.tx, align 2
  store <4 x i8> <i8 16, i8 20, i8 35, i8 24>, ptr %i.tw, align 2
  %i.ty = icmp ult i32 %i.se, %i.tt
  br i1 %i.ty, label %g_strdup_inline.exit1087, label %bb.ct

g_strdup_inline.exit1087:                         ; preds = %bb.cs
  store i32 -13, ptr %2, align 4
  %i.tz = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.tz, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.tz, ptr %3, align 8
  br label %.critedge

bb.ct:                                            ; preds = %bb.cs
  %i.ua = getelementptr i8, ptr %1, i64 264
  %i.ub = zext nneg i32 %i.tt to i64
  tail call void @ws_buffer_append(ptr noundef %i.ua, ptr noundef %i.q, i64 noundef %i.ub)
  %i.uc = load i64, ptr %i.m, align 8
  %i.ud = add i64 %i.uc, %i.p
  store i64 %i.ud, ptr %4, align 8
  %i.ue = load i8, ptr %i.sh, align 1             ; 2 uses
  %i.uf = zext i8 %i.ue to i32                    ; 2 uses
  %.not1021 = icmp sgt i8 %i.ue, -1
  br i1 %.not1021, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ug = getelementptr i8, ptr %i.q, i64 2
  %i.uh = load i8, ptr %i.ug, align 1
  %i.ui = zext i8 %i.uh to i32
  %i.uj = shl nuw nsw i32 %i.ui, 7
  %i.uk = and i32 %i.uf, 127
  %i.ul = or disjoint i32 %i.uj, %i.uk
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.um = phi i32 [ %i.ul, %bb.cu ], [ %i.uf, %bb.ct ]
  %i.un = add i32 %i.um, %.19751353
  store i32 %i.un, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.sz, ptr %i.c, align 8
  br label %.critedge

bb.cw:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.uo = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.up = icmp ult i32 %i.uo, 29
  br i1 %i.up, label %g_strdup_inline.exit1085, label %bb.cx

g_strdup_inline.exit1085:                         ; preds = %bb.cw
  store i32 -13, ptr %2, align 4
  %i.uq = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.uq, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.uq, ptr %3, align 8
  br label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %i.ur = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.us = load i8, ptr %i.ur, align 1             ; 2 uses
  %i.ut = zext i8 %i.us to i32                    ; 2 uses
  %.not1016 = icmp sgt i8 %i.us, -1
  br i1 %.not1016, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uu = getelementptr i8, ptr %i.q, i64 2
  %i.uv = load i8, ptr %i.uu, align 1
  %i.uw = zext i8 %i.uv to i32
  %i.ux = shl nuw nsw i32 %i.uw, 7
  %i.uy = and i32 %i.ut, 127
  %i.uz = or disjoint i32 %i.ux, %i.uy
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %i.va = phi i32 [ %i.uz, %bb.cy ], [ %i.ut, %bb.cx ]
  %i.vb = icmp samesign ult i32 %i.va, 29
  br i1 %i.vb, label %g_strdup_inline.exit1083, label %bb.da

g_strdup_inline.exit1083:                         ; preds = %bb.cz
  store i32 -13, ptr %2, align 4
  %i.vc = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.vc, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.vc, ptr %3, align 8
  br label %.critedge

bb.da:                                            ; preds = %bb.cz
  %i.vd = getelementptr i8, ptr %0, i64 168
  %i.ve = load i32, ptr %i.vd, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.ve)
  %i.vf = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.vg = getelementptr i8, ptr %1, i64 216
  store ptr %i.vf, ptr %i.vg, align 8
  %i.vh = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.vh, align 4
  %i.vi = getelementptr i8, ptr %i.q, i64 4
  %i.vj = load i64, ptr %i.vi, align 1            ; 3 uses
  %i.vk = udiv i64 %i.vj, 1000000000
  %i.vl = and i64 %i.vk, 4294967295
  %i.vm = getelementptr i8, ptr %1, i64 16
  store i64 %i.vl, ptr %i.vm, align 8
  %i.vn = urem i64 %i.vj, 1000000000
  %i.vo = trunc nuw nsw i64 %i.vn to i32
  %i.vp = getelementptr i8, ptr %1, i64 24
  store i32 %i.vo, ptr %i.vp, align 8
  %i.vq = load i8, ptr %i.ur, align 1             ; 2 uses
  %i.vr = zext i8 %i.vq to i32                    ; 2 uses
  %.not1017 = icmp sgt i8 %i.vq, -1
  br i1 %.not1017, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vs = getelementptr i8, ptr %i.q, i64 2
  %i.vt = load i8, ptr %i.vs, align 1
  %i.vu = zext i8 %i.vt to i32
  %i.vv = shl nuw nsw i32 %i.vu, 7
  %i.vw = and i32 %i.vr, 127
  %i.vx = or disjoint i32 %i.vv, %i.vw
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.vy = phi i32 [ %i.vx, %bb.db ], [ %i.vr, %bb.da ] ; 4 uses
  %i.vz = getelementptr i8, ptr %1, i64 48
  %i.wa = getelementptr i8, ptr %1, i64 52
  store i32 %i.vy, ptr %i.wa, align 4
  store i32 %i.vy, ptr %i.vz, align 8
  %i.wb = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.wb, align 4
  %i.wc = getelementptr i8, ptr %1, i64 80
  store i16 29, ptr %i.wc, align 8
  %i.wd = getelementptr i8, ptr %1, i64 82
  store <8 x i8> <i8 12, i8 16, i8 36, i8 20, i8 22, i8 24, i8 26, i8 28>, ptr %i.wd, align 2
  %i.we = icmp ult i32 %i.uo, %i.vy
  br i1 %i.we, label %g_strdup_inline.exit1081, label %bb.dd

g_strdup_inline.exit1081:                         ; preds = %bb.dc
  store i32 -13, ptr %2, align 4
  %i.wf = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.wf, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.wf, ptr %3, align 8
  br label %.critedge

bb.dd:                                            ; preds = %bb.dc
  %i.wg = getelementptr i8, ptr %1, i64 264
  %i.wh = zext nneg i32 %i.vy to i64
  tail call void @ws_buffer_append(ptr noundef %i.wg, ptr noundef %i.q, i64 noundef %i.wh)
  %i.wi = load i64, ptr %i.m, align 8
  %i.wj = add i64 %i.wi, %i.p
  store i64 %i.wj, ptr %4, align 8
  %i.wk = load i8, ptr %i.ur, align 1             ; 2 uses
  %i.wl = zext i8 %i.wk to i32                    ; 2 uses
  %.not1018 = icmp sgt i8 %i.wk, -1
  br i1 %.not1018, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wm = getelementptr i8, ptr %i.q, i64 2
  %i.wn = load i8, ptr %i.wm, align 1
  %i.wo = zext i8 %i.wn to i32
  %i.wp = shl nuw nsw i32 %i.wo, 7
  %i.wq = and i32 %i.wl, 127
  %i.wr = or disjoint i32 %i.wp, %i.wq
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %i.ws = phi i32 [ %i.wr, %bb.de ], [ %i.wl, %bb.dd ]
  %i.wt = add i32 %i.ws, %.19751353
  store i32 %i.wt, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.vj, ptr %i.c, align 8
  br label %.critedge

bb.dg:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.wu = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.wv = icmp ult i32 %i.wu, 33
  br i1 %i.wv, label %g_strdup_inline.exit1079, label %bb.dh

g_strdup_inline.exit1079:                         ; preds = %bb.dg
  store i32 -13, ptr %2, align 4
  %i.ww = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.ww, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.ww, ptr %3, align 8
  br label %.critedge

bb.dh:                                            ; preds = %bb.dg
  %i.wx = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.wy = load i8, ptr %i.wx, align 1             ; 2 uses
  %i.wz = zext i8 %i.wy to i32                    ; 2 uses
  %.not1013 = icmp sgt i8 %i.wy, -1
  br i1 %.not1013, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.xa = getelementptr i8, ptr %i.q, i64 2
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = zext i8 %i.xb to i32
  %i.xd = shl nuw nsw i32 %i.xc, 7
  %i.xe = and i32 %i.wz, 127
  %i.xf = or disjoint i32 %i.xd, %i.xe
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.xg = phi i32 [ %i.xf, %bb.di ], [ %i.wz, %bb.dh ]
  %i.xh = icmp samesign ult i32 %i.xg, 33
  br i1 %i.xh, label %g_strdup_inline.exit1077, label %bb.dk

g_strdup_inline.exit1077:                         ; preds = %bb.dj
  store i32 -13, ptr %2, align 4
  %i.xi = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.xi, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.xi, ptr %3, align 8
  br label %.critedge

bb.dk:                                            ; preds = %bb.dj
  %i.xj = getelementptr i8, ptr %0, i64 168
  %i.xk = load i32, ptr %i.xj, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.xk)
  %i.xl = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.xm = getelementptr i8, ptr %1, i64 216
  store ptr %i.xl, ptr %i.xm, align 8
  %i.xn = getelementptr i8, ptr %1, i64 4         ; 2 uses
  store i32 1, ptr %i.xn, align 4
  %i.xo = getelementptr i8, ptr %i.q, i64 4
  %i.xp = load i64, ptr %i.xo, align 1            ; 3 uses
  %i.xq = udiv i64 %i.xp, 1000000000
  %i.xr = and i64 %i.xq, 4294967295
  %i.xs = getelementptr i8, ptr %1, i64 16
  store i64 %i.xr, ptr %i.xs, align 8
  %i.xt = urem i64 %i.xp, 1000000000
  %i.xu = trunc nuw nsw i64 %i.xt to i32
  %i.xv = getelementptr i8, ptr %1, i64 24
  store i32 %i.xu, ptr %i.xv, align 8
  store i32 3, ptr %i.xn, align 4
  %i.xw = getelementptr i8, ptr %i.q, i64 12
  %.val1141 = load i16, ptr %i.xw, align 1
  %i.xx = zext i16 %.val1141 to i32
  %i.xy = add nuw nsw i32 %i.xx, 33
  %i.xz = getelementptr i8, ptr %1, i64 48
  %i.ya = getelementptr i8, ptr %1, i64 52
  store i32 %i.xy, ptr %i.ya, align 4
  %i.yb = load i8, ptr %i.wx, align 1             ; 2 uses
  %i.yc = zext i8 %i.yb to i32                    ; 2 uses
  %.not1014 = icmp sgt i8 %i.yb, -1
  br i1 %.not1014, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.yd = getelementptr i8, ptr %i.q, i64 2
  %i.ye = load i8, ptr %i.yd, align 1
  %i.yf = zext i8 %i.ye to i32
  %i.yg = shl nuw nsw i32 %i.yf, 7
  %i.yh = and i32 %i.yc, 127
  %i.yi = or disjoint i32 %i.yg, %i.yh
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.yj = phi i32 [ %i.yi, %bb.dl ], [ %i.yc, %bb.dk ] ; 3 uses
  store i32 %i.yj, ptr %i.xz, align 8
  %i.yk = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.yk, align 4
  %i.yl = getelementptr i8, ptr %1, i64 80
  store i16 33, ptr %i.yl, align 8
  %i.ym = getelementptr i8, ptr %1, i64 82
  store <8 x i8> <i8 16, i8 20, i8 36, i8 24, i8 26, i8 28, i8 30, i8 32>, ptr %i.ym, align 2
  %i.yn = icmp ult i32 %i.wu, %i.yj
  br i1 %i.yn, label %g_strdup_inline.exit1075, label %bb.dn

g_strdup_inline.exit1075:                         ; preds = %bb.dm
  store i32 -13, ptr %2, align 4
  %i.yo = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.yo, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.yo, ptr %3, align 8
  br label %.critedge

bb.dn:                                            ; preds = %bb.dm
  %i.yp = getelementptr i8, ptr %1, i64 264
  %i.yq = zext nneg i32 %i.yj to i64
  tail call void @ws_buffer_append(ptr noundef %i.yp, ptr noundef %i.q, i64 noundef %i.yq)
  %i.yr = load i64, ptr %i.m, align 8
  %i.ys = add i64 %i.yr, %i.p
  store i64 %i.ys, ptr %4, align 8
  %i.yt = load i8, ptr %i.wx, align 1             ; 2 uses
  %i.yu = zext i8 %i.yt to i32                    ; 2 uses
  %.not1015 = icmp sgt i8 %i.yt, -1
  br i1 %.not1015, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.yv = getelementptr i8, ptr %i.q, i64 2
  %i.yw = load i8, ptr %i.yv, align 1
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 7
  %i.yz = and i32 %i.yu, 127
  %i.za = or disjoint i32 %i.yy, %i.yz
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.zb = phi i32 [ %i.za, %bb.do ], [ %i.yu, %bb.dn ]
  %i.zc = add i32 %i.zb, %.19751353
  store i32 %i.zc, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.xp, ptr %i.c, align 8
  br label %.critedge

bb.dq:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.zd = sub nuw i32 %.0973, %.19751353          ; 2 uses
  %i.ze = icmp ult i32 %i.zd, 31
  br i1 %i.ze, label %g_strdup_inline.exit1073, label %bb.dr

g_strdup_inline.exit1073:                         ; preds = %bb.dq
  store i32 -13, ptr %2, align 4
  %i.zf = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.zf, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.zf, ptr %3, align 8
  br label %.critedge

bb.dr:                                            ; preds = %bb.dq
  %i.zg = getelementptr i8, ptr %i.q, i64 1       ; 3 uses
  %i.zh = load i8, ptr %i.zg, align 1             ; 2 uses
  %i.zi = zext i8 %i.zh to i32                    ; 2 uses
  %.not1010 = icmp sgt i8 %i.zh, -1
  br i1 %.not1010, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.zj = getelementptr i8, ptr %i.q, i64 2
  %i.zk = load i8, ptr %i.zj, align 1
  %i.zl = zext i8 %i.zk to i32
  %i.zm = shl nuw nsw i32 %i.zl, 7
  %i.zn = and i32 %i.zi, 127
  %i.zo = or disjoint i32 %i.zm, %i.zn
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.zp = phi i32 [ %i.zo, %bb.ds ], [ %i.zi, %bb.dr ]
  %i.zq = icmp samesign ult i32 %i.zp, 31
  br i1 %i.zq, label %g_strdup_inline.exit1071, label %bb.du

g_strdup_inline.exit1071:                         ; preds = %bb.dt
  store i32 -13, ptr %2, align 4
  %i.zr = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.zr, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.zr, ptr %3, align 8
  br label %.critedge

bb.du:                                            ; preds = %bb.dt
  %i.zs = getelementptr i8, ptr %0, i64 168
  %i.zt = load i32, ptr %i.zs, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.zt)
  %i.zu = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.zv = getelementptr i8, ptr %1, i64 216
  store ptr %i.zu, ptr %i.zv, align 8
  %i.zw = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.zw, align 4
  %i.zx = getelementptr i8, ptr %i.q, i64 4
  %i.zy = load i64, ptr %i.zx, align 1            ; 3 uses
  %i.zz = udiv i64 %i.zy, 1000000000
  %i.aaa = and i64 %i.zz, 4294967295
  %i.aab = getelementptr i8, ptr %1, i64 16
  store i64 %i.aaa, ptr %i.aab, align 8
  %i.aac = urem i64 %i.zy, 1000000000
  %i.aad = trunc nuw nsw i64 %i.aac to i32
  %i.aae = getelementptr i8, ptr %1, i64 24
  store i32 %i.aad, ptr %i.aae, align 8
  %i.aaf = load i8, ptr %i.zg, align 1            ; 2 uses
  %i.aag = zext i8 %i.aaf to i32                  ; 2 uses
  %.not1011 = icmp sgt i8 %i.aaf, -1
  br i1 %.not1011, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aah = getelementptr i8, ptr %i.q, i64 2
  %i.aai = load i8, ptr %i.aah, align 1
  %i.aaj = zext i8 %i.aai to i32
  %i.aak = shl nuw nsw i32 %i.aaj, 7
  %i.aal = and i32 %i.aag, 127
  %i.aam = or disjoint i32 %i.aak, %i.aal
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv
  %i.aan = phi i32 [ %i.aam, %bb.dv ], [ %i.aag, %bb.du ] ; 4 uses
  %i.aao = getelementptr i8, ptr %1, i64 48
  %i.aap = getelementptr i8, ptr %1, i64 52
  store i32 %i.aan, ptr %i.aap, align 4
  store i32 %i.aan, ptr %i.aao, align 8
  %i.aaq = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.aaq, align 4
  %i.aar = getelementptr i8, ptr %1, i64 80
  store i16 31, ptr %i.aar, align 8
  %i.aas = getelementptr i8, ptr %1, i64 82
  %i.aat = getelementptr i8, ptr %1, i64 90
  store i8 29, ptr %i.aat, align 2
  %i.aau = getelementptr i8, ptr %1, i64 91
  store i8 30, ptr %i.aau, align 1
  %i.aav = getelementptr i8, ptr %1, i64 93
  store i8 31, ptr %i.aav, align 1
  store <8 x i8> <i8 12, i8 16, i8 37, i8 20, i8 22, i8 24, i8 26, i8 28>, ptr %i.aas, align 2
  %i.aaw = icmp ult i32 %i.zd, %i.aan
  br i1 %i.aaw, label %g_strdup_inline.exit1069, label %bb.dx

g_strdup_inline.exit1069:                         ; preds = %bb.dw
  store i32 -13, ptr %2, align 4
  %i.aax = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.aax, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.aax, ptr %3, align 8
  br label %.critedge

bb.dx:                                            ; preds = %bb.dw
  %i.aay = getelementptr i8, ptr %1, i64 264
  %i.aaz = zext nneg i32 %i.aan to i64
  tail call void @ws_buffer_append(ptr noundef %i.aay, ptr noundef %i.q, i64 noundef %i.aaz)
  %i.aba = load i64, ptr %i.m, align 8
  %i.abb = add i64 %i.aba, %i.p
  store i64 %i.abb, ptr %4, align 8
  %i.abc = load i8, ptr %i.zg, align 1            ; 2 uses
  %i.abd = zext i8 %i.abc to i32                  ; 2 uses
  %.not1012 = icmp sgt i8 %i.abc, -1
  br i1 %.not1012, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.abe = getelementptr i8, ptr %i.q, i64 2
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = zext i8 %i.abf to i32
  %i.abh = shl nuw nsw i32 %i.abg, 7
  %i.abi = and i32 %i.abd, 127
  %i.abj = or disjoint i32 %i.abh, %i.abi
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dx, %bb.dy
  %i.abk = phi i32 [ %i.abj, %bb.dy ], [ %i.abd, %bb.dx ]
  %i.abl = add i32 %i.abk, %.19751353
  store i32 %i.abl, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.zy, ptr %i.c, align 8
  br label %.critedge

bb.ea:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.abm = sub nuw i32 %.0973, %.19751353         ; 2 uses
  %i.abn = icmp ult i32 %i.abm, 35
  br i1 %i.abn, label %g_strdup_inline.exit1067, label %bb.eb

g_strdup_inline.exit1067:                         ; preds = %bb.ea
  store i32 -13, ptr %2, align 4
  %i.abo = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.abo, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.abo, ptr %3, align 8
  br label %.critedge

bb.eb:                                            ; preds = %bb.ea
  %i.abp = getelementptr i8, ptr %i.q, i64 1      ; 3 uses
  %i.abq = load i8, ptr %i.abp, align 1           ; 2 uses
  %i.abr = zext i8 %i.abq to i32                  ; 2 uses
  %.not1007 = icmp sgt i8 %i.abq, -1
  br i1 %.not1007, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.abs = getelementptr i8, ptr %i.q, i64 2
  %i.abt = load i8, ptr %i.abs, align 1
  %i.abu = zext i8 %i.abt to i32
  %i.abv = shl nuw nsw i32 %i.abu, 7
  %i.abw = and i32 %i.abr, 127
  %i.abx = or disjoint i32 %i.abv, %i.abw
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  %i.aby = phi i32 [ %i.abx, %bb.ec ], [ %i.abr, %bb.eb ]
  %i.abz = icmp samesign ult i32 %i.aby, 35
  br i1 %i.abz, label %g_strdup_inline.exit1065, label %bb.ee

g_strdup_inline.exit1065:                         ; preds = %bb.ed
  store i32 -13, ptr %2, align 4
  %i.aca = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.aca, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.aca, ptr %3, align 8
  br label %.critedge

bb.ee:                                            ; preds = %bb.ed
  %i.acb = getelementptr i8, ptr %0, i64 168
  %i.acc = load i32, ptr %i.acb, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.acc)
  %i.acd = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.ace = getelementptr i8, ptr %1, i64 216
  store ptr %i.acd, ptr %i.ace, align 8
  %i.acf = getelementptr i8, ptr %1, i64 4        ; 2 uses
  store i32 1, ptr %i.acf, align 4
  %i.acg = getelementptr i8, ptr %i.q, i64 4
  %i.ach = load i64, ptr %i.acg, align 1          ; 3 uses
  %i.aci = udiv i64 %i.ach, 1000000000
  %i.acj = and i64 %i.aci, 4294967295
  %i.ack = getelementptr i8, ptr %1, i64 16
  store i64 %i.acj, ptr %i.ack, align 8
  %i.acl = urem i64 %i.ach, 1000000000
  %i.acm = trunc nuw nsw i64 %i.acl to i32
  %i.acn = getelementptr i8, ptr %1, i64 24
  store i32 %i.acm, ptr %i.acn, align 8
  store i32 3, ptr %i.acf, align 4
  %i.aco = getelementptr i8, ptr %i.q, i64 12
  %.val1139 = load i16, ptr %i.aco, align 1
  %i.acp = zext i16 %.val1139 to i32
  %i.acq = add nuw nsw i32 %i.acp, 35
  %i.acr = getelementptr i8, ptr %1, i64 48
  %i.acs = getelementptr i8, ptr %1, i64 52
  store i32 %i.acq, ptr %i.acs, align 4
  %i.act = load i8, ptr %i.abp, align 1           ; 2 uses
  %i.acu = zext i8 %i.act to i32                  ; 2 uses
  %.not1008 = icmp sgt i8 %i.act, -1
  br i1 %.not1008, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.acv = getelementptr i8, ptr %i.q, i64 2
  %i.acw = load i8, ptr %i.acv, align 1
  %i.acx = zext i8 %i.acw to i32
  %i.acy = shl nuw nsw i32 %i.acx, 7
  %i.acz = and i32 %i.acu, 127
  %i.ada = or disjoint i32 %i.acy, %i.acz
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ee, %bb.ef
  %i.adb = phi i32 [ %i.ada, %bb.ef ], [ %i.acu, %bb.ee ] ; 3 uses
  store i32 %i.adb, ptr %i.acr, align 8
  %i.adc = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.adc, align 4
  %i.add = getelementptr i8, ptr %1, i64 80
  store i16 35, ptr %i.add, align 8
  %i.ade = getelementptr i8, ptr %1, i64 82
  %i.adf = getelementptr i8, ptr %1, i64 90
  store i8 33, ptr %i.adf, align 2
  %i.adg = getelementptr i8, ptr %1, i64 91
  store i8 34, ptr %i.adg, align 1
  %i.adh = getelementptr i8, ptr %1, i64 93
  store i8 35, ptr %i.adh, align 1
  store <8 x i8> <i8 16, i8 20, i8 37, i8 24, i8 26, i8 28, i8 30, i8 32>, ptr %i.ade, align 2
  %i.adi = icmp ult i32 %i.abm, %i.adb
  br i1 %i.adi, label %g_strdup_inline.exit1063, label %bb.eh

g_strdup_inline.exit1063:                         ; preds = %bb.eg
  store i32 -13, ptr %2, align 4
  %i.adj = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.adj, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.adj, ptr %3, align 8
  br label %.critedge

bb.eh:                                            ; preds = %bb.eg
  %i.adk = getelementptr i8, ptr %1, i64 264
  %i.adl = zext nneg i32 %i.adb to i64
  tail call void @ws_buffer_append(ptr noundef %i.adk, ptr noundef %i.q, i64 noundef %i.adl)
  %i.adm = load i64, ptr %i.m, align 8
  %i.adn = add i64 %i.adm, %i.p
  store i64 %i.adn, ptr %4, align 8
  %i.ado = load i8, ptr %i.abp, align 1           ; 2 uses
  %i.adp = zext i8 %i.ado to i32                  ; 2 uses
  %.not1009 = icmp sgt i8 %i.ado, -1
  br i1 %.not1009, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.adq = getelementptr i8, ptr %i.q, i64 2
  %i.adr = load i8, ptr %i.adq, align 1
  %i.ads = zext i8 %i.adr to i32
  %i.adt = shl nuw nsw i32 %i.ads, 7
  %i.adu = and i32 %i.adp, 127
  %i.adv = or disjoint i32 %i.adt, %i.adu
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.adw = phi i32 [ %i.adv, %bb.ei ], [ %i.adp, %bb.eh ]
  %i.adx = add i32 %i.adw, %.19751353
  store i32 %i.adx, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.ach, ptr %i.c, align 8
  br label %.critedge

bb.ek:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ady = sub nuw i32 %.0973, %.19751353         ; 2 uses
  %i.adz = icmp ult i32 %i.ady, 48
  br i1 %i.adz, label %g_strdup_inline.exit1061, label %bb.el

g_strdup_inline.exit1061:                         ; preds = %bb.ek
  store i32 -13, ptr %2, align 4
  %i.aea = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.aea, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.aea, ptr %3, align 8
  br label %.critedge

bb.el:                                            ; preds = %bb.ek
  %i.aeb = getelementptr i8, ptr %i.q, i64 1      ; 3 uses
  %i.aec = load i8, ptr %i.aeb, align 1           ; 2 uses
  %i.aed = zext i8 %i.aec to i32                  ; 2 uses
  %.not1004 = icmp sgt i8 %i.aec, -1
  br i1 %.not1004, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aee = getelementptr i8, ptr %i.q, i64 2
  %i.aef = load i8, ptr %i.aee, align 1
  %i.aeg = zext i8 %i.aef to i32
  %i.aeh = shl nuw nsw i32 %i.aeg, 7
  %i.aei = and i32 %i.aed, 127
  %i.aej = or disjoint i32 %i.aeh, %i.aei
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %i.aek = phi i32 [ %i.aej, %bb.em ], [ %i.aed, %bb.el ]
  %i.ael = icmp samesign ult i32 %i.aek, 48
  br i1 %i.ael, label %g_strdup_inline.exit1059, label %bb.eo

g_strdup_inline.exit1059:                         ; preds = %bb.en
  store i32 -13, ptr %2, align 4
  %i.aem = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.aem, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.aem, ptr %3, align 8
  br label %.critedge

bb.eo:                                            ; preds = %bb.en
  %i.aen = getelementptr i8, ptr %0, i64 168
  %i.aeo = load i32, ptr %i.aen, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.aeo)
  %i.aep = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.aeq = getelementptr i8, ptr %1, i64 216
  store ptr %i.aep, ptr %i.aeq, align 8
  %i.aer = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.aer, align 4
  %i.aes = getelementptr i8, ptr %i.q, i64 4
  %i.aet = load i64, ptr %i.aes, align 1          ; 3 uses
  %i.aeu = udiv i64 %i.aet, 1000000000
  %i.aev = and i64 %i.aeu, 4294967295
  %i.aew = getelementptr i8, ptr %1, i64 16
  store i64 %i.aev, ptr %i.aew, align 8
  %i.aex = urem i64 %i.aet, 1000000000
  %i.aey = trunc nuw nsw i64 %i.aex to i32
  %i.aez = getelementptr i8, ptr %1, i64 24
  store i32 %i.aey, ptr %i.aez, align 8
  %i.afa = load i8, ptr %i.aeb, align 1           ; 2 uses
  %i.afb = zext i8 %i.afa to i32                  ; 2 uses
  %.not1005 = icmp sgt i8 %i.afa, -1
  br i1 %.not1005, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afc = getelementptr i8, ptr %i.q, i64 2
  %i.afd = load i8, ptr %i.afc, align 1
  %i.afe = zext i8 %i.afd to i32
  %i.aff = shl nuw nsw i32 %i.afe, 7
  %i.afg = and i32 %i.afb, 127
  %i.afh = or disjoint i32 %i.aff, %i.afg
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.afi = phi i32 [ %i.afh, %bb.ep ], [ %i.afb, %bb.eo ] ; 4 uses
  %i.afj = getelementptr i8, ptr %1, i64 48
  %i.afk = getelementptr i8, ptr %1, i64 52
  store i32 %i.afi, ptr %i.afk, align 4
  store i32 %i.afi, ptr %i.afj, align 8
  %i.afl = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.afl, align 4
  %i.afm = getelementptr i8, ptr %1, i64 80
  store i16 48, ptr %i.afm, align 8
  %i.afn = getelementptr i8, ptr %1, i64 82
  %i.afo = getelementptr i8, ptr %1, i64 90
  store <4 x i8> <i8 29, i8 30, i8 32, i8 48>, ptr %i.afo, align 2
  store <8 x i8> <i8 12, i8 16, i8 38, i8 20, i8 22, i8 24, i8 26, i8 28>, ptr %i.afn, align 2
  %i.afp = icmp ult i32 %i.ady, %i.afi
  br i1 %i.afp, label %g_strdup_inline.exit1057, label %bb.er

g_strdup_inline.exit1057:                         ; preds = %bb.eq
  store i32 -13, ptr %2, align 4
  %i.afq = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.afq, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.afq, ptr %3, align 8
  br label %.critedge

bb.er:                                            ; preds = %bb.eq
  %i.afr = getelementptr i8, ptr %1, i64 264
  %i.afs = zext nneg i32 %i.afi to i64
  tail call void @ws_buffer_append(ptr noundef %i.afr, ptr noundef %i.q, i64 noundef %i.afs)
  %i.aft = load i64, ptr %i.m, align 8
  %i.afu = add i64 %i.aft, %i.p
  store i64 %i.afu, ptr %4, align 8
  %i.afv = load i8, ptr %i.aeb, align 1           ; 2 uses
  %i.afw = zext i8 %i.afv to i32                  ; 2 uses
  %.not1006 = icmp sgt i8 %i.afv, -1
  br i1 %.not1006, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.afx = getelementptr i8, ptr %i.q, i64 2
  %i.afy = load i8, ptr %i.afx, align 1
  %i.afz = zext i8 %i.afy to i32
  %i.aga = shl nuw nsw i32 %i.afz, 7
  %i.agb = and i32 %i.afw, 127
  %i.agc = or disjoint i32 %i.aga, %i.agb
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es
  %i.agd = phi i32 [ %i.agc, %bb.es ], [ %i.afw, %bb.er ]
  %i.age = add i32 %i.agd, %.19751353
  store i32 %i.age, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.aet, ptr %i.c, align 8
  br label %.critedge

bb.eu:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.agf = sub nuw i32 %.0973, %.19751353         ; 2 uses
  %i.agg = icmp ult i32 %i.agf, 52
  br i1 %i.agg, label %g_strdup_inline.exit1055, label %bb.ev

g_strdup_inline.exit1055:                         ; preds = %bb.eu
  store i32 -13, ptr %2, align 4
  %i.agh = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.agh, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.agh, ptr %3, align 8
  br label %.critedge

bb.ev:                                            ; preds = %bb.eu
  %i.agi = getelementptr i8, ptr %i.q, i64 1      ; 3 uses
  %i.agj = load i8, ptr %i.agi, align 1           ; 2 uses
  %i.agk = zext i8 %i.agj to i32                  ; 2 uses
  %.not1001 = icmp sgt i8 %i.agj, -1
  br i1 %.not1001, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.agl = getelementptr i8, ptr %i.q, i64 2
  %i.agm = load i8, ptr %i.agl, align 1
  %i.agn = zext i8 %i.agm to i32
  %i.ago = shl nuw nsw i32 %i.agn, 7
  %i.agp = and i32 %i.agk, 127
  %i.agq = or disjoint i32 %i.ago, %i.agp
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.ew
  %i.agr = phi i32 [ %i.agq, %bb.ew ], [ %i.agk, %bb.ev ]
  %i.ags = icmp samesign ult i32 %i.agr, 52
  br i1 %i.ags, label %g_strdup_inline.exit1053, label %bb.ey

g_strdup_inline.exit1053:                         ; preds = %bb.ex
  store i32 -13, ptr %2, align 4
  %i.agt = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.agt, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.agt, ptr %3, align 8
  br label %.critedge

bb.ey:                                            ; preds = %bb.ex
  %i.agu = getelementptr i8, ptr %0, i64 168
  %i.agv = load i32, ptr %i.agu, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.agv)
  %i.agw = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.agx = getelementptr i8, ptr %1, i64 216
  store ptr %i.agw, ptr %i.agx, align 8
  %i.agy = getelementptr i8, ptr %1, i64 4        ; 2 uses
  store i32 1, ptr %i.agy, align 4
  %i.agz = getelementptr i8, ptr %i.q, i64 4
  %i.aha = load i64, ptr %i.agz, align 1          ; 3 uses
  %i.ahb = udiv i64 %i.aha, 1000000000
  %i.ahc = and i64 %i.ahb, 4294967295
  %i.ahd = getelementptr i8, ptr %1, i64 16
  store i64 %i.ahc, ptr %i.ahd, align 8
  %i.ahe = urem i64 %i.aha, 1000000000
  %i.ahf = trunc nuw nsw i64 %i.ahe to i32
  %i.ahg = getelementptr i8, ptr %1, i64 24
  store i32 %i.ahf, ptr %i.ahg, align 8
  store i32 3, ptr %i.agy, align 4
  %i.ahh = getelementptr i8, ptr %i.q, i64 12
  %.val1137 = load i16, ptr %i.ahh, align 1
  %i.ahi = zext i16 %.val1137 to i32
  %i.ahj = add nuw nsw i32 %i.ahi, 52
  %i.ahk = getelementptr i8, ptr %1, i64 48
  %i.ahl = getelementptr i8, ptr %1, i64 52
  store i32 %i.ahj, ptr %i.ahl, align 4
  %i.ahm = load i8, ptr %i.agi, align 1           ; 2 uses
  %i.ahn = zext i8 %i.ahm to i32                  ; 2 uses
  %.not1002 = icmp sgt i8 %i.ahm, -1
  br i1 %.not1002, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aho = getelementptr i8, ptr %i.q, i64 2
  %i.ahp = load i8, ptr %i.aho, align 1
  %i.ahq = zext i8 %i.ahp to i32
  %i.ahr = shl nuw nsw i32 %i.ahq, 7
  %i.ahs = and i32 %i.ahn, 127
  %i.aht = or disjoint i32 %i.ahr, %i.ahs
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %i.ahu = phi i32 [ %i.aht, %bb.ez ], [ %i.ahn, %bb.ey ] ; 3 uses
  store i32 %i.ahu, ptr %i.ahk, align 8
  %i.ahv = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.ahv, align 4
  %i.ahw = getelementptr i8, ptr %1, i64 80
  store i16 52, ptr %i.ahw, align 8
  %i.ahx = getelementptr i8, ptr %1, i64 82
  %i.ahy = getelementptr i8, ptr %1, i64 90
  store <4 x i8> <i8 33, i8 34, i8 36, i8 52>, ptr %i.ahy, align 2
  store <8 x i8> <i8 16, i8 20, i8 38, i8 24, i8 26, i8 28, i8 30, i8 32>, ptr %i.ahx, align 2
  %i.ahz = icmp ult i32 %i.agf, %i.ahu
  br i1 %i.ahz, label %g_strdup_inline.exit1051, label %bb.fb

g_strdup_inline.exit1051:                         ; preds = %bb.fa
  store i32 -13, ptr %2, align 4
  %i.aia = tail call noalias dereferenceable_or_null(38) ptr @g_malloc(i64 noundef 38) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(38) %i.aia, ptr noundef nonnull align 1 dereferenceable(38) @.str.12, i64 noundef 38, i1 noundef false) #11
  store ptr %i.aia, ptr %3, align 8
  br label %.critedge

bb.fb:                                            ; preds = %bb.fa
  %i.aib = getelementptr i8, ptr %1, i64 264
  %i.aic = zext nneg i32 %i.ahu to i64
  tail call void @ws_buffer_append(ptr noundef %i.aib, ptr noundef %i.q, i64 noundef %i.aic)
  %i.aid = load i64, ptr %i.m, align 8
  %i.aie = add i64 %i.aid, %i.p
  store i64 %i.aie, ptr %4, align 8
  %i.aif = load i8, ptr %i.agi, align 1           ; 2 uses
  %i.aig = zext i8 %i.aif to i32                  ; 2 uses
  %.not1003 = icmp sgt i8 %i.aif, -1
  br i1 %.not1003, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aih = getelementptr i8, ptr %i.q, i64 2
  %i.aii = load i8, ptr %i.aih, align 1
  %i.aij = zext i8 %i.aii to i32
  %i.aik = shl nuw nsw i32 %i.aij, 7
  %i.ail = and i32 %i.aig, 127
  %i.aim = or disjoint i32 %i.aik, %i.ail
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %i.ain = phi i32 [ %i.aim, %bb.fc ], [ %i.aig, %bb.fb ]
  %i.aio = add i32 %i.ain, %.19751353
  store i32 %i.aio, ptr %i.f, align 8
  store i32 %.0973, ptr %i.h, align 4
  store i64 %i.aha, ptr %i.c, align 8
  br label %.critedge

bb.fe:                                            ; preds = %.lr.ph
  %.val1156 = load i32, ptr %i.h, align 4         ; 4 uses
  %i.aip = icmp ule i32 %.19751353, %.val1156
  %i.aiq = sub nuw i32 %.val1156, %.19751353
  %i.air = icmp ugt i32 %i.aiq, 7
  %or.cond.not.i = select i1 %i.aip, i1 %i.air, i1 false
  br i1 %or.cond.not.i, label %bb.ff, label %nstrace_ensure_buflen.exit

nstrace_ensure_buflen.exit:                       ; preds = %bb.fe
  store i32 -13, ptr %2, align 4
  %i.ais = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(24) %i.ais, ptr noundef nonnull align 1 dereferenceable(24) @.str.9, i64 noundef 24, i1 noundef false) #11
  store ptr %i.ais, ptr %3, align 8
  br label %.critedge

bb.ff:                                            ; preds = %bb.fe
  %i.ait = getelementptr i8, ptr %i.q, i64 1
  %i.aiu = load i8, ptr %i.ait, align 1           ; 3 uses
  %i.aiv = zext i8 %i.aiu to i32                  ; 3 uses
  %.not999 = icmp sgt i8 %i.aiu, -1
  br i1 %.not999, label %bb.fg, label %.thread

bb.fg:                                            ; preds = %bb.ff
  %i.aiw = icmp eq i8 %i.aiu, 0
  br i1 %i.aiw, label %g_strdup_inline.exit1049, label %bb.fi

.thread:                                          ; preds = %bb.ff
  %i.aix = getelementptr i8, ptr %i.q, i64 2
  %i.aiy = load i8, ptr %i.aix, align 1
  %i.aiz = zext i8 %i.aiy to i32
  %i.aja = shl nuw nsw i32 %i.aiz, 7
  %i.ajb = and i32 %i.aiv, 127
  %i.ajc = or disjoint i32 %i.aja, %i.ajb
  %i.ajd = icmp eq i32 %i.ajc, 0
  br i1 %i.ajd, label %g_strdup_inline.exit1049, label %bb.fh

g_strdup_inline.exit1049:                         ; preds = %.thread, %bb.fg
  store i32 -13, ptr %2, align 4
  %i.aje = tail call noalias dereferenceable_or_null(32) ptr @g_malloc(i64 noundef 32) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %i.aje, ptr noundef nonnull align 1 dereferenceable(32) @.str.8, i64 noundef 32, i1 noundef false) #11
  store ptr %i.aje, ptr %3, align 8
  br label %.critedge

bb.fh:                                            ; preds = %.thread
  %i.ajf = getelementptr i8, ptr %i.q, i64 2
  %i.ajg = load i8, ptr %i.ajf, align 1
  %i.ajh = zext i8 %i.ajg to i32
  %i.aji = shl nuw nsw i32 %i.ajh, 7
  %i.ajj = and i32 %i.aiv, 127
  %i.ajk = or disjoint i32 %i.aji, %i.ajj
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh
  %i.ajl = phi i32 [ %i.ajk, %bb.fh ], [ %i.aiv, %bb.fg ]
  %i.ajm = add i32 %i.ajl, %.19751353             ; 3 uses
  %i.ajn = icmp ule i32 %i.ajm, %.val1156
  %i.ajo = sub nuw i32 %.val1156, %i.ajm
  %i.ajp = icmp ugt i32 %i.ajo, 7
  %or.cond.not.i1176 = select i1 %i.ajn, i1 %i.ajp, i1 false
  br i1 %or.cond.not.i1176, label %bb.fj, label %nstrace_ensure_buflen.exit1178

nstrace_ensure_buflen.exit1178:                   ; preds = %bb.fi
  store i32 -13, ptr %2, align 4
  %i.ajq = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(24) %i.ajq, ptr noundef nonnull align 1 dereferenceable(24) @.str.9, i64 noundef 24, i1 noundef false) #11
  store ptr %i.ajq, ptr %3, align 8
  br label %.critedge

bb.fj:                                            ; preds = %bb.fi
  %i.ajr = getelementptr i8, ptr %i.q, i64 4
  %i.ajs = load i32, ptr %i.ajr, align 1
end_hunk_0
