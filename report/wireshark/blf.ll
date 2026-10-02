Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/blf?download=true
inline.NumInlined: 241
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@blf_dump_interface_setup:bb.a
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8
  %i.gk = call i32 @wtap_block_get_string_option_value(ptr noundef nonnull %i.gg, i32 noundef 2, ptr noundef nonnull %i.d)
  %i.gl = icmp eq i32 %i.gk, 0
  %i.gm = load ptr, ptr %i.d, align 8
  %i.gn = icmp ne ptr %i.gm, null
  %or.cond = select i1 %i.gl, i1 %i.gn, i1 false
  %i.go = icmp samesign ult i64 %indvars.iv, 255
  %or.cond5 = and i1 %i.go, %or.cond
  br i1 %or.cond5, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gp = trunc nuw nsw i64 %indvars.iv to i32
  %i.gq = trunc nuw nsw i64 %indvars.iv to i16
  %i.gr = add nuw nsw i16 %i.gq, 1
  %i.gs = load i32, ptr %i.gi, align 8
  %i.gt = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8            ; 3 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 8            ; 2 uses
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %.not2 = icmp samesign ult i64 %indvars.iv, %i.gx
  br i1 %.not2, label %blf_dump_set_interface_mapping.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gy = trunc nuw nsw i64 %indvars.iv to i32
  %i.gz = add nuw nsw i32 %i.gy, 1
  %i.ha = call ptr @g_array_set_size(ptr noundef %i.gu, i32 noundef %i.gz) ; 0 uses
  %i.hb = load ptr, ptr %i.gt, align 8            ; 3 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = icmp ult i32 %i.gw, %i.hd
  br i1 %i.he, label %.lr.ph.i.i, label %blf_dump_set_interface_mapping.exit

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %i.gx, %bb.ac ] ; 3 uses
  %i.hf = phi ptr [ %i.hm, %.lr.ph.i.i ], [ %i.hb, %bb.ac ]
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr [12 x i8], ptr %i.hg, i64 %indvars.iv.i.i ; 4 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 4
  store i16 0, ptr %i.hi, align 4
  %i.hj = getelementptr i8, ptr %i.hh, i64 6
  store i16 -1, ptr %i.hj, align 2
  %i.hk = getelementptr i8, ptr %i.hh, i64 8
  %i.hl = trunc nuw i64 %indvars.iv.i.i to i32
  store i32 %i.hl, ptr %i.hk, align 4
  store i32 -2, ptr %i.hh, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hm = load ptr, ptr %i.gt, align 8            ; 3 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = zext i32 %i.ho to i64
  %i.hq = icmp samesign ult i64 %indvars.iv.next.i.i, %i.hp
  br i1 %i.hq, label %.lr.ph.i.i, label %blf_dump_set_interface_mapping.exit, !llvm.loop !0

blf_dump_set_interface_mapping.exit:              ; preds = %.lr.ph.i.i, %bb.ab, %bb.ac
  %i.hr = phi ptr [ %i.hb, %bb.ac ], [ %i.gu, %bb.ab ], [ %i.hm, %.lr.ph.i.i ]
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr [12 x i8], ptr %i.hs, i64 %indvars.iv ; 4 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  store i16 %i.gr, ptr %i.hu, align 4
  %i.hv = getelementptr i8, ptr %i.ht, i64 6
  store i16 -1, ptr %i.hv, align 2
  %i.hw = getelementptr i8, ptr %i.ht, i64 8
  store i32 %i.gp, ptr %i.hw, align 4
  store i32 %i.gs, ptr %i.ht, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %blf_dump_set_interface_mapping.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %i.hx = phi ptr [ %.pre, %bb.ad ], [ %i.gd, %bb.z ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 8
  %i.ia = zext i32 %i.hz to i64
  %.not14 = icmp samesign ult i64 %indvars.iv.next, %i.ia
  br i1 %.not14, label %.lr.ph, label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %.lr.ph, %bb.ae, %blf_dump_interface_setup_by_blf_based_idb_desc.exit, %blf_dump_interface_setup_by_blf_based_idb_desc.exit.thread
  %.8 = phi i1 [ true, %blf_dump_interface_setup_by_blf_based_idb_desc.exit.thread ], [ true, %blf_dump_interface_setup_by_blf_based_idb_desc.exit ], [ %.not.not.not, %bb.ae ], [ %.not.not.not, %.lr.ph ]
  ret i1 %.8
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @blf_dump_socketcan(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #2 {
bb.a:
  %11 = alloca %struct.blf_logobjectheader, align 8 ; 8 uses
  %12 = alloca %struct.blf_blockheader, align 4   ; 10 uses
  %13 = alloca %struct.blf_logobjectheader, align 8 ; 8 uses
  %14 = alloca %struct.blf_blockheader, align 4   ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %15 = alloca %struct.blf_canfdmessage64, align 4 ; 15 uses
  %16 = alloca %struct.blf_canmessage, align 4    ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = icmp ult i64 %6, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -21, ptr %2, align 4
  %i.d = trunc nuw nsw i64 %6 to i32
  %i.e = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.172, i32 noundef %i.d)
  store ptr %i.e, ptr %3, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 5, ptr noundef nonnull @.str.72, i64 noundef 4627, ptr noundef nonnull @__func__.blf_dump_socketcan, ptr noundef nonnull @.str.173)
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %5, i64 4
  %i.g = load i8, ptr %i.f, align 1               ; 10 uses
  %.not108 = icmp sgt i8 %i.g, -1
  br i1 %.not108, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc zeroext i1 @blf_dump_socketcanxl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %9, i1 noundef zeroext %10)
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 60
  %.val119 = load i32, ptr %i.j, align 4          ; 3 uses
  %.val.val = load ptr, ptr %.val, align 8        ; 2 uses
  %i.k = getelementptr i8, ptr %.val.val, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp ult i32 %.val119, %i.l
  br i1 %i.m, label %blf_dump_get_interface_mapping.exit, label %blf_dump_get_interface_mapping.exit.thread

blf_dump_get_interface_mapping.exit.thread:       ; preds = %bb.e
  store i32 -21, ptr %2, align 4
  %i.n = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.152, i32 noundef %.val119)
  store ptr %i.n, ptr %3, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 6, ptr noundef nonnull @.str.72, i64 noundef 4139, ptr noundef nonnull @__func__.blf_dump_get_interface_mapping, ptr noundef nonnull @.str.153)
  br label %bb.ah

blf_dump_get_interface_mapping.exit:              ; preds = %bb.e
  %i.o = load ptr, ptr %.val.val, align 8
  %i.p = zext i32 %.val119 to i64
  %i.q = getelementptr [12 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %blf_dump_get_interface_mapping.exit
  %i.s = zext nneg i8 %i.g to i64                 ; 3 uses
  %i.t = add nuw nsw i64 %i.s, 8
  %i.u = icmp ult i64 %6, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -21, ptr %2, align 4
  %i.v = trunc nuw nsw i64 %6 to i32
  %i.w = zext nneg i8 %i.g to i32
  %i.x = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.174, i32 noundef %i.v, i32 noundef %i.w)
  store ptr %i.x, ptr %3, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 5, ptr noundef nonnull @.str.72, i64 noundef 4647, ptr noundef nonnull @__func__.blf_dump_socketcan, ptr noundef nonnull @.str.173)
  br label %bb.ah

bb.h:                                             ; preds = %bb.f
  %or.cond = or i1 %9, %10
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %1, i64 216
  %.val120 = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.z = call i32 @wtap_block_get_uint32_option_value(ptr noundef %.val120, i32 noundef 2, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = load i32, ptr %i.a, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  %narrow.i = select i1 %.not.i, i1 %i.ab, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.096.in = phi i1 [ %10, %bb.h ], [ %narrow.i, %bb.i ]
  %.096 = zext i1 %.096.in to i8                  ; 3 uses
  %or.cond5 = or i1 %7, %8
  br i1 %or.cond5, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %5, i64 5
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, 4
  %.not109 = icmp eq i8 %i.ae, 0
  br i1 %.not109, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %1, i64 48
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp ugt i32 %i.ag, 16
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.095.shrunk = phi i1 [ %8, %bb.j ], [ %i.ah, %bb.l ], [ true, %bb.k ] ; 2 uses
  %17 = load i8, ptr %5, align 1
  %18 = zext i8 %17 to i32                        ; 3 uses
  %19 = shl nuw i32 %18, 24
  %20 = getelementptr i8, ptr %5, i64 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = getelementptr i8, ptr %5, i64 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = getelementptr i8, ptr %5, i64 3
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or disjoint i32 %27, %30
  %i.ai = and i32 %18, 32
  %.not110 = icmp ne i32 %i.ai, 0                 ; 2 uses
  %i.aj = and i32 %18, 64
  %.not111 = icmp eq i32 %i.aj, 0
  %.masked129 = and i32 %19, -1627389952
  %.masked = or disjoint i32 %23, %.masked129
  %32 = or disjoint i32 %31, %.masked             ; 2 uses
  br i1 %.095.shrunk, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %5, i64 5
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %.not113 = trunc i8 %i.al to i1
  %i.an = and i32 %i.am, 2
  %.not114 = icmp ne i32 %i.an, 0
  %i.ao = and i32 %i.am, 4
  %.not115 = icmp eq i32 %i.ao, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.ap = getelementptr i8, ptr %i.q, i64 4
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = trunc i16 %i.aq to i8
  store i8 %i.ar, ptr %15, align 4
  %i.as = icmp samesign ult i8 %i.g, 65
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr i8, ptr @canfd_length_to_dlc, i64 %i.s
  %i.au = load i8, ptr %i.at, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.av = phi i8 [ %i.au, %bb.o ], [ 0, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 1
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 2
  store i8 %i.g, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 3
  store i8 0, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %32, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  store i32 0, ptr %i.bb, align 4
  br i1 %.not115, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 4096, ptr %i.bb, align 4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 5, ptr noundef nonnull @.str.72, i64 noundef 4707, ptr noundef nonnull @__func__.blf_dump_socketcan, ptr noundef nonnull @.str.176)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = phi i32 [ 0, %bb.r ], [ 4096, %bb.q ]
  %i.bd = or i1 %.not114, %.not113
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = shl nuw nsw i32 %i.am, 13
  %i.bf = and i32 %i.be, 24576
  %simplifycfg.merge = or disjoint i32 %i.bf, %i.bc
  store i32 %simplifycfg.merge, ptr %i.bb, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %i.bg, i8 0, i64 18, i1 false)
  store i8 %.096, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 35
  store i8 0, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 0, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.i, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store i32 2, ptr %13, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i16 0, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 6
  store i16 1, ptr %i.bm, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %4, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store i32 1245859660, ptr %14, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i16 32, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 6
  store i16 1, ptr %i.bp, align 2
  %narrow133 = add nuw i8 %i.g, 72
  %i.bq = zext i8 %narrow133 to i32
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 101, ptr %i.bs, align 4
  %i.bt = call i64 @wtap_dump_file_tell(ptr noundef %0, ptr noundef %2)
  %i.bu = getelementptr i8, ptr %i.bk, i64 96
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %i.bk, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %14, i64 16, i1 false)
  %i.bw = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %14, i64 noundef 16, ptr noundef %2)
  br i1 %i.bw, label %blf_dump_objheader.exit, label %blf_dump_objheader.exit.thread

blf_dump_objheader.exit.thread:                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.critedge

blf_dump_objheader.exit:                          ; preds = %bb.u
  %i.bx = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %13, i64 noundef 16, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br i1 %i.bx, label %bb.v, label %.critedge

bb.v:                                             ; preds = %blf_dump_objheader.exit
  %i.by = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %15, i64 noundef 40, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br i1 %i.by, label %bb.ad, label %bb.ah

bb.w:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.bz = icmp samesign ugt i8 %i.g, 8
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ca = zext nneg i8 %i.g to i32
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 5, ptr noundef nonnull @.str.72, i64 noundef 4739, ptr noundef nonnull @__func__.blf_dump_socketcan, ptr noundef nonnull @.str.177, i32 noundef %i.ca)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.097 = phi i8 [ 8, %bb.x ], [ %i.g, %bb.w ]    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 3
  store i8 %.097, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %i.q, i64 4
  %i.cd = load i16, ptr %i.cc, align 4
  store i16 %i.cd, ptr %16, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 2 ; 2 uses
  store i8 %.096, ptr %i.ce, align 2
  br i1 %.not110, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not111, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = or disjoint i8 %.096, -128
  store i8 %i.cf, ptr %i.ce, align 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %32, ptr %i.cg, align 4
  %i.ch = load ptr, ptr %i.i, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store i32 2, ptr %11, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i16 0, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 6
  store i16 1, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %4, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store i32 1245859660, ptr %12, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i16 32, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 6
  store i16 1, ptr %i.cm, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 48, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 1, ptr %i.co, align 4
  %i.cp = call i64 @wtap_dump_file_tell(ptr noundef %0, ptr noundef %2)
  %i.cq = getelementptr i8, ptr %i.ch, i64 96
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.ch, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false)
  %i.cs = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %12, i64 noundef 16, ptr noundef %2)
  br i1 %i.cs, label %blf_dump_objheader.exit123, label %blf_dump_objheader.exit123.thread

blf_dump_objheader.exit123.thread:                ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.thread

blf_dump_objheader.exit123:                       ; preds = %bb.ab
  %i.ct = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %11, i64 noundef 16, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br i1 %i.ct, label %bb.ac, label %.thread

.thread:                                          ; preds = %bb.y, %blf_dump_objheader.exit123, %blf_dump_objheader.exit123.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.ah

bb.ac:                                            ; preds = %blf_dump_objheader.exit123
  %i.cu = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %16, i64 noundef 8, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br i1 %i.cu, label %._crit_edge, label %bb.ah

._crit_edge:                                      ; preds = %bb.ac
  %.pre = zext nneg i8 %.097 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.v
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.s, %bb.v ]
  %.1 = phi i8 [ %.097, %._crit_edge ], [ %i.g, %bb.v ] ; 2 uses
  %i.cv = getelementptr i8, ptr %5, i64 8
  %i.cw = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.cv, i64 noundef %.pre-phi, ptr noundef %2)
  br i1 %i.cw, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cx = icmp samesign ugt i8 %.1, 7
  %or.cond8.not = or i1 %.095.shrunk, %i.cx
  br i1 %or.cond8.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8
  %narrow = sub nuw nsw i8 8, %.1
  %i.cy = zext nneg i8 %narrow to i64
  %i.cz = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.cy, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br label %bb.ah

.critedge:                                        ; preds = %blf_dump_objheader.exit.thread, %blf_dump_objheader.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.ah

bb.ah:                                            ; preds = %.thread, %blf_dump_get_interface_mapping.exit.thread, %blf_dump_get_interface_mapping.exit, %bb.ag, %bb.ac, %bb.af, %bb.v, %.critedge, %bb.ad, %bb.g, %bb.d, %bb.b
  %.7 = phi i1 [ false, %bb.b ], [ %i.h, %bb.d ], [ false, %blf_dump_get_interface_mapping.exit ], [ false, %bb.g ], [ true, %bb.ag ], [ false, %bb.af ], [ false, %.critedge ], [ false, %bb.v ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %blf_dump_get_interface_mapping.exit.thread ], [ %.not110, %.thread ]
  ret i1 %.7
}

; Function Attrs: null_pointer_is_valid
declare i64 @wtap_dump_file_tell(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump_file_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_uint32_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @blf_dump_socketcanxl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.blf_logobjectheader, align 8 ; 8 uses
  %10 = alloca %struct.blf_blockheader, align 4   ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca %struct.blf_canxlchannelframe, align 8 ; 13 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %1, i64 60
  %.val51 = load i32, ptr %i.c, align 4           ; 3 uses
  %.val.val = load ptr, ptr %.val, align 8        ; 2 uses
  %i.d = getelementptr i8, ptr %.val.val, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ult i32 %.val51, %i.e
  br i1 %i.f, label %blf_dump_get_interface_mapping.exit, label %blf_dump_get_interface_mapping.exit.thread

blf_dump_get_interface_mapping.exit.thread:       ; preds = %bb.a
  store i32 -21, ptr %2, align 4
  %i.g = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.152, i32 noundef %.val51)
  store ptr %i.g, ptr %3, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 6, ptr noundef nonnull @.str.72, i64 noundef 4139, ptr noundef nonnull @__func__.blf_dump_get_interface_mapping, ptr noundef nonnull @.str.153)
  br label %bb.l

blf_dump_get_interface_mapping.exit:              ; preds = %bb.a
  %i.h = load ptr, ptr %.val.val, align 8
  %i.i = zext i32 %.val51 to i64
  %i.j = getelementptr [12 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.l, label %bb.b

bb.b:                                             ; preds = %blf_dump_get_interface_mapping.exit
  %i.l = getelementptr i8, ptr %5, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr i8, ptr %5, i64 2
  %.val53 = load i8, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %5, i64 3
  %.val54 = load i8, ptr %i.o, align 1
  %i.p = zext i8 %.val53 to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = zext i8 %.val54 to i32
  %.masked = and i32 %i.q, 1792
  %i.s = or disjoint i32 %.masked, %i.r
  %i.t = getelementptr i8, ptr %5, i64 4
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr i8, ptr %5, i64 5
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr i8, ptr %5, i64 6
  %.val55 = load i16, ptr %i.x, align 1           ; 5 uses
  %i.y = zext i8 %i.u to i32                      ; 2 uses
  %.not.not = icmp sgt i8 %i.u, -1
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -21, ptr %2, align 4
  %i.z = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.156)
  store ptr %i.z, ptr %3, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.5, i32 noundef 7, ptr noundef nonnull @.str.72, i64 noundef 4557, ptr noundef nonnull @__func__.blf_dump_socketcanxl, ptr noundef nonnull @.str.157) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = zext i16 %.val55 to i64                 ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 12
  %i.ac = icmp ult i64 %6, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -21, ptr %2, align 4
  %i.ad = trunc nuw nsw i64 %6 to i32
  %i.ae = zext i16 %.val55 to i32
  %i.af = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.158, i32 noundef %i.ad, i32 noundef %i.ae)
  store ptr %i.af, ptr %3, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.5, i32 noundef 7, ptr noundef nonnull @.str.72, i64 noundef 4564, ptr noundef nonnull @__func__.blf_dump_socketcanxl, ptr noundef nonnull @.str.159) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %5, i64 8
  %i.ah = load i32, ptr %i.ag, align 1
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %1, i64 216
  %.val52 = load ptr, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.aj = call i32 @wtap_block_get_uint32_option_value(ptr noundef %.val52, i32 noundef 2, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.aj, 0
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = icmp eq i32 %i.ak, 2
  %narrow.i = select i1 %.not.i, i1 %i.al, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.in = phi i1 [ %8, %bb.f ], [ %narrow.i, %bb.g ]
  %.0 = zext i1 %.0.in to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %11, i8 0, i64 104, i1 false)
  %i.am = getelementptr i8, ptr %i.j, i64 4
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = trunc i16 %i.an to i8
  store i8 %i.ao, ptr %11, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 2
end_hunk_0
begin_hunk_1_@blf_dump_close_logcontainer:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.039 = phi i64 [ %i.ao, %bb.l ], [ %i.d, %bb.e ]
  %.0 = phi i64 [ %i.an, %bb.l ], [ %i.i, %bb.e ]
  %i.ap = load i64, ptr %i.g, align 8
  %i.aq = call i64 @wtap_dump_file_seek(ptr noundef %0, i64 noundef %i.ap, i32 noundef 0, ptr noundef %1)
  %i.ar = load i32, ptr %1, align 4
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = icmp ne i64 %i.aq, 0
  %or.cond = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond, label %blf_dump_pad_last_object.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = trunc i64 %.0 to i32                    ; 2 uses
  %i.av = getelementptr i8, ptr %i.c, i64 72
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = add i32 %i.au, -32
  %i.ax = getelementptr i8, ptr %i.c, i64 88
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = call fastcc zeroext i1 @blf_dump_write_logcontainer(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.ay, label %bb.o, label %blf_dump_pad_last_object.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.az = call i64 @wtap_dump_file_seek(ptr noundef %0, i64 noundef %.039, i32 noundef 0, ptr noundef %1)
  %i.ba = load i32, ptr %1, align 4
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = icmp eq i64 %i.az, 0
  %or.cond3.not = select i1 %i.bb, i1 %i.bc, i1 false
  br label %blf_dump_pad_last_object.exit.thread

blf_dump_pad_last_object.exit.thread:             ; preds = %bb.i, %bb.g, %bb.f, %blf_dump_pad_last_object.exit.thread46, %blf_dump_pad_last_object.exit, %bb.o, %bb.n, %bb.m, %bb.a, %bb.b
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %blf_dump_pad_last_object.exit ], [ false, %bb.m ], [ %or.cond3.not, %bb.o ], [ false, %bb.n ], [ false, %blf_dump_pad_last_object.exit.thread46 ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.2
}

; Function Attrs: null_pointer_is_valid
declare i64 @wtap_dump_file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @blf_dump_write_logcontainer(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = tail call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.c, i64 noundef 16, ptr noundef %1)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -21, ptr %1, align 4
  %i.e = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.182)
  store ptr %i.e, ptr %2, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 5, ptr noundef nonnull @.str.72, i64 noundef 4263, ptr noundef nonnull @__func__.blf_dump_write_logcontainer, ptr noundef nonnull @.str.183)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 80
  %i.g = tail call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.f, i64 noundef 16, ptr noundef %1)
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -21, ptr %1, align 4
  %i.h = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.184)
  store ptr %i.h, ptr %2, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.5, i32 noundef 5, ptr noundef nonnull @.str.72, i64 noundef 4270, ptr noundef nonnull @__func__.blf_dump_write_logcontainer, ptr noundef nonnull @.str.185)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @blf_write_date_to_blf_header(ptr nofree noundef captures(address) %0, i1 noundef zeroext %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = udiv i64 %2, 1000000000
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call ptr @ws_localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.v = select i1 %1, i64 40, i64 56
  %i.d = getelementptr i8, ptr %0, i64 %.v        ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = trunc i32 %i.f to i16
  %i.h = add i16 %i.g, 1900                       ; 2 uses
  store i16 %i.h, ptr %i.d, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = trunc i32 %i.j to i16                    ; 2 uses
  %i.l = add i16 %i.k, 1
  %i.m = getelementptr i8, ptr %i.d, i64 2
  store i16 %i.l, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = trunc i32 %i.o to i16                    ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 6
  store i16 %i.p, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = trunc i32 %i.s to i16                    ; 2 uses
  %i.u = getelementptr i8, ptr %i.d, i64 8
  store i16 %i.t, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = trunc i32 %i.w to i16                    ; 2 uses
  %i.y = getelementptr i8, ptr %i.d, i64 10
  store i16 %i.x, ptr %i.y, align 2
  %i.z = load i32, ptr %3, align 8
  %i.aa = trunc i32 %i.z to i16                   ; 2 uses
  %i.ab = getelementptr i8, ptr %i.d, i64 12
  store i16 %i.aa, ptr %i.ab, align 2
  %.not.i = icmp ne ptr %i.d, null
  %i.ac = icmp ult i16 %i.h, 2484
  %or.cond = select i1 %.not.i, i1 %i.ac, i1 false
  %or.cond.i = icmp ult i16 %i.k, 12
  %or.cond13 = select i1 %or.cond, i1 %or.cond.i, i1 false
  %i.ad = add i16 %i.p, -1
  %or.cond21.i = icmp ult i16 %i.ad, 31
  %or.cond14 = select i1 %or.cond13, i1 %or.cond21.i, i1 false
  %i.ae = icmp ult i16 %i.t, 24
  %or.cond15 = select i1 %or.cond14, i1 %i.ae, i1 false
  %i.af = icmp ult i16 %i.x, 60
  %or.cond16 = select i1 %or.cond15, i1 %i.af, i1 false
  %i.ag = icmp ult i16 %i.aa, 62
  %or.cond17 = select i1 %or.cond16, i1 %i.ag, i1 false
  br i1 %or.cond17, label %bb.c, label %blf_data_to_ns.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = call fastcc i64 @blf_date_to_sec(ptr noundef readonly %i.d) ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  br i1 %i.ai, label %bb.d, label %blf_data_to_ns.exit

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr i8, ptr %i.d, i64 14
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i64
  %i.am = mul i64 %i.ah, 1000
  %i.an = add i64 %i.am, %i.al
  %.neg = mul i64 %i.an, -1000000
  br label %blf_data_to_ns.exit

blf_data_to_ns.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.1.i.neg = phi i64 [ %.neg, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.ao = add i64 %.1.i.neg, %2
  %i.ap = udiv i64 %i.ao, 1000000
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = getelementptr i8, ptr %i.d, i64 14
  store i16 %i.aq, ptr %i.ar, align 2
  br label %bb.e

bb.e:                                             ; preds = %blf_data_to_ns.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @ws_localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_set_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_array_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_string_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { allocsize(0) }
attributes #17 = { noreturn }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, i1 false, !"memcpy.inline"}
!17 = distinct !{!17, !16, !"memcpy.inline: argument 1"}
!18 = distinct !{!18, !16, !"memcpy.inline: argument 0"}
!19 = !{!18, !17}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
end_hunk_1
