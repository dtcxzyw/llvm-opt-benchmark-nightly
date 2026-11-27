Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/pkcs12?download=true
inline.NumInlined: 48
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@wc_PKCS12_create:bb.a
  call void @wc_PKCS12_free(ptr noundef nonnull %i.n)
  %i.fc = call i32 @wc_FreeRng(ptr noundef nonnull %14) #9 ; 0 uses
  br label %bb.aj

switch.lookup:                                    ; preds = %PKCS12_create_key_content.exit
  %i.fd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.wc_PKCS12_create, i64 %i.fd
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.fe = add nsw i32 %6, 55                      ; 2 uses
  %.not105.i = icmp eq ptr %7, null               ; 2 uses
  br i1 %.not105.i, label %.critedge.i, label %.preheader119.i

.preheader119.i:                                  ; preds = %switch.lookup, %.preheader119.i
  %.090122.i = phi ptr [ %i.fk, %.preheader119.i ], [ %7, %switch.lookup ] ; 2 uses
  %.0118121.i = phi i32 [ %i.fi, %.preheader119.i ], [ %i.fe, %switch.lookup ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.090122.i, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !49
  %i.fh = add i32 %.0118121.i, 55
  %i.fi = add i32 %i.fh, %i.fg                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.090122.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47 ; 2 uses
  %.not106.i = icmp eq ptr %i.fk, null
  br i1 %.not106.i, label %.critedge.i, label %.preheader119.i, !llvm.loop !63

.critedge.i:                                      ; preds = %.preheader119.i, %switch.lookup
  %.1.i = phi i32 [ %i.fe, %switch.lookup ], [ %i.fi, %.preheader119.i ] ; 2 uses
  %i.fl = add i32 %.1.i, 6                        ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = call ptr @wolfSSL_Malloc(i64 noundef %i.fm) #9 ; 11 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  store i32 %.1.i, ptr %i.f, align 4, !tbaa !37
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 6 ; 2 uses
  %i.fq = call fastcc i32 @wc_PKCS12_create_cert_bag(ptr noundef nonnull %i.fp, ptr noundef %i.f, ptr noundef readonly %5, i32 noundef %6) ; 3 uses
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not105.i, label %.critedge111.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.q
  %i.fs = add nuw i32 %i.fq, 6
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.r, %.preheader.preheader.i
  %.0124.i = phi ptr [ %i.gd, %bb.r ], [ %7, %.preheader.preheader.i ] ; 3 uses
  %.092123.i = phi i32 [ %i.gb, %bb.r ], [ %i.fs, %.preheader.preheader.i ] ; 3 uses
  %i.ft = sub i32 %i.fl, %.092123.i
  store i32 %i.ft, ptr %i.f, align 4, !tbaa !37
  %i.fu = zext i32 %.092123.i to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fu
  %i.fw = load ptr, ptr %.0124.i, align 8, !tbaa !48
  %i.fx = getelementptr inbounds nuw i8, ptr %.0124.i, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !49
  %i.fz = call fastcc i32 @wc_PKCS12_create_cert_bag(ptr noundef nonnull %i.fv, ptr noundef %i.f, ptr noundef %i.fw, i32 noundef %i.fy) ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %.sink.split, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.gb = add i32 %i.fz, %.092123.i               ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0124.i, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !47 ; 2 uses
  %.not108.i = icmp eq ptr %i.gd, null
  br i1 %.not108.i, label %.critedge111.loopexit.i, label %.preheader.i, !llvm.loop !64

.critedge111.loopexit.i:                          ; preds = %bb.r
  %i.ge = add i32 %i.gb, -6
  br label %.critedge111.i

.critedge111.i:                                   ; preds = %.critedge111.loopexit.i, %bb.q
  %.193.i = phi i32 [ %i.fq, %bb.q ], [ %i.ge, %.critedge111.loopexit.i ] ; 3 uses
  %i.gf = call i32 @SetSequence(i32 noundef %.193.i, ptr noundef nonnull %i.fn) #9 ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gg
  %i.gi = zext i32 %.193.i to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull align 1 %i.fp, i64 %i.gi, i1 false)
  %i.gj = add i32 %i.gf, %.193.i                  ; 2 uses
  %.val112.i = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.gk = call fastcc i32 @wc_PKCS12_encrypt_content(ptr %.val112.i, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %i.j, ptr noundef null, i32 noundef %i.gj, i32 noundef %9, ptr noundef %0, i32 noundef %1, i32 noundef %spec.store.select, i32 noundef %switch.load)
  %.not109.i = icmp eq i32 %i.gk, -202
  br i1 %.not109.i, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %.critedge111.i
  %i.gl = load i32, ptr %i.j, align 4, !tbaa !37
  %i.gm = zext i32 %i.gl to i64
  %i.gn = call ptr @wolfSSL_Malloc(i64 noundef %i.gm) #9 ; 6 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i84 = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.gp = call fastcc i32 @wc_PKCS12_encrypt_content(ptr %.val.i84, ptr noundef nonnull %14, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.j, ptr noundef nonnull %i.fn, i32 noundef %i.gj, i32 noundef %9, ptr noundef %0, i32 noundef %1, i32 noundef %spec.store.select, i32 noundef %switch.load) ; 3 uses
  call void @wolfSSL_Free(ptr noundef nonnull %i.fn) #9
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %.sink.split, label %bb.v

.sink.split:                                      ; preds = %.preheader.i, %bb.t, %bb.s, %.critedge111.i, %bb.p
  %.sink = phi ptr [ %i.fn, %bb.p ], [ %i.fn, %bb.s ], [ %i.gn, %bb.t ], [ %i.fn, %.critedge111.i ], [ %i.fn, %.preheader.i ]
  call void @wolfSSL_Free(ptr noundef nonnull %.sink) #9
  br label %bb.u

bb.u:                                             ; preds = %PKCS12_create_key_content.exit, %.sink.split, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @wolfSSL_Free(ptr noundef nonnull %i.eb) #9
  call void @wc_PKCS12_free(ptr noundef nonnull %i.n)
  %i.gr = call i32 @wc_FreeRng(ptr noundef nonnull %14) #9 ; 0 uses
  br label %bb.aj

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.gs = add nuw i32 %i.eo, %i.gp                ; 3 uses
  %i.gt = call i32 @SetSequence(i32 noundef %i.gs, ptr noundef nonnull %i.c) #9
  %i.gu = add i32 %i.gt, %i.gs                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.gv = call i32 @SetObjectId(i32 noundef 9, ptr noundef nonnull %i.a) #9
  %i.gw = add i32 %i.gv, 10
  %i.gx = call i32 @SetOctetString(i32 noundef %i.gu, ptr noundef nonnull %i.a) #9
  %i.gy = add i32 %i.gx, %i.gu                    ; 2 uses
  %i.gz = call i32 @SetLength(i32 noundef %i.gy, ptr noundef nonnull %i.a) #9
  %i.ha = add i32 %i.gw, %i.gz
  %i.hb = add i32 %i.ha, %i.gy                    ; 2 uses
  %i.hc = call i32 @SetSequence(i32 noundef %i.hb, ptr noundef nonnull %i.a) #9
  %i.hd = add i32 %i.hb, %i.hc                    ; 2 uses
  store i32 %i.hd, ptr %i.d, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.he = zext i32 %i.hd to i64
  %i.hf = call ptr @wolfSSL_Malloc(i64 noundef %i.he) #9 ; 6 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %.critedge88, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hh = zext i32 %i.gu to i64
  %i.hi = call ptr @wolfSSL_Malloc(i64 noundef %i.hh) #9 ; 5 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %.critedge88.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hk = call i32 @SetSequence(i32 noundef %i.gs, ptr noundef nonnull %i.hi) #9
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hl ; 2 uses
  %i.hn = zext nneg i32 %i.gp to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr nonnull readonly align 1 %i.gn, i64 %i.hn, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  %i.hp = zext nneg i32 %i.eo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr nonnull readonly align 1 %i.eb, i64 %i.hp, i1 false)
  %.val.i85 = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.hq = call fastcc i32 @wc_PKCS12_encrypt_content(ptr %.val.i85, ptr noundef nonnull %14, ptr noundef nonnull %i.hf, ptr noundef %i.d, ptr noundef nonnull %i.hi, i32 noundef %i.gu, i32 noundef 0, ptr noundef %0, i32 noundef %1, i32 noundef %spec.store.select, i32 noundef 2125886499)
  call void @wolfSSL_Free(ptr noundef nonnull %i.hi) #9
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %.critedge88.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.e, align 4, !tbaa !37
  %i.hs = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.ht = call i32 @GetSequence(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i32 noundef %i.hs) #9
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %.critedge88.sink.split, label %PKCS12_create_safe.exit

PKCS12_create_safe.exit:                          ; preds = %bb.y
  %i.hv = call fastcc i32 @GetSafeContent(ptr noundef nonnull %i.n, ptr noundef %i.hf, ptr noundef %i.e, i32 noundef %i.hs)
  call void @wolfSSL_Free(ptr noundef nonnull %i.hf) #9
  %i.hw = icmp sgt i32 %i.hv, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @wolfSSL_Free(ptr noundef nonnull %i.eb) #9
  call void @wolfSSL_Free(ptr noundef nonnull %i.gn) #9
  br i1 %i.hw, label %bb.aa, label %bb.z

.critedge88.sink.split:                           ; preds = %bb.y, %bb.x, %bb.w
  call void @wolfSSL_Free(ptr noundef nonnull %i.hf) #9
  br label %.critedge88

.critedge88:                                      ; preds = %.critedge88.sink.split, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @wolfSSL_Free(ptr noundef nonnull %i.eb) #9
  call void @wolfSSL_Free(ptr noundef nonnull %i.gn) #9
  br label %bb.z

bb.z:                                             ; preds = %.critedge88, %PKCS12_create_safe.exit
  call void @wc_PKCS12_free(ptr noundef nonnull %i.n)
  %i.hx = call i32 @wc_FreeRng(ptr noundef nonnull %14) #9 ; 0 uses
  br label %bb.aj

bb.aa:                                            ; preds = %PKCS12_create_safe.exit
  %i.hy = icmp sgt i32 %11, 0
  br i1 %i.hy, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.hz = call ptr @wolfSSL_Malloc(i64 noundef 32) #9 ; 8 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, i8 0, i64 24, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.hz, ptr %i.ib, align 8, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i32 2092137211, ptr %i.ic, align 8, !tbaa !41
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 24 ; 2 uses
  %15 = zext nneg i32 %11 to i64
  %16 = shl nuw nsw i64 %15, 32
  %17 = or disjoint i64 %16, 8
  store i64 %17, ptr %i.id, align 8
  %i.ie = call ptr @wolfSSL_Malloc(i64 noundef 8) #9 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !29
  %i.ig = icmp eq ptr %i.ie, null
  br i1 %i.ig, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ih = load i32, ptr %i.id, align 8, !tbaa !42
  %i.ii = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %14, ptr noundef nonnull %i.ie, i32 noundef %i.ih) #9
  %.not83 = icmp eq i32 %i.ii, 0
  br i1 %.not83, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ij = load ptr, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !25
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.in = load i32, ptr %i.im, align 8, !tbaa !30
  %i.io = call fastcc i32 @wc_PKCS12_create_mac(ptr noundef %i.n, ptr noundef %i.il, i32 noundef %i.in, ptr noundef %0, i32 noundef %1, ptr noundef %i.l) ; 3 uses
  %i.ip = icmp slt i32 %i.io, 0
  br i1 %i.ip, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hz, i64 20 ; 2 uses
  store i32 %i.io, ptr %i.iq, align 4, !tbaa !31
  %i.ir = zext nneg i32 %i.io to i64
  %i.is = call ptr @wolfSSL_Malloc(i64 noundef %i.ir) #9 ; 3 uses
  store ptr %i.is, ptr %i.hz, align 8, !tbaa !28
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iu = load i32, ptr %i.iq, align 4, !tbaa !31
  %i.iv = zext i32 %i.iu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.is, ptr nonnull align 16 %i.l, i64 %i.iv, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr null, ptr %i.iw, align 8, !tbaa !26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ix = call i32 @wc_FreeRng(ptr noundef nonnull %14) #9 ; 0 uses
  br label %bb.aj

.critedge:                                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  call void @wc_PKCS12_free(ptr noundef nonnull %i.n)
  %i.iy = call i32 @wc_FreeRng(ptr noundef nonnull %14) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge, %bb.a, %bb.ai, %bb.z, %bb.u, %PKCS12_create_key_content.exit.thread, %bb.c
  %.1 = phi ptr [ null, %.critedge ], [ null, %bb.c ], [ null, %PKCS12_create_key_content.exit.thread ], [ null, %bb.u ], [ null, %bb.z ], [ %i.n, %bb.ai ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  ret ptr %.1
}

declare i32 @wc_InitRng_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_FreeRng(ptr noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wc_PKCS12_create_mac(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %struct.Hmac], align 16        ; 7 uses
  %i.a = alloca [256 x i8], align 16              ; 21 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %4, 127
  br i1 %i.g, label %.lr.ph25.preheader.i, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not67 = icmp eq i32 %4, 0
  br i1 %.not67, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i32 %4, 16
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 112          ; 10 uses
  %i.i = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.load = load <8 x i8>, ptr %3, align 1, !tbaa !32
  %wide.load2 = load <8 x i8>, ptr %i.k, align 1, !tbaa !32
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec, ptr %i.a, align 16, !tbaa !32
  %interleaved.vec3 = shufflevector <8 x i8> %wide.load2, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec3, ptr %i.j, align 16, !tbaa !32
  %i.l = icmp eq i64 %n.vec, 16
  br i1 %i.l, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.o, align 1, !tbaa !32
  %wide.load2.1 = load <8 x i8>, ptr %i.p, align 1, !tbaa !32
  %interleaved.vec.1 = shufflevector <8 x i8> %wide.load.1, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec.1, ptr %i.m, align 16, !tbaa !32
  %interleaved.vec3.1 = shufflevector <8 x i8> %wide.load2.1, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec3.1, ptr %i.n, align 16, !tbaa !32
  %i.q = icmp eq i64 %n.vec, 32
  br i1 %i.q, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.t, align 1, !tbaa !32
  %wide.load2.2 = load <8 x i8>, ptr %i.u, align 1, !tbaa !32
  %interleaved.vec.2 = shufflevector <8 x i8> %wide.load.2, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec.2, ptr %i.r, align 16, !tbaa !32
  %interleaved.vec3.2 = shufflevector <8 x i8> %wide.load2.2, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec3.2, ptr %i.s, align 16, !tbaa !32
  %i.v = icmp eq i64 %n.vec, 48
  br i1 %i.v, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %wide.load.3 = load <8 x i8>, ptr %i.y, align 1, !tbaa !32
  %wide.load2.3 = load <8 x i8>, ptr %i.z, align 1, !tbaa !32
  %interleaved.vec.3 = shufflevector <8 x i8> %wide.load.3, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec.3, ptr %i.w, align 16, !tbaa !32
  %interleaved.vec3.3 = shufflevector <8 x i8> %wide.load2.3, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec3.3, ptr %i.x, align 16, !tbaa !32
  %i.aa = icmp eq i64 %n.vec, 64
  br i1 %i.aa, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 72
  %wide.load.4 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !32
  %wide.load2.4 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !32
  %interleaved.vec.4 = shufflevector <8 x i8> %wide.load.4, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec.4, ptr %i.ab, align 16, !tbaa !32
  %interleaved.vec3.4 = shufflevector <8 x i8> %wide.load2.4, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec3.4, ptr %i.ac, align 16, !tbaa !32
  %i.af = icmp eq i64 %n.vec, 80
  br i1 %i.af, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %wide.load.5 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !32
  %wide.load2.5 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !32
  %interleaved.vec.5 = shufflevector <8 x i8> %wide.load.5, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec.5, ptr %i.ag, align 16, !tbaa !32
  %interleaved.vec3.5 = shufflevector <8 x i8> %wide.load2.5, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec3.5, ptr %i.ah, align 16, !tbaa !32
  %i.ak = icmp eq i64 %n.vec, 96
  br i1 %i.ak, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 104
  %wide.load.6 = load <8 x i8>, ptr %i.an, align 1, !tbaa !32
  %wide.load2.6 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !32
  %interleaved.vec.6 = shufflevector <8 x i8> %wide.load.6, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec.6, ptr %i.al, align 16, !tbaa !32
  %interleaved.vec3.6 = shufflevector <8 x i8> %wide.load2.6, <8 x i8> zeroinitializer, <16 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  store <16 x i8> %interleaved.vec3.6, ptr %i.am, align 16, !tbaa !32
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
