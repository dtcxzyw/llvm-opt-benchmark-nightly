Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bssl_shim?download=true
inline.NumInlined: 1154
inline.NumDeleted: 660
begin_hunk_0_@_ZL10DoExchangePSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEPS_I6ssl_stS3_EPK10TestConfigbbP14SettingsWriter:bb.a
  %.not233 = icmp eq i32 %.0166, 1
  br i1 %.not233, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.qv = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.qw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qv, ptr noundef nonnull @.str.47, i32 noundef %.0166) #25 ; 0 uses
  br label %.critedge257

bb.ez:                                            ; preds = %bb.ex
  %i.qx = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.qy = call i32 @SSL_total_renegotiations(ptr noundef %i.qx)
  %i.qz = icmp sgt i32 %i.qy, 0
  br i1 %i.qz, label %bb.fa, label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  %i.ra = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.rb = call ptr @SSL_get_session(ptr noundef %i.ra)
  %i.rc = call i32 @SSL_SESSION_is_resumable(ptr noundef %i.rb)
  %.not234 = icmp eq i32 %i.rc, 0
  br i1 %.not234, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rd = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite239 = call i64 @fwrite(ptr nonnull @.str.48, i64 56, i64 1, ptr %i.rd) #27 ; 0 uses
  br label %.critedge257

bb.fc:                                            ; preds = %bb.fa
  %i.re = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.rf = call i32 @SSL_session_reused(ptr noundef %i.re)
  %.not235 = icmp eq i32 %i.rf, 0
  br i1 %.not235, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.rg = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite238 = call i64 @fwrite(ptr nonnull @.str.49, i64 45, i64 1, ptr %i.rg) #27 ; 0 uses
  br label %.critedge257

bb.fe:                                            ; preds = %bb.fc
  %i.rh = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.ri = call fastcc noundef zeroext i1 @_ZL19CheckAuthPropertiesP6ssl_stbPK10TestConfig(ptr noundef %i.rh, i1 noundef zeroext %3, ptr noundef %2)
  br i1 %i.ri, label %bb.ff, label %.critedge257

bb.ff:                                            ; preds = %bb.fe, %bb.ez
  %i.rj = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.rk = call i32 @SSL_total_renegotiations(ptr noundef %i.rj)
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 1360
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !293 ; 2 uses
  %.not236 = icmp eq i32 %i.rk, %i.rm
  br i1 %.not236, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.rn = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.ro = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.rp = call i32 @SSL_total_renegotiations(ptr noundef %i.ro)
  %i.rq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rn, ptr noundef nonnull @.str.50, i32 noundef %i.rm, i32 noundef %i.rp) #25 ; 0 uses
  br label %.critedge257

bb.fh:                                            ; preds = %bb.ff
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 1367
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !294, !range !98, !noundef !99
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %bb.fi, label %.critedge257

bb.fi:                                            ; preds = %bb.fh
  %i.ru = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.rv = call i32 @SSL_total_renegotiations(ptr noundef %i.ru)
  %i.rw = getelementptr inbounds nuw i8, ptr %.1165, i64 156 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !295
  %.not237 = icmp eq i32 %i.rv, %i.rx
  br i1 %.not237, label %.critedge257, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ry = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.rz = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.sa = call i32 @SSL_total_renegotiations(ptr noundef %i.rz)
  %i.sb = load i32, ptr %i.rw, align 4, !tbaa !295
  %i.sc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ry, ptr noundef nonnull @.str.51, i32 noundef %i.sa, i32 noundef %i.sb) #25 ; 0 uses
  br label %.critedge257

.critedge247:                                     ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %.critedge257

.critedge257.critedge:                            ; preds = %bb.av, %bb.au, %_ZL8WriteAllP6ssl_stPKvm.exit293, %_ZL8WriteAllP6ssl_stPKvm.exit282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge257

.critedge257:                                     ; preds = %.split, %_ZL8WriteAllP6ssl_stPKvm.exit304.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit271.thread, %bb.bq, %bb.bu, %bb.bz, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread, %bb.bw, %bb.bs, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit334, %bb.ep, %.critedge257.critedge, %bb.ei, %bb.el, %bb.fh, %bb.fi, %bb.fe, %_ZL16DoSendFatalAlertP6ssl_sth.exit, %.critedge247, %.critedge244, %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.ak, %bb.w, %bb.o, %bb.p, %bb.c, %_ZNSt6vectorIhSaIhEED2Ev.exit271, %_ZL8WriteAllP6ssl_stPKvm.exit304, %_ZL8WriteAllP6ssl_stPKvm.exit315, %bb.fj, %bb.fg, %bb.fd, %bb.fb, %bb.ey, %bb.ev, %bb.eb, %bb.bj, %bb.aj, %bb.ag, %bb.ad, %bb.z, %bb.u
  %.22 = phi i1 [ %i.hk, %_ZL16DoSendFatalAlertP6ssl_sth.exit ], [ false, %.critedge247 ], [ false, %bb.bj ], [ false, %bb.ev ], [ false, %bb.ey ], [ false, %bb.fb ], [ false, %bb.fd ], [ false, %bb.fg ], [ false, %bb.fj ], [ false, %bb.fe ], [ false, %.critedge244 ], [ true, %bb.fh ], [ false, %bb.eb ], [ false, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit334 ], [ false, %.critedge257.critedge ], [ false, %_ZL8WriteAllP6ssl_stPKvm.exit315 ], [ false, %_ZL8WriteAllP6ssl_stPKvm.exit304 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit271 ], [ false, %bb.c ], [ false, %bb.o ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.aj ], [ false, %bb.w ], [ false, %bb.ag ], [ false, %bb.u ], [ false, %bb.p ], [ false, %bb.ak ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ true, %bb.fi ], [ false, %bb.el ], [ false, %bb.ep ], [ false, %bb.ei ], [ false, %bb.bs ], [ false, %bb.bw ], [ false, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit350.thread ], [ false, %bb.bz ], [ false, %bb.bu ], [ false, %bb.bq ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit271.thread ], [ false, %_ZL8WriteAllP6ssl_stPKvm.exit304.thread ], [ false, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  ret i1 %.22

_ZNSt14_Function_baseD2Ev.exit261:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.l, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit347, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn226 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit347 ], [ %i.ak, %bb.m ], [ %i.ak, %bb.l ], [ %lpad.loopexit.split-lp650, %_ZNSt6vectorIhSaIhEED2Ev.exit264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  resume { ptr, i32 } %.pn226
}

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SSL_in_early_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc noundef zeroext i1 @_ZL24CheckHandshakePropertiesP6ssl_stbPK10TestConfig(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [64 x i8], align 16               ; 6 uses
  %i.k = tail call noundef ptr @_Z12GetTestStatePK6ssl_st(ptr noundef %0) ; 9 uses
  %i.l = tail call fastcc noundef zeroext i1 @_ZL19CheckAuthPropertiesP6ssl_stbPK10TestConfig(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2)
  br i1 %i.l, label %bb.b, label %bb.hg

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @SSL_get_current_cipher(ptr noundef %0)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite292 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 28, i64 1, ptr %i.o) #27 ; 0 uses
  br label %bb.hg

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1164 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !297
  %.not223 = icmp eq i16 %i.q, 0
  br i1 %.not223, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @SSL_version(ptr noundef %0)
  %i.s = load i16, ptr %i.p, align 4, !tbaa !297
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %.not224 = icmp eq i32 %i.r, %i.t
  br i1 %.not224, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.v = tail call i32 @SSL_version(ptr noundef %0)
  %i.w = and i32 %i.v, 65535
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.68, i32 noundef %i.t, i32 noundef %i.w) #25 ; 0 uses
  br label %bb.hg

bb.g:                                             ; preds = %bb.e, %bb.d
  br i1 %1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 996
  %i.z = load i8, ptr %i.y, align 4, !tbaa !82, !range !98, !noundef !99
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i32 @SSL_in_early_data(ptr noundef %0)
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.ae = phi i32 [ 0, %bb.g ], [ 1, %bb.h ], [ %i.ad, %bb.i ]
  %i.af = tail call i32 @SSL_session_reused(ptr noundef %0)
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not225 = icmp eq i32 %i.ae, %i.ah
  br i1 %.not225, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.aj = tail call i32 @SSL_session_reused(ptr noundef %0)
  %.not291 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not291, ptr @.str.43, ptr @.str.42
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.ak) #25 ; 0 uses
  br label %bb.hg

bb.l:                                             ; preds = %bb.j
  br i1 %1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 577
  %i.an = load i8, ptr %i.am, align 1, !tbaa !79, !range !98, !noundef !99
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ap = tail call i32 @SSL_in_early_data(ptr noundef %0)
  %.not226 = icmp eq i32 %i.ap, 0                 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !178, !range !98, !noundef !99 ; 2 uses
  %i.as = zext i1 %.not226 to i8
  %.not227 = icmp eq i8 %i.ar, %i.as
  br i1 %.not227, label %bb.p, label %4

.thread:                                          ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  %i.au = load i8, ptr %i.at, align 1, !tbaa !178, !range !98, !noundef !99
  %.not227503 = icmp eq i8 %i.au, 0
  br i1 %.not227503, label %.critedge.thread, label %bb.o

4:                                                ; preds = %bb.n
  %5 = trunc nuw i8 %i.ar to i1
  %spec.select = select i1 %5, ptr @.str.42, ptr @.str.43
  br label %bb.o

bb.o:                                             ; preds = %.thread, %4
  %6 = phi ptr [ %spec.select, %4 ], [ @.str.42, %.thread ]
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.70, ptr noundef nonnull %6) #25 ; 0 uses
  br label %bb.hg

bb.p:                                             ; preds = %bb.n
  br i1 %.not226, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !138, !range !98, !noundef !99
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 1291
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !179, !range !98, !noundef !99
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = tail call i32 @SSL_session_reused(ptr noundef %0)
  %.not228 = icmp eq i32 %i.bd, 0
  br i1 %.not228, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1290
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !298, !range !98, !noundef !99
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = tail call i32 @SSL_version(ptr noundef %0)
  %i.bi = tail call i32 @SSL_is_dtls(ptr noundef %0)
  %.not.i = icmp eq i32 %i.bi, 0
  %i.bj = trunc i32 %i.bh to i16                  ; 2 uses
  %i.bk = sub i16 512, %i.bj
  %.0.i = select i1 %.not.i, i16 %i.bj, i16 %i.bk
  %i.bl = icmp ult i16 %.0.i, 772
  %i.bm = zext i1 %i.bl to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %i.bn = phi i32 [ 0, %bb.t ], [ 0, %bb.r ], [ %i.bm, %bb.u ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !169, !range !98, !noundef !99 ; 2 uses
  %i.bq = zext nneg i8 %i.bp to i32
  %.not229 = icmp eq i32 %i.bn, %i.bq
  br i1 %.not229, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = trunc nuw i8 %i.bp to i1
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.bt = select i1 %i.br, ptr @.str.42, ptr @.str.43
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.bt) #25 ; 0 uses
  br label %bb.hg

.critedge:                                        ; preds = %bb.v, %bb.q, %bb.p
  br i1 %1, label %bb.ac, label %.critedge.thread

.critedge.thread:                                 ; preds = %.thread, %.critedge
  %i.bv = phi i1 [ %.not226, %.critedge ], [ false, %.thread ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 1540
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !299, !range !98, !noundef !99
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.critedge.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !169, !range !98, !noundef !99
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.71, i64 38, i64 1, ptr %i.cc) #27 ; 0 uses
  br label %bb.hg

bb.z:                                             ; preds = %bb.x, %.critedge.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 1541
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !300, !range !98, !noundef !99
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !169, !range !98, !noundef !99
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite230 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 47, i64 1, ptr %i.cj) #27 ; 0 uses
  br label %bb.hg

bb.ac:                                            ; preds = %bb.z, %bb.aa, %.critedge
  %i.ck = phi i1 [ %i.bv, %bb.z ], [ %i.bv, %bb.aa ], [ %.not226, %.critedge ]
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 1585
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !166, !range !98, !noundef !99
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !138, !range !98, !noundef !99
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !301, !range !98, !noundef !99
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite231 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 26, i64 1, ptr %i.cu) #27 ; 0 uses
  br label %bb.hg

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !76
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread505, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = tail call ptr @SSL_get_servername(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.critedge294, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i64, ptr %i.cw, align 8, !tbaa !76 ; 3 uses
  %i.dc = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cz) #24
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.aj, label %.critedge294

bb.aj:                                            ; preds = %bb.ai
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread505, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.aj
  %i.df = load ptr, ptr %i.cv, align 8, !tbaa !160
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.df, ptr nonnull %i.cz, i64 %i.db)
  %.not520 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not520, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread505, label %.critedge294

.critedge294:                                     ; preds = %bb.ai, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, %bb.ah
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !97
  %i.dh = load ptr, ptr %i.cv, align 8, !tbaa !160
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.74, ptr noundef %i.cz, ptr noundef %i.dh) #25 ; 0 uses
  br label %bb.hg

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread505: ; preds = %bb.aj, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 552 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !76
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread505
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !78, !range !98, !noundef !99
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @SSL_get0_next_proto_negotiated(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !160
  %i.dr = load i64, ptr %i.dk, align 8, !tbaa !76 ; 3 uses
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !150
  %i.du = zext i32 %i.dt to i64
  %.not.i.i.i.i = icmp eq i64 %i.dr, %i.du
  br i1 %.not.i.i.i.i, label %bb.am, label %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.thread

bb.am:                                            ; preds = %bb.al
  %.not.not.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.dr, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.critedge296, label %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit

_ZN4bssl8internalneENS_4SpanIKhEES3_.exit:        ; preds = %bb.am
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.dq, ptr %i.ds, i64 %i.dr)
  %.not9.i.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.not, label %.critedge296, label %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.thread

_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.thread: ; preds = %bb.al, %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !97
  %fwrite232 = call i64 @fwrite(ptr nonnull @.str.75, i64 31, i64 1, ptr %i.dv) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.hg

.critedge296:                                     ; preds = %bb.am, %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.an

bb.an:                                            ; preds = %.critedge296, %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !138, !range !98, !noundef !99
end_hunk_0
