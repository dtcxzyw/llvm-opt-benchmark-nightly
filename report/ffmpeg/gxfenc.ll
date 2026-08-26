Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/gxfenc?download=true
inline.NumInlined: 29
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gxf_write_map_packet:bb.a
  br label %gxf_write_material_data_section.exit

gxf_write_material_data_section.exit:             ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.z, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #12
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 64) #10
  %i.ad = add i32 %i.ac, 18
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef %i.ad) #10
  tail call void @avio_write(ptr noundef %i.u, ptr noundef nonnull @.str.15, i32 noundef 17) #10
  tail call void @avio_write(ptr noundef %i.u, ptr noundef nonnull %.0.i, i32 noundef %i.ac) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 0) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 65) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 4) #10
  tail call void @avio_wb32(ptr noundef %i.u, i32 noundef 0) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 66) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 4) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !92
  tail call void @avio_wb32(ptr noundef %i.u, i32 noundef %i.af) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 67) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 4) #10
  tail call void @avio_wb32(ptr noundef %i.u, i32 noundef 0) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 68) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 4) #10
  %i.ag = load i32, ptr %i.ae, align 8, !tbaa !92
  tail call void @avio_wb32(ptr noundef %i.u, i32 noundef %i.ag) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 69) #10
  tail call void @avio_w8(ptr noundef %i.u, i32 noundef 4) #10
  %i.ah = tail call i64 @avio_size(ptr noundef %i.u) #10
  %i.ai = sdiv i64 %i.ah, 1024
  %i.aj = trunc i64 %i.ai to i32
  tail call void @avio_wb32(ptr noundef %i.u, i32 noundef %i.aj) #10
  %i.ak = tail call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #10 ; 2 uses
  %i.al = tail call i64 @avio_seek(ptr noundef %i.u, i64 noundef %i.y, i32 noundef 0) #10 ; 0 uses
  %i.am = sub nsw i64 %i.ak, %i.y
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.an, -2
  tail call void @avio_wb16(ptr noundef %i.u, i32 noundef %i.ao) #10
  %i.ap = tail call i64 @avio_seek(ptr noundef %i.u, i64 noundef %i.ak, i32 noundef 0) #10 ; 0 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !9   ; 6 uses
  %i.as = tail call i64 @avio_seek(ptr noundef %i.ar, i64 noundef 0, i32 noundef 1) #10 ; 2 uses
  tail call void @avio_wb16(ptr noundef %i.ar, i32 noundef 0) #10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !38
  %.not.i23 = icmp eq i32 %i.au, 0
  br i1 %.not.i23, label %gxf_write_track_description_section.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %gxf_write_material_data_section.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42
  %i.bb = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call fastcc void @gxf_write_track_description(ptr noundef nonnull readonly %0, ptr noundef %i.ba, i32 noundef %i.bb)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !38 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next.i, %i.bd
  br i1 %i.be, label %bb.h, label %gxf_write_track_description_section.exit, !llvm.loop !108

gxf_write_track_description_section.exit:         ; preds = %bb.h, %gxf_write_material_data_section.exit
  %.lcssa.i = phi i32 [ 0, %gxf_write_material_data_section.exit ], [ %i.bc, %bb.h ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  tail call fastcc void @gxf_write_track_description(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.bf, i32 noundef %.lcssa.i)
  %i.bg = tail call i64 @avio_seek(ptr noundef %i.ar, i64 noundef 0, i32 noundef 1) #10 ; 2 uses
  %i.bh = tail call i64 @avio_seek(ptr noundef %i.ar, i64 noundef %i.as, i32 noundef 0) #10 ; 0 uses
  %i.bi = sub nsw i64 %i.bg, %i.as
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %i.bj, -2
  tail call void @avio_wb16(ptr noundef %i.ar, i32 noundef %i.bk) #10
  %i.bl = tail call i64 @avio_seek(ptr noundef %i.ar, i64 noundef %i.bg, i32 noundef 0) #10 ; 0 uses
  %i.bm = tail call fastcc i64 @update_packet_size(ptr noundef %i.d, i64 noundef %i.e)
  %i.bn = trunc i64 %i.bm to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %gxf_write_track_description_section.exit
  %.1 = phi i32 [ %i.bn, %gxf_write_track_description_section.exit ], [ %i.l, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gxf_write_flt_packet(ptr nofree readonly captures(none) %.24.val, ptr %.32.val) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %.32.val, i64 noundef 0, i32 noundef 1) #10
  %i.b = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %i.d = add i32 %i.c, 1
  %i.e = udiv i32 %i.d, 1000
  %i.f = add nuw nsw i32 %i.e, 1                  ; 3 uses
  %i.g = udiv i32 %i.c, %i.f                      ; 4 uses
  tail call void @avio_wb32(ptr noundef %.32.val, i32 noundef 0) #10
  tail call void @avio_w8(ptr noundef %.32.val, i32 noundef 1) #10
  tail call void @avio_w8(ptr noundef %.32.val, i32 noundef 252) #10
  tail call void @avio_wb32(ptr noundef %.32.val, i32 noundef 0) #10
  tail call void @avio_wb32(ptr noundef %.32.val, i32 noundef 0) #10
  tail call void @avio_w8(ptr noundef %.32.val, i32 noundef 225) #10
  tail call void @avio_w8(ptr noundef %.32.val, i32 noundef 226) #10
  tail call void @avio_wl32(ptr noundef %.32.val, i32 noundef %i.f) #10
  tail call void @avio_wl32(ptr noundef %.32.val, i32 noundef %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %.24.val, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !100
  %.not = icmp ne ptr %i.i, null
  %i.j = icmp sgt i32 %i.g, 0
  %or.cond = and i1 %.not, %i.j
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01 = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.l = mul nuw nsw i32 %.01, %i.f
  %i.m = lshr i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !57
  tail call void @avio_wl32(ptr noundef %.32.val, i32 noundef %i.p) #10
  %i.q = add nuw nsw i32 %.01, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %i.g
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !109

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.r = shl i32 %i.g, 2
  %i.s = sub i32 4000, %i.r
  %i.t = sext i32 %i.s to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i64 [ 4000, %bb.a ], [ %i.t, %.loopexit.loopexit ]
  tail call void @ffio_fill(ptr noundef %.32.val, i32 noundef 0, i64 noundef %.1) #10
  %i.u = tail call fastcc i64 @update_packet_size(ptr noundef %.32.val, i64 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gxf_write_umf_packet(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 13 uses
  %i.f = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #10
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef 0) #10
  tail call void @avio_w8(ptr noundef %i.e, i32 noundef 1) #10
  tail call void @avio_w8(ptr noundef %i.e, i32 noundef 253) #10
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef 0) #10
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef 0) #10
  tail call void @avio_w8(ptr noundef %i.e, i32 noundef 225) #10
  tail call void @avio_w8(ptr noundef %i.e, i32 noundef 226) #10
  tail call void @avio_w8(ptr noundef %i.e, i32 noundef 3) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef %i.h) #10
  %i.i = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #10
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !111
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !26   ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !9    ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !110
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.o) #10
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef 3) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38
  %i.r = add i32 %i.q, 1
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !112
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.t) #10
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.v = load i16, ptr %i.u, align 8, !tbaa !113
  %i.w = zext i16 %i.v to i32
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.w) #10
  %i.x = load i32, ptr %i.p, align 4, !tbaa !38
  %i.y = add i32 %i.x, 1
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !114
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.aa) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 42
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !115
  %i.ad = zext i16 %i.ac to i32
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.ad) #10
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !110
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef %i.ae) #10
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef 0) #10
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef 0) #10
  tail call void @avio_wl32(ptr noundef %i.m, i32 noundef 0) #10
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !26  ; 11 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !9   ; 15 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !60
  %i.aj = icmp eq i32 %i.ai, 60000
  %i.ak = select i1 %i.aj, i32 60, i32 50         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !104
  %i.al = call i32 @ff_parse_creation_time_metadata(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !116
  %i.ap = shl i32 %i.ao, 30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 172
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !117
  %i.as = shl i32 %i.ar, 29
  %i.at = or i32 %i.as, %i.ap                     ; 2 uses
  %i.au = load i32, ptr %i.am, align 8, !tbaa !118 ; 2 uses
  %i.av = shl i32 %i.au, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 156
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !119 ; 2 uses
  %i.ay = shl i32 %i.ax, 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !120 ; 2 uses
  %i.bb = shl i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 164
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !121 ; 2 uses
  %i.be = or i32 %i.av, %i.ay
  %i.bf = or i32 %i.be, %i.bb
  %i.bg = or i32 %i.bf, %i.at
  %i.bh = or i32 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !92
  %i.bk = mul nuw nsw i32 %i.ak, 3600             ; 2 uses
  %i.bl = mul nsw i32 %i.au, %i.bk
  %i.bm = mul nuw nsw i32 %i.ak, 60               ; 2 uses
  %i.bn = mul nsw i32 %i.ax, %i.bm
  %i.bo = mul nsw i32 %i.ba, %i.ak
  %i.bp = add i32 %i.bn, %i.bl
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = add i32 %i.bq, %i.bd
  %i.bs = add i32 %i.br, %i.bj                    ; 4 uses
  %i.bt = udiv i32 %i.bs, %i.bk
  %.lhs.trunc.i = trunc nuw nsw i32 %i.bt to i16
  %i.bu = urem i16 %.lhs.trunc.i, 24
  %.zext.i = zext nneg i16 %i.bu to i32
  %i.bv = shl nuw nsw i32 %.zext.i, 24
  %i.bw = udiv i32 %i.bs, %i.bm
  %i.bx = urem i32 %i.bw, 60
  %i.by = shl nuw nsw i32 %i.bx, 16
  %i.bz = or disjoint i32 %i.bv, %i.by
  %i.ca = udiv i32 %i.bs, %i.ak
  %i.cb = urem i32 %i.ca, 60
  %i.cc = shl nuw nsw i32 %i.cb, 8
  %i.cd = or disjoint i32 %i.bz, %i.cc
  %i.ce = urem i32 %i.bs, %i.ak
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = or disjoint i32 %i.cf, %i.at
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !30
  call void @avio_wl32(ptr noundef %i.ag, i32 noundef %i.ci) #10
  %i.cj = load i32, ptr %i.bi, align 8, !tbaa !92
  call void @avio_wl32(ptr noundef %i.ag, i32 noundef %i.cj) #10
  %i.ck = load i32, ptr %i.bi, align 8, !tbaa !92
  call void @avio_wl32(ptr noundef %i.ag, i32 noundef %i.ck) #10
  call void @avio_wl32(ptr noundef %i.ag, i32 noundef 0) #10
  %i.cl = load i32, ptr %i.bi, align 8, !tbaa !92
  call void @avio_wl32(ptr noundef %i.ag, i32 noundef %i.cl) #10
  call void @avio_wl32(ptr noundef %i.ag, i32 noundef %i.bh) #10
  call void @avio_wl32(ptr noundef %i.ag, i32 noundef %i.cg) #10
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !104
  call void @avio_wl64(ptr noundef %i.ag, i64 noundef %i.cm) #10
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !104
  call void @avio_wl64(ptr noundef %i.ag, i64 noundef %i.cn) #10
  call void @avio_wl16(ptr noundef %i.ag, i32 noundef 0) #10
  call void @avio_wl16(ptr noundef %i.ag, i32 noundef 0) #10
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !73
  %i.cq = zext i16 %i.cp to i32
  call void @avio_wl16(ptr noundef %i.ag, i32 noundef %i.cq) #10
  call void @avio_wl16(ptr noundef %i.ag, i32 noundef 1) #10
  call void @avio_wl16(ptr noundef %i.ag, i32 noundef 0) #10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !70
  %i.ct = zext i16 %i.cs to i32
  call void @avio_wl16(ptr noundef %i.ag, i32 noundef %i.ct) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !9   ; 6 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %i.cw = call i64 @avio_seek(ptr noundef %i.cu, i64 noundef 0, i32 noundef 1) #10 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !111
  %i.cz = trunc i64 %i.cw to i32
  %i.da = sub i32 %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  store i32 %i.da, ptr %i.db, align 4, !tbaa !112
  %i.dc = load i32, ptr %i.p, align 4, !tbaa !38
  %.not.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i, label %gxf_write_umf_track_description.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 22
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !75
  %i.dl = zext i16 %i.dk to i32
  call void @avio_wl16(ptr noundef %i.cu, i32 noundef %i.dl) #10
  call void @avio_wl16(ptr noundef %i.cu, i32 noundef 1) #10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dm = load i32, ptr %i.p, align 4, !tbaa !38
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next.i, %i.dn
  br i1 %i.do, label %bb.b, label %gxf_write_umf_track_description.exit, !llvm.loop !122

gxf_write_umf_track_description.exit:             ; preds = %bb.b, %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 78
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !123
  %i.dr = zext i16 %i.dq to i32
  call void @avio_wl16(ptr noundef %i.cu, i32 noundef %i.dr) #10
  call void @avio_wl16(ptr noundef %i.cu, i32 noundef 1) #10
  %i.ds = call i64 @avio_seek(ptr noundef %i.cu, i64 noundef 0, i32 noundef 1) #10
  %i.dt = sub nsw i64 %i.ds, %i.cw
  %i.du = trunc i64 %i.dt to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i16 %i.du, ptr %i.dv, align 8, !tbaa !113
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !26  ; 5 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !9   ; 40 uses
  %i.dy = call i64 @avio_seek(ptr noundef %i.dx, i64 noundef 0, i32 noundef 1) #10 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !111
  %i.eb = trunc i64 %i.dy to i32
  %i.ec = sub i32 %i.eb, %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !114
  %i.ee = load i32, ptr %i.p, align 4, !tbaa !38
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 56 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 172
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %gxf_write_umf_track_description.exit
  %i.ej = phi i32 [ %i.ee, %gxf_write_umf_track_description.exit ], [ %i.gn, %bb.k ]
  %.062.i = phi i32 [ 0, %gxf_write_umf_track_description.exit ], [ %i.gm, %bb.k ] ; 4 uses
  %i.ek = icmp eq i32 %.062.i, %i.ej
  br i1 %i.ek, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !39
  %i.em = zext i32 %.062.i to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.060.i = phi ptr [ %i.eq, %bb.d ], [ %i.eg, %bb.c ] ; 5 uses
  %i.er = call i64 @avio_seek(ptr noundef %i.dx, i64 noundef 0, i32 noundef 1) #10 ; 2 uses
  call void @avio_wl16(ptr noundef %i.dx, i32 noundef 0) #10
  %i.es = getelementptr inbounds nuw i8, ptr %.060.i, i64 22 ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !75
  %i.eu = zext i16 %i.et to i32
  call void @avio_wl16(ptr noundef %i.dx, i32 noundef %i.eu) #10
  call void @avio_wl16(ptr noundef %i.dx, i32 noundef 0) #10
  call void @avio_wl16(ptr noundef %i.dx, i32 noundef 0) #10
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !92
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.ev) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 0) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 0) #10
  %i.ew = load i32, ptr %i.eh, align 8, !tbaa !92
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.ew) #10
  call void @avio_write(ptr noundef %i.dx, ptr noundef nonnull @.str.16, i32 noundef 20) #10
  %i.ex = load i16, ptr %i.es, align 2, !tbaa !75
  %i.ey = zext i16 %i.ex to i32
  call void @avio_wb16(ptr noundef %i.dx, i32 noundef %i.ey) #10
  call void @ffio_fill(ptr noundef %i.dx, i32 noundef 0, i64 noundef 66) #10
  %i.ez = getelementptr inbounds nuw i8, ptr %.060.i, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !68
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.fa) #10
  %i.fb = getelementptr inbounds nuw i8, ptr %.060.i, i64 16
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !56
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.fc) #10
  %i.fd = getelementptr inbounds nuw i8, ptr %.060.i, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !65
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.fe) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 0) #10
  %i.ff = icmp eq ptr %.060.i, %i.eg
  br i1 %i.ff, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fg = load i32, ptr %i.ei, align 4, !tbaa !117
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.fg) #10
  call void @ffio_fill(ptr noundef %i.dx, i32 noundef 0, i64 noundef 28) #10
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.fh = load ptr, ptr %i.ef, align 8, !tbaa !39
  %i.fi = zext i32 %.062.i to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !40 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !48 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !49
  switch i32 %i.fo, label %bb.k [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 65536, label %bb.i
    i32 24, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !42 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !67
  %i.ft = icmp eq i32 %i.fs, 4
  %..i.i = select i1 %i.ft, i32 2, i32 1
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %..i.i) #10
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !69
  %i.fw = icmp eq i32 %i.fv, 1
  %i.fx = zext i1 %i.fw to i32
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.fx) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 3) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 1) #10
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !124
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.fz) #10
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 52
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !125
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %i.gb) #10
  %i.gc = load ptr, ptr %i.fl, align 8, !tbaa !48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !49 ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.ge, 1
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  %switch.selectcmp19.i.i = icmp eq i32 %i.ge, 2
  %switch.select20.i.i = select i1 %switch.selectcmp19.i.i, i32 2, i32 %switch.select.i.i
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef %switch.select20.i.i) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 0) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @avio_wl64(ptr noundef %i.dx, i64 noundef 4607182418800017408) #10
  call void @avio_wl64(ptr noundef %i.dx, i64 noundef 4607182418800017408) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 0) #10
  call void @avio_wl32(ptr noundef %i.dx, i32 noundef 0) #10
end_hunk_0
