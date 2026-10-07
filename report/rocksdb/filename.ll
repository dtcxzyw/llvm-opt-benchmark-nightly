Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/filename?download=true
inline.NumInlined: 860
inline.NumDeleted: 281
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb13InfoLogPrefixC2EbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.cd = add <32 x i8> %wide.load.3, splat (i8 -65)
  %i.ce = icmp ult <32 x i8> %i.cd, splat (i8 32)
  %i.cf = icmp ult <32 x i8> %wide.load.3, splat (i8 91)
  %i.cg = icmp eq <32 x i8> %wide.load.3, splat (i8 95)
  %i.ch = or <32 x i1> %i.cf, %i.cg
  %i.ci = add <32 x i8> %wide.load.3, splat (i8 -97)
  %i.cj = icmp ult <32 x i8> %i.ci, splat (i8 26)
  %i.ck = add <32 x i8> %wide.load.3, splat (i8 -48)
  %i.cl = icmp ult <32 x i8> %i.ck, splat (i8 10)
  %i.cm = and <32 x i1> %i.ce, %i.ch
  %i.cn = add <32 x i8> %wide.load.3, splat (i8 -45)
  %i.co = icmp ult <32 x i8> %i.cn, splat (i8 2)
  %i.cp = or <32 x i1> %i.co, %i.cm
  %i.cq = or <32 x i1> %i.cp, %i.cl
  %i.cr = or <32 x i1> %i.cq, %i.cj
  %predphi.3 = select <32 x i1> %i.cr, <32 x i8> %wide.load.3, <32 x i8> splat (i8 95)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.1.peel.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store <32 x i8> %predphi.3, ptr %i.ct, align 1, !tbaa !21
  %i.cu = icmp eq i64 %n.vec, 128
  br i1 %i.cu, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 129
  %wide.load.4 = load <32 x i8>, ptr %i.cv, align 1, !tbaa !21 ; 7 uses
  %i.cw = add <32 x i8> %wide.load.4, splat (i8 -65)
  %i.cx = icmp ult <32 x i8> %i.cw, splat (i8 32)
  %i.cy = icmp ult <32 x i8> %wide.load.4, splat (i8 91)
  %i.cz = icmp eq <32 x i8> %wide.load.4, splat (i8 95)
  %i.da = or <32 x i1> %i.cy, %i.cz
  %i.db = add <32 x i8> %wide.load.4, splat (i8 -97)
  %i.dc = icmp ult <32 x i8> %i.db, splat (i8 26)
  %i.dd = add <32 x i8> %wide.load.4, splat (i8 -48)
  %i.de = icmp ult <32 x i8> %i.dd, splat (i8 10)
  %i.df = and <32 x i1> %i.cx, %i.da
  %i.dg = add <32 x i8> %wide.load.4, splat (i8 -45)
  %i.dh = icmp ult <32 x i8> %i.dg, splat (i8 2)
  %i.di = or <32 x i1> %i.dh, %i.df
  %i.dj = or <32 x i1> %i.di, %i.de
  %i.dk = or <32 x i1> %i.dj, %i.dc
  %predphi.4 = select <32 x i1> %i.dk, <32 x i8> %wide.load.4, <32 x i8> splat (i8 95)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.1.peel.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 128
  store <32 x i8> %predphi.4, ptr %i.dm, align 1, !tbaa !21
  %i.dn = icmp eq i64 %n.vec, 160
  br i1 %i.dn, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 161
  %wide.load.5 = load <32 x i8>, ptr %i.do, align 1, !tbaa !21 ; 7 uses
  %i.dp = add <32 x i8> %wide.load.5, splat (i8 -65)
  %i.dq = icmp ult <32 x i8> %i.dp, splat (i8 32)
  %i.dr = icmp ult <32 x i8> %wide.load.5, splat (i8 91)
  %i.ds = icmp eq <32 x i8> %wide.load.5, splat (i8 95)
  %i.dt = or <32 x i1> %i.dr, %i.ds
  %i.du = add <32 x i8> %wide.load.5, splat (i8 -97)
  %i.dv = icmp ult <32 x i8> %i.du, splat (i8 26)
  %i.dw = add <32 x i8> %wide.load.5, splat (i8 -48)
  %i.dx = icmp ult <32 x i8> %i.dw, splat (i8 10)
  %i.dy = and <32 x i1> %i.dq, %i.dt
  %i.dz = add <32 x i8> %wide.load.5, splat (i8 -45)
  %i.ea = icmp ult <32 x i8> %i.dz, splat (i8 2)
  %i.eb = or <32 x i1> %i.ea, %i.dy
  %i.ec = or <32 x i1> %i.eb, %i.dx
  %i.ed = or <32 x i1> %i.ec, %i.dv
  %predphi.5 = select <32 x i1> %i.ed, <32 x i8> %wide.load.5, <32 x i8> splat (i8 95)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %.1.peel.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 160
  store <32 x i8> %predphi.5, ptr %i.ef, align 1, !tbaa !21
  %i.eg = icmp eq i64 %n.vec, 192
  br i1 %i.eg, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 193
  %wide.load.6 = load <32 x i8>, ptr %i.eh, align 1, !tbaa !21 ; 7 uses
  %i.ei = add <32 x i8> %wide.load.6, splat (i8 -65)
  %i.ej = icmp ult <32 x i8> %i.ei, splat (i8 32)
  %i.ek = icmp ult <32 x i8> %wide.load.6, splat (i8 91)
  %i.el = icmp eq <32 x i8> %wide.load.6, splat (i8 95)
  %i.em = or <32 x i1> %i.ek, %i.el
  %i.en = add <32 x i8> %wide.load.6, splat (i8 -97)
  %i.eo = icmp ult <32 x i8> %i.en, splat (i8 26)
  %i.ep = add <32 x i8> %wide.load.6, splat (i8 -48)
  %i.eq = icmp ult <32 x i8> %i.ep, splat (i8 10)
  %i.er = and <32 x i1> %i.ej, %i.em
  %i.es = add <32 x i8> %wide.load.6, splat (i8 -45)
  %i.et = icmp ult <32 x i8> %i.es, splat (i8 2)
  %i.eu = or <32 x i1> %i.et, %i.er
  %i.ev = or <32 x i1> %i.eu, %i.eq
  %i.ew = or <32 x i1> %i.ev, %i.eo
  %predphi.6 = select <32 x i1> %i.ew, <32 x i8> %wide.load.6, <32 x i8> splat (i8 95)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.1.peel.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  store <32 x i8> %predphi.6, ptr %i.ey, align 1, !tbaa !21
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN7rocksdbL16GetInfoLogPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPci.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.r, 504                    ; 4 uses
  %i.ez = or disjoint i64 %n.vec12, 1
  %i.fa = or disjoint i64 %.1.peel.i, %n.vec12    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %.1.peel.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 %index13
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %wide.load14 = load <8 x i8>, ptr %i.fd, align 1, !tbaa !21 ; 7 uses
  %i.fe = add <8 x i8> %wide.load14, splat (i8 -65)
  %i.ff = icmp ult <8 x i8> %i.fe, splat (i8 32)
  %i.fg = icmp ult <8 x i8> %wide.load14, splat (i8 91)
  %i.fh = icmp eq <8 x i8> %wide.load14, splat (i8 95)
  %i.fi = or <8 x i1> %i.fg, %i.fh
  %i.fj = add <8 x i8> %wide.load14, splat (i8 -97)
  %i.fk = icmp ult <8 x i8> %i.fj, splat (i8 26)
  %i.fl = add <8 x i8> %wide.load14, splat (i8 -48)
  %i.fm = icmp ult <8 x i8> %i.fl, splat (i8 10)
  %i.fn = and <8 x i1> %i.ff, %i.fi
  %i.fo = add <8 x i8> %wide.load14, splat (i8 -45)
  %i.fp = icmp ult <8 x i8> %i.fo, splat (i8 2)
  %i.fq = or <8 x i1> %i.fp, %i.fn
  %i.fr = or <8 x i1> %i.fq, %i.fm
  %i.fs = or <8 x i1> %i.fr, %i.fk
  %predphi15 = select <8 x i1> %i.fs, <8 x i8> %wide.load14, <8 x i8> splat (i8 95)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 %index13
  store <8 x i8> %predphi15, ptr %i.ft, align 1, !tbaa !21
  %index.next16 = add nuw i64 %index13, 8         ; 2 uses
  %i.fu = icmp eq i64 %index.next16, %n.vec12
  br i1 %i.fu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !168

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.r, %n.vec12
  br i1 %cmp.n17, label %_ZN7rocksdbL16GetInfoLogPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPci.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.047.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ]
  %.03646.i.ph = phi i64 [ %.1.peel.i, %iter.check ], [ %.1.peel.i, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.q
  %.047.i = phi i64 [ %i.gf, %bb.q ], [ %.047.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03646.i = phi i64 [ %.1.i, %bb.q ], [ %.03646.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 %.047.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !21  ; 12 uses
  %i.fx = icmp sgt i8 %i.fw, 96
  br i1 %i.fx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.fy = icmp samesign ult i8 %i.fw, 123
  br i1 %i.fy, label %bb.q, label %.thread43.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.fz = icmp sgt i8 %i.fw, 47
  br i1 %i.fz, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ga = icmp samesign ult i8 %i.fw, 58
  br i1 %i.ga, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gb = icmp samesign ugt i8 %i.fw, 64
  br i1 %i.gb, label %bb.o, label %.thread43.i

bb.o:                                             ; preds = %bb.n
  %i.gc = icmp samesign ult i8 %i.fw, 91
  %i.gd = icmp eq i8 %i.fw, 95
  %or.cond.i = or i1 %i.gc, %i.gd
  br i1 %or.cond.i, label %bb.q, label %.thread43.i

bb.p:                                             ; preds = %bb.l
  %.off.i = add i8 %i.fw, -45
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %.thread43.i

.thread43.i:                                      ; preds = %bb.p, %bb.o, %bb.n, %bb.k
  br label %bb.q

bb.q:                                             ; preds = %.thread43.i, %bb.p, %bb.o, %bb.m, %bb.k
  %.sink.i = phi i8 [ 95, %.thread43.i ], [ %i.fw, %bb.p ], [ %i.fw, %bb.o ], [ %i.fw, %bb.m ], [ %i.fw, %bb.k ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %.03646.i
  store i8 %.sink.i, ptr %i.ge, align 1, !tbaa !21
  %.1.i = add nuw nsw i64 %.03646.i, 1            ; 2 uses
  %i.gf = add nuw nsw i64 %.047.i, 1              ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.e
  %i.gh = icmp samesign ult i64 %.03646.i, 254
  %i.gi = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %i.gi, label %.lr.ph.i, label %_ZN7rocksdbL16GetInfoLogPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPci.exit, !llvm.loop !169

_ZN7rocksdbL16GetInfoLogPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPci.exit: ; preds = %bb.q, %middle.block, %vec.epilog.middle.block, %bb.c, %.thread43.peel.i
  %.036.lcssa.i = phi i64 [ 0, %bb.c ], [ %.1.peel.i, %.thread43.peel.i ], [ %i.fa, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %.1.i, %bb.q ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 %.036.lcssa.i
  %i.gk = sub i64 260, %.036.lcssa.i
  %i.gl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.gj, i64 noundef %i.gk, ptr noundef nonnull @__const._ZN7rocksdbL16GetInfoLogPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPci.suffix) #25 ; 0 uses
  %i.gm = add i64 %.036.lcssa.i, 4
  %i.gn = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdbL16GetInfoLogPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPci.exit
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !21
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdbL16GetInfoLogPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPci.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %storemerge = phi i64 [ 3, %bb.b ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  store ptr %0, ptr %i.b, align 8, !tbaa !30
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13NormalizePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %i.e = icmp ugt i64 %i.d, 2
  %.pre = load ptr, ptr %1, align 8, !tbaa !20    ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %.pre, align 1, !tbaa !21
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = icmp eq i8 %i.i, 47
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, label %.lr.ph.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.c
  store i16 12079, ptr %i.a, align 8
  store i64 2, ptr %i.b, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.k, align 2, !tbaa !21
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.a
  %i.l = icmp samesign eq i64 %i.d, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.d
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.pre23 = phi ptr [ %.pre2325, %bb.h ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.022 = phi ptr [ %i.af, %bb.h ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.n = load i8, ptr %.sroa.019.022, align 1, !tbaa !21 ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !22   ; 6 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = icmp eq i8 %i.n, 47
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.pre23, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !21
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.v = add i64 %i.o, 1                          ; 3 uses
  %i.w = icmp eq ptr %.pre23, %i.a
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  %i.x = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.aa = icmp ugt i64 %i.v, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc16 unwind label %bb.i

.noexc16:                                         ; preds = %bb.g
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc16
  %i.ab = phi ptr [ %.pre.i, %.noexc16 ], [ %.pre23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.o
  store i8 %i.n, ptr %i.ac, align 1, !tbaa !21
  store i64 %i.v, ptr %i.b, align 8, !tbaa !22
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i8 0, ptr %i.ae, align 1, !tbaa !21
  %.pre23.pre = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.e
  %.pre2325 = phi ptr [ %.pre23.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.pre23, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.019.022, i64 1 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.m
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !21
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15InfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"struct.rocksdb::InfoLogPrefix", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !20, !noalias !180
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !180
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str.50, i64 noundef 4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !180
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN7rocksdb13InfoLogPrefixC1EbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(280) %6, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.g = load ptr, ptr %3, align 8, !tbaa !20, !noalias !181
  %i.h = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !181
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %i.g, i64 noundef %i.h, ptr noundef nonnull @.str.45, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !181
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #25, !noalias !182 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22, !noalias !182 ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
  %i.m = icmp ult i64 %i.l, %i.i
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.c
  %i.n = add i64 %i.k, %i.i                       ; 3 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !20, !noalias !182 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = icmp ult i64 %i.k, 16
end_hunk_0
