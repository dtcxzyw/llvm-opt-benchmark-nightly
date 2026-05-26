inline.NumInlined: 41
inline.NumDeleted: 27
begin_hunk_0_@_ZN6duckdbL12MD5TransformEPjPKj:bb.a
  %i.oh = add i32 %i.og, %i.oa                    ; 5 uses
  %i.oi = xor i32 %i.oa, %i.nt
  %i.oj = xor i32 %i.oi, %i.oh
  %i.ok = add i32 %i.ae, -995338651
  %i.ol = add i32 %i.ok, %i.nm
  %i.om = add i32 %i.ol, %i.oj                    ; 2 uses
  %i.on = tail call i32 @llvm.fshl.i32(i32 %i.om, i32 %i.om, i32 23)
  %i.oo = add i32 %i.on, %i.oh                    ; 5 uses
  %i.op = xor i32 %i.oa, -1
  %i.oq = or i32 %i.oo, %i.op
  %i.or = xor i32 %i.oq, %i.oh
  %i.os = add i32 %i.k, -198630844
  %i.ot = add i32 %i.os, %i.nt
  %i.ou = add i32 %i.ot, %i.or                    ; 2 uses
  %i.ov = tail call i32 @llvm.fshl.i32(i32 %i.ou, i32 %i.ou, i32 6)
  %i.ow = add i32 %i.ov, %i.oo                    ; 5 uses
  %i.ox = xor i32 %i.oh, -1
  %i.oy = or i32 %i.ow, %i.ox
  %i.oz = xor i32 %i.oy, %i.oo
  %i.pa = add i32 %i.cc, 1126891415
  %i.pb = add i32 %i.pa, %i.oa
  %i.pc = add i32 %i.pb, %i.oz                    ; 2 uses
  %i.pd = tail call i32 @llvm.fshl.i32(i32 %i.pc, i32 %i.pc, i32 10)
  %i.pe = add i32 %i.pd, %i.ow                    ; 5 uses
  %i.pf = xor i32 %i.oo, -1
  %i.pg = or i32 %i.pe, %i.pf
  %i.ph = xor i32 %i.pg, %i.ow
  %i.pi = add i32 %i.eu, -1416354905
  %i.pj = add i32 %i.pi, %i.oh
  %i.pk = add i32 %i.pj, %i.ph                    ; 2 uses
  %i.pl = tail call i32 @llvm.fshl.i32(i32 %i.pk, i32 %i.pk, i32 15)
  %i.pm = add i32 %i.pl, %i.pe                    ; 5 uses
  %i.pn = xor i32 %i.ow, -1
  %i.po = or i32 %i.pm, %i.pn
  %i.pp = xor i32 %i.po, %i.pe
  %i.pq = add i32 %i.bi, -57434055
  %i.pr = add i32 %i.pq, %i.oo
  %i.ps = add i32 %i.pr, %i.pp                    ; 2 uses
  %i.pt = tail call i32 @llvm.fshl.i32(i32 %i.ps, i32 %i.ps, i32 21)
  %i.pu = add i32 %i.pt, %i.pm                    ; 5 uses
  %i.pv = xor i32 %i.pe, -1
  %i.pw = or i32 %i.pu, %i.pv
  %i.px = xor i32 %i.pw, %i.pm
  %i.py = add i32 %i.ea, 1700485571
  %i.pz = add i32 %i.py, %i.ow
  %i.qa = add i32 %i.pz, %i.px                    ; 2 uses
  %i.qb = tail call i32 @llvm.fshl.i32(i32 %i.qa, i32 %i.qa, i32 6)
  %i.qc = add i32 %i.qb, %i.pu                    ; 5 uses
  %i.qd = xor i32 %i.pm, -1
  %i.qe = or i32 %i.qc, %i.qd
  %i.qf = xor i32 %i.qe, %i.pu
  %i.qg = add i32 %i.ao, -1894986606
  %i.qh = add i32 %i.qg, %i.pe
  %i.qi = add i32 %i.qh, %i.qf                    ; 2 uses
  %i.qj = tail call i32 @llvm.fshl.i32(i32 %i.qi, i32 %i.qi, i32 10)
  %i.qk = add i32 %i.qj, %i.qc                    ; 5 uses
  %i.ql = xor i32 %i.pu, -1
  %i.qm = or i32 %i.qk, %i.ql
  %i.qn = xor i32 %i.qm, %i.qc
  %i.qo = add i32 %i.dg, -1051523
  %i.qp = add i32 %i.qo, %i.pm
  %i.qq = add i32 %i.qp, %i.qn                    ; 2 uses
  %i.qr = tail call i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qq, i32 15)
  %i.qs = add i32 %i.qr, %i.qk                    ; 5 uses
  %i.qt = xor i32 %i.qc, -1
  %i.qu = or i32 %i.qs, %i.qt
  %i.qv = xor i32 %i.qu, %i.qk
  %i.qw = add i32 %i.u, -2054922799
  %i.qx = add i32 %i.qw, %i.pu
  %i.qy = add i32 %i.qx, %i.qv                    ; 2 uses
  %i.qz = tail call i32 @llvm.fshl.i32(i32 %i.qy, i32 %i.qy, i32 21)
  %i.ra = add i32 %i.qz, %i.qs                    ; 5 uses
  %i.rb = xor i32 %i.qk, -1
  %i.rc = or i32 %i.ra, %i.rb
  %i.rd = xor i32 %i.rc, %i.qs
  %i.re = add i32 %i.cm, 1873313359
  %i.rf = add i32 %i.re, %i.qc
  %i.rg = add i32 %i.rf, %i.rd                    ; 2 uses
  %i.rh = tail call i32 @llvm.fshl.i32(i32 %i.rg, i32 %i.rg, i32 6)
  %i.ri = add i32 %i.rh, %i.ra                    ; 5 uses
  %i.rj = xor i32 %i.qs, -1
  %i.rk = or i32 %i.ri, %i.rj
  %i.rl = xor i32 %i.rk, %i.ra
  %i.rm = add i32 %i.fe, -30611744
  %i.rn = add i32 %i.rm, %i.qk
  %i.ro = add i32 %i.rn, %i.rl                    ; 2 uses
  %i.rp = tail call i32 @llvm.fshl.i32(i32 %i.ro, i32 %i.ro, i32 10)
  %i.rq = add i32 %i.rp, %i.ri                    ; 5 uses
  %i.rr = xor i32 %i.ra, -1
  %i.rs = or i32 %i.rq, %i.rr
  %i.rt = xor i32 %i.rs, %i.ri
  %i.ru = add i32 %i.bs, -1560198380
  %i.rv = add i32 %i.ru, %i.qs
  %i.rw = add i32 %i.rv, %i.rt                    ; 2 uses
  %i.rx = tail call i32 @llvm.fshl.i32(i32 %i.rw, i32 %i.rw, i32 15)
  %i.ry = add i32 %i.rx, %i.rq                    ; 5 uses
  %i.rz = xor i32 %i.ri, -1
  %i.sa = or i32 %i.ry, %i.rz
  %i.sb = xor i32 %i.sa, %i.rq
  %i.sc = add i32 %i.ek, 1309151649
  %i.sd = add i32 %i.sc, %i.ra
  %i.se = add i32 %i.sd, %i.sb                    ; 2 uses
  %i.sf = tail call i32 @llvm.fshl.i32(i32 %i.se, i32 %i.se, i32 21)
  %i.sg = add i32 %i.sf, %i.ry                    ; 5 uses
  %i.sh = xor i32 %i.rq, -1
  %i.si = or i32 %i.sg, %i.sh
  %i.sj = xor i32 %i.si, %i.ry
  %i.sk = add i32 %i.ay, -145523070
  %i.sl = add i32 %i.sk, %i.ri
  %i.sm = add i32 %i.sl, %i.sj                    ; 2 uses
  %i.sn = tail call i32 @llvm.fshl.i32(i32 %i.sm, i32 %i.sm, i32 6)
  %i.so = add i32 %i.sn, %i.sg                    ; 5 uses
  %i.sp = xor i32 %i.ry, -1
  %i.sq = or i32 %i.so, %i.sp
  %i.sr = xor i32 %i.sq, %i.sg
  %i.ss = add i32 %i.dq, -1120210379
  %i.st = add i32 %i.ss, %i.rq
  %i.su = add i32 %i.st, %i.sr                    ; 2 uses
  %i.sv = tail call i32 @llvm.fshl.i32(i32 %i.su, i32 %i.su, i32 10)
  %i.sw = add i32 %i.sv, %i.so                    ; 4 uses
  %i.sx = xor i32 %i.sg, -1
  %i.sy = or i32 %i.sw, %i.sx
  %i.sz = xor i32 %i.sy, %i.so
  %i.ta = add i32 %i.ae, 718787259
  %i.tb = add i32 %i.ta, %i.ry
  %i.tc = add i32 %i.tb, %i.sz                    ; 2 uses
  %i.td = tail call i32 @llvm.fshl.i32(i32 %i.tc, i32 %i.tc, i32 15)
  %i.te = add i32 %i.td, %i.sw                    ; 3 uses
  %i.tf = xor i32 %i.so, -1
  %i.tg = or i32 %i.te, %i.tf
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = add i32 %i.cw, -343485551
  %i.tj = add i32 %i.ti, %i.sg
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = tail call i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 21)
  %i.tm = add i32 %i.so, %i.a
  store i32 %i.tm, ptr %0, align 4, !tbaa !3
  %i.tn = add i32 %i.te, %i.c
  %i.to = add i32 %i.tn, %i.tl
  store i32 %i.to, ptr %i.b, align 4, !tbaa !3
  %i.tp = add i32 %i.te, %i.e
  store i32 %i.tp, ptr %i.d, align 4, !tbaa !3
  %i.tq = add i32 %i.sw, %i.g
  store i32 %i.tq, ptr %i.f, align 4, !tbaa !3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb10MD5Context6FinishEPh(ptr noundef nonnull align 4 captures(none) dereferenceable(88) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store i8 -128, ptr %i.g, align 1, !tbaa !9
  %i.i = xor i32 %i.d, 63                         ; 2 uses
  %i.j = icmp samesign ult i32 %i.i, 8
  br i1 %i.j, label %_ZN6duckdbL11ByteReverseEPhj.exit, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit:                ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.k, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef %0, ptr noundef %i.e)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %_ZN6duckdbL11ByteReverseEPhj.exit12

bb.b:                                             ; preds = %bb.a
  %i.l = sub nsw i32 55, %i.d
  %i.m = zext nneg i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.m, i1 false)
  br label %_ZN6duckdbL11ByteReverseEPhj.exit12

_ZN6duckdbL11ByteReverseEPhj.exit12:              ; preds = %bb.b, %_ZN6duckdbL11ByteReverseEPhj.exit
  %i.n = phi i32 [ %i.b, %bb.b ], [ %.pre, %_ZN6duckdbL11ByteReverseEPhj.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.n, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef %0, ptr noundef %i.e)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10MD5Context9FinishHexEPc(ptr noundef nonnull align 4 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 63                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store i8 -128, ptr %i.h, align 1, !tbaa !9
  %i.j = xor i32 %i.e, 63                         ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 8
  br i1 %i.k, label %_ZN6duckdbL11ByteReverseEPhj.exit.i, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit.i:              ; preds = %bb.a
  %i.l = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.l, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.f)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %_ZN6duckdb10MD5Context6FinishEPh.exit

bb.b:                                             ; preds = %bb.a
  %i.m = sub nsw i32 55, %i.e
  %i.n = zext nneg i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.n, i1 false)
  br label %_ZN6duckdb10MD5Context6FinishEPh.exit

_ZN6duckdb10MD5Context6FinishEPh.exit:            ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit.i, %bb.b
  %i.o = phi i32 [ %i.c, %bb.b ], [ %.pre.i, %_ZN6duckdbL11ByteReverseEPhj.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.o, ptr %i.p, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.r, ptr %i.s, align 4, !tbaa !3
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(88) %0, i64 16, i1 false)
  call void @_ZN14duckdb_mbedtls14MbedTlsWrapper8ToBase16EPcS1_m(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @_ZN14duckdb_mbedtls14MbedTlsWrapper8ToBase16EPcS1_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10MD5Context9FinishHexB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 captures(none) dereferenceable(88) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 63                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store i8 -128, ptr %i.j, align 1, !tbaa !9
  %i.l = xor i32 %i.g, 63                         ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 8
  br i1 %i.m, label %_ZN6duckdbL11ByteReverseEPhj.exit.i.i, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit.i.i:            ; preds = %bb.a
  %i.n = zext nneg i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.n, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %1, ptr noundef %i.h)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.h, i8 0, i64 56, i1 false)
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  br label %_ZN6duckdb10MD5Context9FinishHexEPc.exit

bb.b:                                             ; preds = %bb.a
  %i.o = sub nsw i32 55, %i.g
  %i.p = zext nneg i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.p, i1 false)
  br label %_ZN6duckdb10MD5Context9FinishHexEPc.exit

_ZN6duckdb10MD5Context9FinishHexEPc.exit:         ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit.i.i, %bb.b
  %i.q = phi i32 [ %i.e, %bb.b ], [ %.pre.i.i, %_ZN6duckdbL11ByteReverseEPhj.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.t, ptr %i.u, align 4, !tbaa !3
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %1, ptr noundef %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(88) %1, i64 16, i1 false)
  call void @_ZN14duckdb_mbedtls14MbedTlsWrapper8ToBase16EPcS1_m(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 32, ptr %i.a, align 8, !tbaa !14
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !16
  %i.x = load i64, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !18
  %i.z = load ptr, ptr %0, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb10MD5Context3AddEPKc(ptr noundef nonnull align 4 captures(none) dereferenceable(88) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 3 uses
  %i.d = trunc i64 %i.a to i32
  %i.e = shl i32 %i.d, 3
  %i.f = add i32 %i.e, %i.c                       ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !3
  %i.g = icmp ult i32 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i1 %i.g to i32
  %i.k = lshr i64 %i.a, 29
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.i, %i.l
  %i.n = add i32 %i.m, %i.j
  store i32 %i.n, ptr %i.h, align 4, !tbaa !3
  %i.o = lshr i32 %i.c, 3
  %i.p = and i32 %i.o, 63                         ; 3 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = sub nuw nsw i32 64, %i.p
  %i.u = zext nneg i32 %i.t to i64                ; 4 uses
  %.not35.i = icmp ult i64 %i.a, %i.u
  br i1 %.not35.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %i.a, i1 false)
  br label %_ZN6duckdb10MD5Context9MD5UpdateEPKhm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.u, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.q)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = sub nuw i64 %i.a, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.129.i = phi i64 [ %i.w, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %.1.i = phi ptr [ %i.v, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %i.x = icmp ugt i64 %.129.i, 63
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN6duckdbL11ByteReverseEPhj.exit39.i

_ZN6duckdbL11ByteReverseEPhj.exit39.i:            ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit39.i, %.lr.ph.i
  %.243.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.z, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ] ; 2 uses
  %.23042.i = phi i64 [ %.129.i, %.lr.ph.i ], [ %i.aa, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.y, ptr noundef nonnull align 1 dereferenceable(64) %.243.i, i64 64, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.243.i, i64 64 ; 2 uses
  %i.aa = add i64 %.23042.i, -64                  ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 63
  br i1 %i.ab, label %_ZN6duckdbL11ByteReverseEPhj.exit39.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %_ZN6duckdbL11ByteReverseEPhj.exit39.i, %bb.d
  %.230.lcssa.i = phi i64 [ %.129.i, %bb.d ], [ %i.aa, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ]
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.d ], [ %i.z, %_ZN6duckdbL11ByteReverseEPhj.exit39.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull align 1 %.2.lcssa.i, i64 %.230.lcssa.i, i1 false)
  br label %_ZN6duckdb10MD5Context9MD5UpdateEPKhm.exit

_ZN6duckdb10MD5Context9MD5UpdateEPKhm.exit:       ; preds = %.thread.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!17, !12, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !15, i64 8, !5, i64 16}
!18 = !{!17, !15, i64 8}
end_hunk_0
