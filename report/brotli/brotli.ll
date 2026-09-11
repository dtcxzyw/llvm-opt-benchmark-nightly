Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli?download=true
inline.NumInlined: 66
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %.not.i33.not.not = icmp ne i32 %i.nl, 0        ; 3 uses
  br i1 %.not.i33.not.not, label %bb.hb, label %CompressFiles.exit

bb.hb:                                            ; preds = %bb.ha
  %i.nm = call ptr @BrotliEncoderCreateInstance(ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 13 uses
  %.not61.i = icmp eq ptr %i.nm, null
  br i1 %.not61.i, label %.thread.i36, label %bb.hc

.thread.i36:                                      ; preds = %bb.hb
  %i.nn = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite.i37 = call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %i.nn) #22 ; 0 uses
  br label %CompressFiles.exit

bb.hc:                                            ; preds = %bb.hb
  %i.no = load i32, ptr %2, align 8, !tbaa !51
  %i.np = call i32 @BrotliEncoderSetParameter(ptr noundef nonnull %i.nm, i32 noundef 1, i32 noundef %i.no) #20 ; 0 uses
  %i.nq = load i32, ptr %i.c, align 4, !tbaa !52  ; 3 uses
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  %i.ns = icmp samesign ugt i32 %i.nq, 24
  br i1 %i.ns, label %bb.he, label %.loopexit.i

bb.he:                                            ; preds = %bb.hd
  %i.nt = call i32 @BrotliEncoderSetParameter(ptr noundef nonnull %i.nm, i32 noundef 6, i32 noundef 1) #20 ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !52
  br label %.loopexit.i

bb.hf:                                            ; preds = %bb.hc
  %i.nu = load i64, ptr %i.nf, align 8, !tbaa !35 ; 15 uses
  %i.nv = icmp sgt i64 %i.nu, -1
  br i1 %i.nv, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.hf
  %i.nw = icmp samesign ugt i64 %i.nu, 1008
  br i1 %i.nw, label %.preheader.1.i, label %.loopexit.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.nx = icmp samesign ugt i64 %i.nu, 2032
  br i1 %i.nx, label %.preheader.2.i, label %.loopexit.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.ny = icmp samesign ugt i64 %i.nu, 4080
  br i1 %i.ny, label %.preheader.3.i, label %.loopexit.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.nz = icmp samesign ugt i64 %i.nu, 8176
  br i1 %i.nz, label %.preheader.4.i, label %.loopexit.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.oa = icmp samesign ugt i64 %i.nu, 16368
  br i1 %i.oa, label %.preheader.5.i, label %.loopexit.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.ob = icmp samesign ugt i64 %i.nu, 32752
  br i1 %i.ob, label %.preheader.6.i, label %.loopexit.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.oc = icmp samesign ugt i64 %i.nu, 65520
  br i1 %i.oc, label %.preheader.7.i, label %.loopexit.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.od = icmp samesign ugt i64 %i.nu, 131056
  br i1 %i.od, label %.preheader.8.i, label %.loopexit.i

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.oe = icmp samesign ugt i64 %i.nu, 262128
  br i1 %i.oe, label %.preheader.9.i, label %.loopexit.i

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.of = icmp samesign ugt i64 %i.nu, 524272
  br i1 %i.of, label %.preheader.10.i, label %.loopexit.i

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.og = icmp samesign ugt i64 %i.nu, 1048560
  br i1 %i.og, label %.preheader.11.i, label %.loopexit.i

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.oh = icmp samesign ugt i64 %i.nu, 2097136
  br i1 %i.oh, label %.preheader.12.i, label %.loopexit.i

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %i.oi = icmp samesign ugt i64 %i.nu, 4194288
  br i1 %i.oi, label %.preheader.13.i, label %.loopexit.i

.preheader.13.i:                                  ; preds = %.preheader.12.i
  %i.oj = icmp samesign ugt i64 %i.nu, 8388592
  %spec.select92.i = select i1 %i.oj, i32 24, i32 23
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i, %bb.hf, %bb.he, %bb.hd
  %.1.sink.i = phi i32 [ %i.nq, %bb.hd ], [ %.pre.i, %bb.he ], [ 24, %bb.hf ], [ 17, %.preheader.7.i ], [ 10, %.preheader.preheader.i ], [ 11, %.preheader.1.i ], [ %spec.select92.i, %.preheader.13.i ], [ 12, %.preheader.2.i ], [ 20, %.preheader.10.i ], [ 13, %.preheader.3.i ], [ 22, %.preheader.12.i ], [ 14, %.preheader.4.i ], [ 18, %.preheader.8.i ], [ 15, %.preheader.5.i ], [ 21, %.preheader.11.i ], [ 16, %.preheader.6.i ], [ 19, %.preheader.9.i ]
  %i.ok = call i32 @BrotliEncoderSetParameter(ptr noundef nonnull %i.nm, i32 noundef 2, i32 noundef %.1.sink.i) #20 ; 0 uses
  %i.ol = load i64, ptr %i.nf, align 8, !tbaa !35 ; 2 uses
  %i.om = icmp sgt i64 %i.ol, 0
  br i1 %i.om, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.loopexit.i
  %spec.select85.i = call i64 @llvm.umin.i64(i64 %i.ol, i64 1073741824)
  %spec.select.i = trunc nuw nsw i64 %spec.select85.i to i32
  %i.on = call i32 @BrotliEncoderSetParameter(ptr noundef nonnull %i.nm, i32 noundef 5, i32 noundef %spec.select.i) #20 ; 0 uses
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.loopexit.i
  %i.oo = load ptr, ptr %i.v, align 8, !tbaa !61
  %.not62.i = icmp eq ptr %i.oo, null
  br i1 %.not62.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.op = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.oq = call i32 @BrotliEncoderAttachPreparedDictionary(ptr noundef nonnull %i.nm, ptr noundef %i.op) #20 ; 0 uses
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.or = call fastcc i32 @OpenFiles(ptr noundef nonnull %2)
  %.not63.i = icmp eq i32 %i.or, 0
  br i1 %.not63.i, label %CompressFile.exit.thread.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.os = load ptr, ptr %i.ad, align 8, !tbaa !36
  %.not64.i = icmp eq ptr %i.os, null
  %i.ot = load i32, ptr %i.f, align 4
  %.not65.i = icmp eq i32 %i.ot, 0
  %or.cond118 = select i1 %.not64.i, i1 %.not65.i, i1 false
  br i1 %or.cond118, label %bb.hl, label %.critedge.i

bb.hl:                                            ; preds = %bb.hk
  %i.ou = call i32 @isatty(i32 noundef 1) #20
  %.not66.i = icmp eq i32 %i.ou, 0
  br i1 %.not66.i, label %.critedge.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ov = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite67.i = call i64 @fwrite(ptr nonnull @.str.60, i64 51, i64 1, ptr %i.ov) #22 ; 0 uses
  br label %CompressFile.exit.thread.i

.critedge.i:                                      ; preds = %bb.hl, %bb.hk
  %i.ow = load i64, ptr %i.e, align 8, !tbaa !18
  %.not37.i.i = icmp eq i64 %i.ow, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, i8 0, i64 16, i1 false)
  store i64 524288, ptr %i.na, align 8, !tbaa !65
  %i.ox = load ptr, ptr %i.mx, align 8, !tbaa !64
  store ptr %i.ox, ptr %i.nb, align 8, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nc, i8 0, i64 16, i1 false)
  %i.oy = load i32, ptr %i.d, align 8, !tbaa !58
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %InitializeBuffers.exit.i.i, label %InitializeBuffers.exit.thread.i.i

InitializeBuffers.exit.i.i:                       ; preds = %.critedge.i
  %i.pa = call i64 @clock() #20
  store i64 %i.pa, ptr %i.ni, align 8, !tbaa !37
  %.pre.i.i = load i64, ptr %i.mz, align 8, !tbaa !67
  %i.pb = icmp eq i64 %.pre.i.i, 0
  br i1 %i.pb, label %InitializeBuffers.exit.thread.i.i, label %bb.hn

InitializeBuffers.exit.thread.i.i:                ; preds = %InitializeBuffers.exit.i.i, %.critedge.i
  %i.pc = load ptr, ptr %i.mv, align 8, !tbaa !63
  %i.pd = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.pe = call i64 @fread(ptr noundef %i.pc, i64 noundef 1, i64 noundef 524288, ptr noundef %i.pd) ; 2 uses
  store i64 %i.pe, ptr %i.mz, align 8, !tbaa !67
  %i.pf = load i64, ptr %i.nc, align 8, !tbaa !39
  %i.pg = add i64 %i.pf, %i.pe
  store i64 %i.pg, ptr %i.nc, align 8, !tbaa !39
  %i.ph = load ptr, ptr %i.mv, align 8, !tbaa !63
  store ptr %i.ph, ptr %i.ng, align 8, !tbaa !68
  %i.pi = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.pj = call i32 @ferror(ptr noundef %i.pi) #20
  %.not.i.peel.i.i = icmp eq i32 %i.pj, 0
  br i1 %.not.i.peel.i.i, label %ProvideInput.exit.peel.i.i, label %ProvideInput.exit.thread.i.i

ProvideInput.exit.peel.i.i:                       ; preds = %InitializeBuffers.exit.thread.i.i
  %i.pk = call i32 @feof(ptr noundef %i.pi) #20
  %.not.i46.peel.i.i = icmp ne i32 %i.pk, 0
  %i.pl = zext i1 %.not.i46.peel.i.i to i32
  br label %bb.hn

bb.hn:                                            ; preds = %ProvideInput.exit.peel.i.i, %InitializeBuffers.exit.i.i
  %.132.peel.i.i = phi i32 [ 0, %InitializeBuffers.exit.i.i ], [ %i.pl, %ProvideInput.exit.peel.i.i ] ; 2 uses
  br i1 %.not37.i.i, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %i.nh, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.pm = load i64, ptr %i.e, align 8, !tbaa !18
  store i64 %i.pm, ptr %i.b, align 8, !tbaa !40
  %i.pn = call i32 @BrotliEncoderCompressStream(ptr noundef nonnull %i.nm, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.na, ptr noundef nonnull %i.nb, ptr noundef null) #20
  %.not40.peel.i.i = icmp ne i32 %i.pn, 0
  %i.po = load i64, ptr %i.b, align 8
  %.not41.peel.i.i = icmp eq i64 %i.po, 0
  %or.cond74.i.i = select i1 %.not40.peel.i.i, i1 %.not41.peel.i.i, i1 false
  br i1 %or.cond74.i.i, label %bb.hp, label %.critedge.i.i

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.hr

bb.hq:                                            ; preds = %bb.hn
  %.not38.peel.i.i = icmp eq i32 %.132.peel.i.i, 0
  %3 = select i1 %.not38.peel.i.i, i32 0, i32 2
  %i.pp = call i32 @BrotliEncoderCompressStream(ptr noundef nonnull %i.nm, i32 noundef %3, ptr noundef nonnull %i.mz, ptr noundef nonnull %i.ng, ptr noundef nonnull %i.na, ptr noundef nonnull %i.nb, ptr noundef null) #20
  %.not39.peel.i.i = icmp eq i32 %i.pp, 0
  br i1 %.not39.peel.i.i, label %.loopexit62.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.pq = load i64, ptr %i.na, align 8, !tbaa !65
  %i.pr = icmp eq i64 %i.pq, 0
  br i1 %i.pr, label %bb.hs, label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  %i.ps = load ptr, ptr %i.nb, align 8, !tbaa !66 ; 2 uses
  %i.pt = load ptr, ptr %i.mx, align 8, !tbaa !64 ; 4 uses
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv                    ; 2 uses
  %i.px = load i64, ptr %i.nk, align 8, !tbaa !41
  %i.py = add i64 %i.pw, %i.px
  store i64 %i.py, ptr %i.nk, align 8, !tbaa !41
  %i.pz = icmp ne ptr %i.ps, %i.pt
  %i.qa = load i32, ptr %i.j, align 8
  %.not.i66 = icmp eq i32 %i.qa, 0
  %or.cond119 = select i1 %i.pz, i1 %.not.i66, i1 false
  br i1 %or.cond119, label %bb.ht, label %ProvideOutput.exit.peel.i.i

bb.ht:                                            ; preds = %bb.hs
  %i.qb = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.qc = call i64 @fwrite(ptr noundef %i.pt, i64 noundef 1, i64 noundef %i.pw, ptr noundef %i.qb) ; 0 uses
  %i.qd = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.qe = call i32 @ferror(ptr noundef %i.qd) #20
  %.not12.i68 = icmp eq i32 %i.qe, 0
  br i1 %.not12.i68, label %.ProvideOutput.exit.peel.i.i_crit_edge, label %WriteOutput.exit70

.ProvideOutput.exit.peel.i.i_crit_edge:           ; preds = %bb.ht
  %.pre321 = load ptr, ptr %i.mx, align 8, !tbaa !64
  br label %ProvideOutput.exit.peel.i.i

WriteOutput.exit70:                               ; preds = %bb.ht
  %i.qf = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.qg = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.qg, null
  %i.qh = select i1 %.not.i.i69, ptr @.str.58, ptr %i.qg
  %i.qi = tail call ptr @__errno_location() #24
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !21
  %i.qk = call ptr @strerror(i32 noundef %i.qj) #20
  %i.ql = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qf, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.qh, ptr noundef %i.qk) #23 ; 0 uses
  br label %CompressFile.exit.thread.i

ProvideOutput.exit.peel.i.i:                      ; preds = %.ProvideOutput.exit.peel.i.i_crit_edge, %bb.hs
  %i.qm = phi ptr [ %.pre321, %.ProvideOutput.exit.peel.i.i_crit_edge ], [ %i.pt, %bb.hs ]
  store i64 524288, ptr %i.na, align 8, !tbaa !65
  store ptr %i.qm, ptr %i.nb, align 8, !tbaa !66
  br label %bb.hu

bb.hu:                                            ; preds = %ProvideOutput.exit.peel.i.i, %bb.hr
  %i.qn = call i32 @BrotliEncoderIsFinished(ptr noundef nonnull %i.nm) #20
  %.not43.peel.i.i = icmp eq i32 %i.qn, 0
  br i1 %.not43.peel.i.i, label %.peel.next.i.i, label %.loopexit63.i.i

.peel.next.i.i:                                   ; preds = %bb.hu, %bb.hz
  %.031.i.i = phi i32 [ %.132.i.i, %bb.hz ], [ %.132.peel.i.i, %bb.hu ] ; 2 uses
  %i.qo = load i64, ptr %i.mz, align 8, !tbaa !67
  %i.qp = icmp ne i64 %i.qo, 0
  %i.qq = icmp ne i32 %.031.i.i, 0
  %or.cond.i.i34 = or i1 %i.qq, %i.qp
  br i1 %or.cond.i.i34, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %.peel.next.i.i
  %i.qr = load ptr, ptr %i.mv, align 8, !tbaa !63
  %i.qs = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.qt = call i64 @fread(ptr noundef %i.qr, i64 noundef 1, i64 noundef 524288, ptr noundef %i.qs) ; 2 uses
  store i64 %i.qt, ptr %i.mz, align 8, !tbaa !67
  %i.qu = load i64, ptr %i.nc, align 8, !tbaa !39
  %i.qv = add i64 %i.qu, %i.qt
  store i64 %i.qv, ptr %i.nc, align 8, !tbaa !39
  %i.qw = load ptr, ptr %i.mv, align 8, !tbaa !63
  store ptr %i.qw, ptr %i.ng, align 8, !tbaa !68
  %i.qx = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.qy = call i32 @ferror(ptr noundef %i.qx) #20
  %.not.i.i.i35 = icmp eq i32 %i.qy, 0
  br i1 %.not.i.i.i35, label %ProvideInput.exit.i.i, label %ProvideInput.exit.thread.i.i

ProvideInput.exit.thread.i.i:                     ; preds = %bb.hv, %InitializeBuffers.exit.thread.i.i
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ra = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ra, null
  %i.rb = select i1 %.not.i.i.i.i, ptr @.str.58, ptr %i.ra
  %i.rc = tail call ptr @__errno_location() #24
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !21
  %i.re = call ptr @strerror(i32 noundef %i.rd) #20
  %i.rf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.71, ptr noundef nonnull %i.rb, ptr noundef %i.re) #23 ; 0 uses
  br label %CompressFile.exit.thread.i

ProvideInput.exit.i.i:                            ; preds = %bb.hv
  %i.rg = call i32 @feof(ptr noundef %i.qx) #20
  %.not.i46.i.i = icmp ne i32 %i.rg, 0
  %i.rh = zext i1 %.not.i46.i.i to i32
  br label %bb.hw

bb.hw:                                            ; preds = %ProvideInput.exit.i.i, %.peel.next.i.i
  %.132.i.i = phi i32 [ %.031.i.i, %.peel.next.i.i ], [ %i.rh, %ProvideInput.exit.i.i ] ; 2 uses
  %.not38.i.i = icmp eq i32 %.132.i.i, 0
  %4 = select i1 %.not38.i.i, i32 0, i32 2
  %i.ri = call i32 @BrotliEncoderCompressStream(ptr noundef nonnull %i.nm, i32 noundef %4, ptr noundef nonnull %i.mz, ptr noundef nonnull %i.ng, ptr noundef nonnull %i.na, ptr noundef nonnull %i.nb, ptr noundef null) #20
  %.not39.i.i = icmp eq i32 %i.ri, 0
  br i1 %.not39.i.i, label %.loopexit62.i.i, label %._crit_edge70.i.i

.loopexit62.i.i:                                  ; preds = %bb.hw, %bb.hq
  %i.rj = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.rk = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %.not.i49.i.i = icmp eq ptr %i.rk, null
  %i.rl = select i1 %.not.i49.i.i, ptr @.str.58, ptr %i.rk
  %i.rm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rj, ptr noundef nonnull @.str.68, ptr noundef nonnull %i.rl) #23 ; 0 uses
  br label %CompressFile.exit.thread.i

._crit_edge70.i.i:                                ; preds = %bb.hw
  %.pre71.i.i = load i64, ptr %i.na, align 8, !tbaa !65
  %i.rn = icmp eq i64 %.pre71.i.i, 0
  br i1 %i.rn, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %._crit_edge70.i.i
  %i.ro = load ptr, ptr %i.nb, align 8, !tbaa !66 ; 2 uses
  %i.rp = load ptr, ptr %i.mx, align 8, !tbaa !64 ; 4 uses
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = ptrtoint ptr %i.rp to i64
  %i.rs = sub i64 %i.rq, %i.rr                    ; 2 uses
  %i.rt = load i64, ptr %i.nk, align 8, !tbaa !41
  %i.ru = add i64 %i.rs, %i.rt
  store i64 %i.ru, ptr %i.nk, align 8, !tbaa !41
  %i.rv = icmp ne ptr %i.ro, %i.rp
  %i.rw = load i32, ptr %i.j, align 8
  %.not.i61 = icmp eq i32 %i.rw, 0
  %or.cond120 = select i1 %i.rv, i1 %.not.i61, i1 false
  br i1 %or.cond120, label %bb.hy, label %ProvideOutput.exit.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.rx = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ry = call i64 @fwrite(ptr noundef %i.rp, i64 noundef 1, i64 noundef %i.rs, ptr noundef %i.rx) ; 0 uses
  %i.rz = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.sa = call i32 @ferror(ptr noundef %i.rz) #20
  %.not12.i63 = icmp eq i32 %i.sa, 0
  br i1 %.not12.i63, label %.ProvideOutput.exit.i.i_crit_edge, label %WriteOutput.exit65

.ProvideOutput.exit.i.i_crit_edge:                ; preds = %bb.hy
  %.pre322 = load ptr, ptr %i.mx, align 8, !tbaa !64
  br label %ProvideOutput.exit.i.i

WriteOutput.exit65:                               ; preds = %bb.hy
  %i.sb = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.sc = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.sc, null
  %i.sd = select i1 %.not.i.i64, ptr @.str.58, ptr %i.sc
  %i.se = tail call ptr @__errno_location() #24
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !21
  %i.sg = call ptr @strerror(i32 noundef %i.sf) #20
  %i.sh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sb, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.sd, ptr noundef %i.sg) #23 ; 0 uses
  br label %CompressFile.exit.thread.i

ProvideOutput.exit.i.i:                           ; preds = %.ProvideOutput.exit.i.i_crit_edge, %bb.hx
  %i.si = phi ptr [ %.pre322, %.ProvideOutput.exit.i.i_crit_edge ], [ %i.rp, %bb.hx ]
  store i64 524288, ptr %i.na, align 8, !tbaa !65
  store ptr %i.si, ptr %i.nb, align 8, !tbaa !66
  br label %bb.hz

bb.hz:                                            ; preds = %ProvideOutput.exit.i.i, %._crit_edge70.i.i
  %i.sj = call i32 @BrotliEncoderIsFinished(ptr noundef nonnull %i.nm) #20
  %.not43.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not43.i.i, label %.peel.next.i.i, label %.loopexit63.i.i, !llvm.loop !50

.loopexit63.i.i:                                  ; preds = %bb.hz, %bb.hu
  %i.sk = load ptr, ptr %i.nb, align 8, !tbaa !66 ; 2 uses
  %i.sl = load ptr, ptr %i.mx, align 8, !tbaa !64 ; 4 uses
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn                    ; 2 uses
  %i.sp = load i64, ptr %i.nk, align 8, !tbaa !41
  %i.sq = add i64 %i.so, %i.sp
  store i64 %i.sq, ptr %i.nk, align 8, !tbaa !41
  %i.sr = icmp ne ptr %i.sk, %i.sl
  %i.ss = load i32, ptr %i.j, align 8
  %.not.i58 = icmp eq i32 %i.ss, 0
  %or.cond121 = select i1 %i.sr, i1 %.not.i58, i1 false
  br i1 %or.cond121, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %.loopexit63.i.i
  %i.st = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.su = call i64 @fwrite(ptr noundef %i.sl, i64 noundef 1, i64 noundef %i.so, ptr noundef %i.st) ; 0 uses
  %i.sv = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.sw = call i32 @ferror(ptr noundef %i.sv) #20
  %.not12.i = icmp eq i32 %i.sw, 0
  br i1 %.not12.i, label %._crit_edge323, label %WriteOutput.exit

._crit_edge323:                                   ; preds = %bb.ia
  %.pre324 = load ptr, ptr %i.mx, align 8, !tbaa !64
  br label %bb.ib

WriteOutput.exit:                                 ; preds = %bb.ia
  %i.sx = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.sy = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.sy, null
  %i.sz = select i1 %.not.i.i60, ptr @.str.58, ptr %i.sy
  %i.ta = tail call ptr @__errno_location() #24
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !21
  %i.tc = call ptr @strerror(i32 noundef %i.tb) #20
  %i.td = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sx, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.sz, ptr noundef %i.tc) #23 ; 0 uses
  br label %CompressFile.exit.thread.i

bb.ib:                                            ; preds = %._crit_edge323, %.loopexit63.i.i
  %i.te = phi ptr [ %.pre324, %._crit_edge323 ], [ %i.sl, %.loopexit63.i.i ]
  store i64 0, ptr %i.na, align 8, !tbaa !65
  store ptr %i.te, ptr %i.nb, align 8, !tbaa !66
  %i.tf = load i32, ptr %i.d, align 8, !tbaa !58
  %i.tg = icmp sgt i32 %i.tf, 0
  br i1 %i.tg, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.th = call i64 @clock() #20
  store i64 %i.th, ptr %i.nj, align 8, !tbaa !44
  %i.ti = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.69, i64 11, i64 1, ptr %i.ti) #22 ; 0 uses
  call fastcc void @PrintFileProcessingProgress(ptr noundef nonnull %2)
  %i.tj = load ptr, ptr @stderr, align 8, !tbaa !28
  %fputc.i.i = call i32 @fputc(i32 10, ptr %i.tj) ; 0 uses
  br label %bb.id

.critedge.i.i:                                    ; preds = %bb.ho
  %.pre69.i.i = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %.pre67.i.i = load ptr, ptr @stderr, align 8, !tbaa !28
  %.not.i47.i.i = icmp eq ptr %.pre69.i.i, null
  %i.tk = select i1 %.not.i47.i.i, ptr @.str.58, ptr %.pre69.i.i
  %i.tl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.pre67.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.tk) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %CompressFile.exit.thread.i

CompressFile.exit.thread.i:                       ; preds = %WriteOutput.exit, %WriteOutput.exit65, %WriteOutput.exit70, %.critedge.i.i, %.loopexit62.i.i, %ProvideInput.exit.thread.i.i, %bb.hm, %bb.hj
  call void @BrotliEncoderDestroyInstance(ptr noundef nonnull %i.nm) #20
  br label %.split.i

bb.id:                                            ; preds = %bb.ic, %bb.ib
  call void @BrotliEncoderDestroyInstance(ptr noundef nonnull %i.nm) #20
  %i.tm = load i32, ptr %i.h, align 4, !tbaa !57
  %.not70.i = icmp eq i32 %i.tm, 0
  br i1 %.not70.i, label %.split53.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.tn = load i64, ptr %i.nk, align 8, !tbaa !41
  %i.to = load i64, ptr %i.nc, align 8, !tbaa !39
  %.not71.i = icmp ult i64 %i.tn, %i.to
  br i1 %.not71.i, label %.split53.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.tp = load i32, ptr %i.d, align 8, !tbaa !58
  %i.tq = icmp sgt i32 %i.tp, 0
  br i1 %i.tq, label %bb.ig, label %.split.i

bb.ig:                                            ; preds = %bb.if
  %i.tr = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite72.i = call i64 @fwrite(ptr nonnull @.str.61, i64 28, i64 1, ptr %i.tr) #22 ; 0 uses
  br label %.split.i

.split.i:                                         ; preds = %bb.ig, %bb.if, %CompressFile.exit.thread.i
  %i.ts = phi i1 [ true, %CompressFile.exit.thread.i ], [ false, %bb.if ], [ false, %bb.ig ]
  %i.tt = call fastcc i32 @CloseFiles(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1)
  br label %bb.ih

.split53.i:                                       ; preds = %bb.ie, %bb.id
  %i.tu = load i32, ptr %i.g, align 8, !tbaa !56
  %i.tv = icmp ne i32 %i.tu, 0
  %i.tw = zext i1 %i.tv to i32
  %i.tx = call fastcc i32 @CloseFiles(ptr noundef nonnull %2, i32 noundef %i.tw, i32 noundef 0)
  br label %bb.ih

bb.ih:                                            ; preds = %.split53.i, %.split.i
  %.14882.i = phi i1 [ %i.ts, %.split.i ], [ false, %.split53.i ]
  %phi.call.i = phi i32 [ %i.tt, %.split.i ], [ %i.tx, %.split53.i ]
  %.not73.i = icmp eq i32 %phi.call.i, 0
  %.not74.i = or i1 %.14882.i, %.not73.i
  br i1 %.not74.i, label %CompressFiles.exit, label %bb.ha

bb.ii:                                            ; preds = %ParseParams.exit.thread
  %i.ty = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 5 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 464 ; 6 uses
  br label %bb.ij

bb.ij:                                            ; preds = %bb.jz, %bb.ii
  %i.ud = call fastcc i32 @NextFile(ptr noundef nonnull %2)
  %.not.i38.not.not = icmp ne i32 %i.ud, 0        ; 3 uses
  br i1 %.not.i38.not.not, label %bb.ik, label %CompressFiles.exit

bb.ik:                                            ; preds = %bb.ij
  %i.ue = call ptr @BrotliDecoderCreateInstance(ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 3 uses
  store ptr %i.ue, ptr %i.x, align 8, !tbaa !70
  %.not.i.i39 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i39, label %.thread.i52, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.uf = call i32 @BrotliDecoderSetParameter(ptr noundef nonnull %i.ue, i32 noundef 1, i32 noundef 1) #20 ; 0 uses
  %i.ug = load ptr, ptr %i.v, align 8, !tbaa !61  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ug, null
end_hunk_0
