Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/trace-writer?download=true
inline.NumInlined: 304
inline.NumDeleted: 128
begin_hunk_0_@_ZN2v88platform7tracing15JSONTraceWriter16AppendTraceEventEPNS1_11TraceObjectE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.a, i64 noundef 1) #14
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext %i.aa) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.ah, %bb.d ], [ %i.x, %bb.e ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.19, i64 noundef 9) #14 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr @_ZN2v88platform7tracing17TracingController20GetCategoryGroupNameEPKh(ptr noundef %i.al) #14 ; 3 uses
  %.not.i40 = icmp eq ptr %i.am, null
  br i1 %.not.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.an = load ptr, ptr %.0.i, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %.0.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = or i32 %i.as, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aq, i32 noundef %i.at) #14
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #14
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %i.am, i64 noundef %i.au) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.20, i64 noundef 10) #14 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i41 = icmp eq ptr %i.ay, null
  br i1 %.not.i41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = load ptr, ptr %.0.i, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %.0.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = or i32 %i.be, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, i32 noundef %i.bf) #14
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #14
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %i.ay, i64 noundef %i.bg) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %bb.h, %bb.i
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.21, i64 noundef 8) #14 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i64 noundef %i.bk) #14 ; 2 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.22, i64 noundef 8) #14 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bo) #14 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.br = load i32, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i32 %i.br, 384
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.bt = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48 ; 4 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.23, i64 noundef 14) #14 ; 0 uses
  %i.bv = load ptr, ptr %i.bt, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, -75
  %i.cc = or disjoint i32 %i.cb, 8
  store i32 %i.cc, ptr %i.bz, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i64 noundef %i.ce) #14 ; 3 uses
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 0 uses
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = and i32 %i.cm, -75
  %i.co = or disjoint i32 %i.cn, 2
  store i32 %i.co, ptr %i.cl, align 8
  %i.cp = load i32, ptr %i.bq, align 8            ; 2 uses
  %i.cq = and i32 %i.cp, 128
  %.not35 = icmp eq i32 %i.cq, 0
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.24, i64 noundef 15) #14 ; 0 uses
  %.pre = load i32, ptr %i.bq, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi i32 [ %.pre, %bb.k ], [ %i.cp, %bb.j ] ; 2 uses
  %i.cu = and i32 %i.ct, 256
  %.not36 = icmp eq i32 %i.cu, 0
  br i1 %.not36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.25, i64 noundef 16) #14 ; 0 uses
  %.pre50 = load i32, ptr %i.bq, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.cx = phi i32 [ %i.ct, %bb.l ], [ %.pre50, %bb.m ], [ %i.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 ]
  %i.cy = and i32 %i.cx, 2
  %.not37 = icmp eq i32 %i.cy, 0
  br i1 %.not37, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %.not38 = icmp eq ptr %i.da, null
  br i1 %.not38, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48 ; 5 uses
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.26, i64 noundef 10) #14 ; 0 uses
  %i.dd = load ptr, ptr %i.cz, align 8            ; 3 uses
  %.not.i43 = icmp eq ptr %i.dd, null
  br i1 %.not.i43, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.de = load ptr, ptr %i.db, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %i.db, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = or i32 %i.dj, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dh, i32 noundef %i.dk) #14
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44

bb.r:                                             ; preds = %bb.p
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dd) #14
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.dd, i64 noundef %i.dl) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %bb.q, %bb.r
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %bb.o
  %i.do = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48 ; 4 uses
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.27, i64 noundef 9) #14 ; 0 uses
  %i.dq = load ptr, ptr %i.do, align 8
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = and i32 %i.dv, -75
  %i.dx = or disjoint i32 %i.dw, 8
  store i32 %i.dx, ptr %i.du, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, i64 noundef %i.dz) #14 ; 3 uses
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 0 uses
  %i.ec = load ptr, ptr %i.ea, align 8
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %i.ea, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = and i32 %i.eh, -75
  %i.ej = or disjoint i32 %i.ei, 2
  store i32 %i.ej, ptr %i.eg, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.ek = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull @.str.28, i64 noundef 9) #14 ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.pre51 = load ptr, ptr %i.h, align 8           ; 5 uses
  %i.ev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre51, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 0 uses
  %i.ew = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i45.peel = icmp eq ptr %i.ew, null
  br i1 %.not.i45.peel, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ew) #14
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre51, ptr noundef nonnull %i.ew, i64 noundef %i.ex) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46.peel

bb.w:                                             ; preds = %bb.u
  %i.ez = load ptr, ptr %.pre51, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %.pre51, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load i32, ptr %i.fd, align 8
  %i.ff = or i32 %i.fe, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fc, i32 noundef %i.ff) #14
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46.peel: ; preds = %bb.w, %bb.v
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre51, ptr noundef nonnull @.str.29, i64 noundef 2) #14 ; 0 uses
  %i.fh = load i8, ptr %i.en, align 8             ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 8
  br i1 %i.fi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46.peel
  %.sroa.0.0.copyload.peel = load i64, ptr %i.eo, align 8
  call void @_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEhNS1_11TraceObject8ArgValueE(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 noundef zeroext %i.fh, i64 %.sroa.0.0.copyload.peel)
  br label %bb.z

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46.peel
  %i.fj = load ptr, ptr %i.ep, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.et, ptr %2, align 8
  store i64 0, ptr %i.eu, align 8
  store i8 0, ptr %i.et, align 8
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull %2) #14, !inline_history !71
  %i.fn = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48
  %i.fo = load ptr, ptr %2, align 8
  %i.fp = load i64, ptr %i.eu, align 8
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef %i.fo, i64 noundef %i.fp) #14 ; 0 uses
  %i.fr = load ptr, ptr %2, align 8               ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.et
  br i1 %i.fs, label %_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel: ; preds = %bb.y
  %i.ft = load i64, ptr %i.et, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #15
  br label %_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit.peel

_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit.peel: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit.peel, %bb.x
  %i.fv = load i32, ptr %i.eq, align 8
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ae, %bb.z, %bb.t
  %i.fx = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48
  %i.fy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull @.str.30, i64 noundef 2) #14 ; 0 uses
  ret void

.peel.next:                                       ; preds = %bb.z, %bb.ae
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ 1, %bb.z ] ; 5 uses
  %i.fz = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull @.str.13, i64 noundef 1) #14 ; 0 uses
  %i.gb = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48 ; 5 uses
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 0 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.gd, align 8            ; 3 uses
  %.not.i45 = icmp eq ptr %i.ge, null
  br i1 %.not.i45, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.peel.next
  %i.gf = load ptr, ptr %i.gb, align 8
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.gb, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = or i32 %i.gk, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gi, i32 noundef %i.gl) #14
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46

bb.ab:                                            ; preds = %.peel.next
  %i.gm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ge) #14
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull %i.ge, i64 noundef %i.gm) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.aa, %bb.ab
  %i.go = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.29, i64 noundef 2) #14 ; 0 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv
  %i.gq = load i8, ptr %i.gp, align 1             ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 8
  br i1 %i.gr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.et, ptr %2, align 8
  store i64 0, ptr %i.eu, align 8
  store i8 0, ptr %i.et, align 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull %2) #14, !inline_history !71
  %i.gx = load ptr, ptr %i.h, align 8, !nonnull !47, !align !48
  %i.gy = load ptr, ptr %2, align 8
  %i.gz = load i64, ptr %i.eu, align 8
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gy, i64 noundef %i.gz) #14 ; 0 uses
  %i.hb = load ptr, ptr %2, align 8               ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.et
  br i1 %i.hc, label %_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ac
  %i.hd = load i64, ptr %i.et, align 8
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #15
  br label %_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit

_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.ae

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  %.sroa.0.0.copyload = load i64, ptr %i.hf, align 8
  call void @_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEhNS1_11TraceObject8ArgValueE(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 noundef zeroext %i.gq, i64 %.sroa.0.0.copyload)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88platform7tracing15JSONTraceWriter14AppendArgValueEPNS_24ConvertableToTraceFormatE.exit, %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = load i32, ptr %i.eq, align 8
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next, %i.hh
  br i1 %i.hi, label %.peel.next, label %._crit_edge, !llvm.loop !68
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88platform7tracing17TracingController20GetCategoryGroupNameEPKh(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88platform7tracing15JSONTraceWriter5FlushEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 !guid !73 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN2v88platform7tracing11TraceWriter21CreateJSONTraceWriterERSo(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !guid !74 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 11, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.d, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88platform7tracing15JSONTraceWriterE, i64 16), ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.f, align 8
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 2) #14 ; 0 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = load i64, ptr %i.c, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.h, i64 noundef %i.i) #14
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.11, i64 noundef 3) #14 ; 0 uses
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZN2v88platform7tracing15JSONTraceWriterC2ERSo.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.b, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #15
  br label %_ZN2v88platform7tracing15JSONTraceWriterC2ERSo.exit

_ZN2v88platform7tracing15JSONTraceWriterC2ERSo.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN2v88platform7tracing11TraceWriter21CreateJSONTraceWriterERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 !guid !75 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88platform7tracing15JSONTraceWriterE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.c, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 2) #14 ; 0 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.g) #14
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.11, i64 noundef 3) #14 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 !guid !76 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
end_hunk_0
