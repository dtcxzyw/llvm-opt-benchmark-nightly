Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pattern?download=true
inline.NumInlined: 2769
inline.NumDeleted: 1670
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost4urls7grammar6detail16find_if_not_predINS1_9lut_charsEEEPKcRKT_S6_S6_:bb.a
  %i.bg = sext i1 %.not30.4 to i8
  %.sroa.0.4.vec.insert = insertelement <16 x i8> %.sroa.0.3.vec.insert, i8 %i.bg, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.02233, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17  ; 2 uses
  %i.bj = and i8 %i.bi, 3
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !12
  %i.bn = lshr i8 %i.bi, 2
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bm
  %.not30.5 = icmp eq i64 %i.bq, 0
  %i.br = sext i1 %.not30.5 to i8
  %.sroa.0.5.vec.insert = insertelement <16 x i8> %.sroa.0.4.vec.insert, i8 %i.br, i64 5
  %i.bs = getelementptr inbounds nuw i8, ptr %.02233, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17  ; 2 uses
  %i.bu = and i8 %i.bt, 3
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !12
  %i.by = lshr i8 %i.bt, 2
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.ca, %i.bx
  %.not30.6 = icmp eq i64 %i.cb, 0
  %i.cc = sext i1 %.not30.6 to i8
  %.sroa.0.6.vec.insert = insertelement <16 x i8> %.sroa.0.5.vec.insert, i8 %i.cc, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %.02233, i64 7
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17  ; 2 uses
  %i.cf = and i8 %i.ce, 3
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !12
  %i.cj = lshr i8 %i.ce, 2
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.ci
  %.not30.7 = icmp eq i64 %i.cm, 0
  %i.cn = sext i1 %.not30.7 to i8
  %.sroa.0.7.vec.insert = insertelement <16 x i8> %.sroa.0.6.vec.insert, i8 %i.cn, i64 7
  %i.co = getelementptr inbounds nuw i8, ptr %.02233, i64 8
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17  ; 2 uses
  %i.cq = and i8 %i.cp, 3
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !12
  %i.cu = lshr i8 %i.cp, 2
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.ct
  %.not30.8 = icmp eq i64 %i.cx, 0
  %i.cy = sext i1 %.not30.8 to i8
  %.sroa.0.8.vec.insert = insertelement <16 x i8> %.sroa.0.7.vec.insert, i8 %i.cy, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.02233, i64 9
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17  ; 2 uses
  %i.db = and i8 %i.da, 3
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !12
  %i.df = lshr i8 %i.da, 2
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.dh, %i.de
  %.not30.9 = icmp eq i64 %i.di, 0
  %i.dj = sext i1 %.not30.9 to i8
  %.sroa.0.9.vec.insert = insertelement <16 x i8> %.sroa.0.8.vec.insert, i8 %i.dj, i64 9
  %i.dk = getelementptr inbounds nuw i8, ptr %.02233, i64 10
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !17  ; 2 uses
  %i.dm = and i8 %i.dl, 3
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !12
  %i.dq = lshr i8 %i.dl, 2
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dp
  %.not30.10 = icmp eq i64 %i.dt, 0
  %i.du = sext i1 %.not30.10 to i8
  %.sroa.0.10.vec.insert = insertelement <16 x i8> %.sroa.0.9.vec.insert, i8 %i.du, i64 10
  %i.dv = getelementptr inbounds nuw i8, ptr %.02233, i64 11
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !17  ; 2 uses
  %i.dx = and i8 %i.dw, 3
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !12
  %i.eb = lshr i8 %i.dw, 2
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %i.ea
  %.not30.11 = icmp eq i64 %i.ee, 0
  %i.ef = sext i1 %.not30.11 to i8
  %.sroa.0.11.vec.insert = insertelement <16 x i8> %.sroa.0.10.vec.insert, i8 %i.ef, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %.02233, i64 12
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !17  ; 2 uses
  %i.ei = and i8 %i.eh, 3
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !12
  %i.em = lshr i8 %i.eh, 2
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = and i64 %i.eo, %i.el
  %.not30.12 = icmp eq i64 %i.ep, 0
  %i.eq = sext i1 %.not30.12 to i8
  %.sroa.0.12.vec.insert = insertelement <16 x i8> %.sroa.0.11.vec.insert, i8 %i.eq, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %.02233, i64 13
  %i.es = load i8, ptr %i.er, align 1, !tbaa !17  ; 2 uses
  %i.et = and i8 %i.es, 3
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !12
  %i.ex = lshr i8 %i.es, 2
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = and i64 %i.ez, %i.ew
  %.not30.13 = icmp eq i64 %i.fa, 0
  %i.fb = sext i1 %.not30.13 to i8
  %.sroa.0.13.vec.insert = insertelement <16 x i8> %.sroa.0.12.vec.insert, i8 %i.fb, i64 13
  %i.fc = getelementptr inbounds nuw i8, ptr %.02233, i64 14
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !17  ; 2 uses
  %i.fe = and i8 %i.fd, 3
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !12
  %i.fi = lshr i8 %i.fd, 2
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = and i64 %i.fk, %i.fh
  %.not30.14 = icmp eq i64 %i.fl, 0
  %i.fm = sext i1 %.not30.14 to i8
  %.sroa.0.14.vec.insert = insertelement <16 x i8> %.sroa.0.13.vec.insert, i8 %i.fm, i64 14
  %i.fn = getelementptr inbounds nuw i8, ptr %.02233, i64 15
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !17  ; 2 uses
  %i.fp = and i8 %i.fo, 3
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !12
  %i.ft = lshr i8 %i.fo, 2
  %i.fu = zext nneg i8 %i.ft to i64
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.fs
  %.not30.15 = icmp eq i64 %i.fw, 0
  %i.fx = sext i1 %.not30.15 to i8
  %.sroa.0.15.vec.insert = insertelement <16 x i8> %.sroa.0.14.vec.insert, i8 %i.fx, i64 15
  %i.fy = icmp slt <16 x i8> %.sroa.0.15.vec.insert, zeroinitializer
  %i.fz = bitcast <16 x i1> %i.fy to i16          ; 2 uses
  %.not26.not = icmp eq i16 %i.fz, 0
  br i1 %.not26.not, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph
  %i.ga = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fz, i1 true)
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.02233, i64 %i.gb
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.gd = getelementptr inbounds nuw i8, ptr %.02233, i64 16 ; 3 uses
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = sub i64 %i.a, %i.ge
  %i.gg = icmp sgt i64 %i.gf, 15
  br i1 %i.gg, label %.lr.ph, label %.preheader

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.c
  %.22435 = phi ptr [ %i.gq, %bb.c ], [ %.022.lcssa, %.lr.ph36.preheader ] ; 3 uses
  %i.gh = load i8, ptr %.22435, align 1, !tbaa !17 ; 2 uses
  %i.gi = and i8 %i.gh, 3
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !12
  %i.gm = lshr i8 %i.gh, 2
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = and i64 %i.go, %i.gl
  %.not29 = icmp eq i64 %i.gp, 0
  br i1 %.not29, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph36
  %i.gq = getelementptr inbounds nuw i8, ptr %.22435, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.gq, %2
  br i1 %.not, label %.critedge, label %.lr.ph36, !llvm.loop !260

.critedge:                                        ; preds = %bb.c, %.lr.ph36, %.preheader, %.thread
  %.2 = phi ptr [ %i.gc, %.thread ], [ %.022.lcssa, %.preheader ], [ %scevgep, %bb.c ], [ %.22435, %.lr.ph36 ]
  ret ptr %.2
}

declare void @_ZN5boost4urls15pct_string_viewC2ENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5boost4urls6detail11host_rule_t5parseERPKcS4_(ptr dead_on_unwind noalias writable sret(%"class.boost::system::result.5") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.boost::system::result.286", align 8 ; 6 uses
  %6 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t.310", align 4 ; 4 uses
  %7 = alloca %"struct.std::array.103", align 4   ; 4 uses
  %8 = alloca %"class.boost::system::result.73", align 8 ; 7 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %10 = alloca %"class.boost::system::result.88", align 8 ; 8 uses
  %11 = alloca %"class.boost::system::result.35", align 8 ; 6 uses
  %12 = alloca %"class.boost::system::result.35", align 8 ; 8 uses
  %13 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !16     ; 12 uses
  %i.b = icmp eq ptr %i.a, %3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8
  %.sroa.1577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1577.0..sroa_idx, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.c, align 8, !tbaa !54
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !17
  %i.e = icmp eq i8 %i.d, 91
  br i1 %i.e, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZNK5boost4urls6detail17ip_literal_rule_t5parseERPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.73") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4urls6detailL15ip_literal_ruleE, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #22
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !73    ; 2 uses
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.i = icmp eq i8 %i.g, 2
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 24, i1 false), !tbaa.struct !74
  br label %_ZNKR5boost6system6resultINS_4urls6detail17ip_literal_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !269
  br label %_ZNKR5boost6system6resultINS_4urls6detail17ip_literal_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultINS_4urls6detail17ip_literal_rule_t10value_typeENS0_10error_codeEE5errorEv.exit: ; preds = %bb.f, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !74
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.j, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %.sroa.058.0.copyload = load i8, ptr %8, align 8, !tbaa !60
  %i.k = trunc nuw i8 %.sroa.058.0.copyload to i1
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.l = load ptr, ptr %2, align 8, !tbaa !16
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  store i32 3, ptr %0, align 8
  %.sroa.1577.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.1577.0..sroa_idx78, align 8
  %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx78.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx78.sroa_idx, align 8
  %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx78.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx78.sroa_idx, align 8
  %.sroa.27.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load <2 x i64>, ptr %.sroa.459.0..sroa_idx, align 1
  store <2 x i64> %i.p, ptr %.sroa.27.0..sroa_idx87, align 8
  %.sroa.30.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30.0..sroa_idx107, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.q, align 8, !tbaa !54
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %2, align 8, !tbaa !16
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.a to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  store i32 4, ptr %0, align 8
  %.sroa.1577.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.1577.0..sroa_idx79, align 8
  %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx79.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx79.sroa_idx, align 8
  %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx79.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx79.sroa_idx, align 8
  %.sroa.27.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.0..sroa_idx89, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.v, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNKR5boost6system6resultINS_4urls6detail17ip_literal_rule_t10value_typeENS0_10error_codeEE5errorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.x

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !272
  store i32 3026478, ptr %6, align 4, !noalias !272
  call void @_ZNK5boost4urls7grammar22implementation_defined12tuple_rule_tINS2_16dec_octet_rule_tEJNS2_14squelch_rule_tINS2_13ch_delim_ruleEEES4_S7_S4_S7_S4_EE5parseERPKcSA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.286") align 8 %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3), !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !272
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !76, !noalias !272
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !272
  store ptr %i.a, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN5boost4urls6detail13parse_encodedINS0_7grammar9lut_charsEEENS_6system6resultINS0_15pct_string_viewENS5_10error_codeEEERPKcSB_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.35") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5boost4urls6detailL13reg_name_ruleE) #22
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !67   ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.v, label %bb.s

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !272
  %i.ac = load <4 x i8>, ptr %5, align 8, !tbaa !17, !noalias !272
  %i.ad = shufflevector <4 x i8> %i.ac, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ad, ptr %7, align 4, !tbaa !17, !noalias !272
  call void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(4) %10, ptr noundef nonnull align 1 dereferenceable(4) %7) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !78, !alias.scope !272
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !272
  %i.af = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN5boost4urls6detail13parse_encodedINS0_7grammar9lut_charsEEENS_6system6resultINS0_15pct_string_viewENS5_10error_codeEEERPKcSB_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.35") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5boost4urls6detailL13reg_name_ruleE) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !67
  %i.ai = icmp ne i8 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ak, 0
  %or.cond = select i1 %i.ai, i1 true, i1 %i.al
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !52
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !16
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.an                    ; 2 uses
  store i32 1, ptr %0, align 8
  %.sroa.1577.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.1577.0..sroa_idx80, align 8
  %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx80.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx80.sroa_idx, align 8
  %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx80.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ar, ptr %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx80.sroa_idx, align 8
  %.sroa.27.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.30.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx91, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.sroa.30.0..sroa_idx109, align 8
  %.sroa.30.sroa.12.0..sroa.30.0..sroa_idx109.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.au, ptr %.sroa.30.sroa.12.0..sroa.30.0..sroa_idx109.sroa_idx, align 8
  %.sroa.30.sroa.13.0..sroa.30.0..sroa_idx109.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ar, ptr %.sroa.30.sroa.13.0..sroa.30.0..sroa_idx109.sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.av, align 8, !tbaa !54
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.af, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr @.str.12, ptr %4, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.ax, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 324, ptr %i.ay, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 17, ptr %i.az, align 4, !tbaa !49
  %i.ba = load i8, ptr %i.aw, align 8, !tbaa !78
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %4) #24
          to label %.noexc42 unwind label %bb.y

.noexc42:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bc = call i32 @_ZNK5boost4urls12ipv4_address8to_bytesEv(ptr noundef nonnull align 4 dereferenceable(4) %10) #22
  %i.bd = load ptr, ptr %2, align 8, !tbaa !16
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.a to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  store i32 2, ptr %0, align 8
  %.sroa.1577.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.1577.0..sroa_idx81, align 8
  %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx81.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bg, ptr %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx81.sroa_idx, align 8
  %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx81.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bg, ptr %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx81.sroa_idx, align 8
  %.sroa.27.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.27.sroa.0.0.insert.ext153 = zext i32 %i.bc to i64
  store i64 %.sroa.27.sroa.0.0.insert.ext153, ptr %.sroa.27.0..sroa_idx93, align 8
  %.sroa.29.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.29.0..sroa_idx103, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.bh, align 8, !tbaa !54
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.x

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.bi = icmp eq i8 %i.aa, 2
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 24, i1 false), !tbaa.struct !74
  br label %_ZNKR5boost6system6resultINS_4urls15pct_string_viewENS0_10error_codeEE5errorEv.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !273
  br label %_ZNKR5boost6system6resultINS_4urls15pct_string_viewENS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultINS_4urls15pct_string_viewENS0_10error_codeEE5errorEv.exit: ; preds = %bb.t, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !74
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.bj, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.w

bb.v:                                             ; preds = %bb.m
  %.sroa.30.sroa.0.0.copyload118 = load ptr, ptr %12, align 8 ; 2 uses
  %.sroa.30.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.30.sroa.12.0.copyload125 = load i64, ptr %.sroa.30.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.30.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.30.sroa.13.0.copyload132 = load i64, ptr %.sroa.30.sroa.13.0..sroa_idx, align 8 ; 2 uses
  store i32 1, ptr %0, align 8
  %.sroa.1577.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.30.sroa.0.0.copyload118, ptr %.sroa.1577.0..sroa_idx82, align 8
  %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx82.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.30.sroa.12.0.copyload125, ptr %.sroa.1577.sroa.14.0..sroa.1577.0..sroa_idx82.sroa_idx, align 8
  %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx82.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.30.sroa.13.0.copyload132, ptr %.sroa.1577.sroa.18.0..sroa.1577.0..sroa_idx82.sroa_idx, align 8
  %.sroa.27.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.30.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx95, i8 0, i64 16, i1 false)
  store ptr %.sroa.30.sroa.0.0.copyload118, ptr %.sroa.30.0..sroa_idx111, align 8
  %.sroa.30.sroa.12.0..sroa.30.0..sroa_idx111.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.30.sroa.12.0.copyload125, ptr %.sroa.30.sroa.12.0..sroa.30.0..sroa_idx111.sroa_idx, align 8
  %.sroa.30.sroa.13.0..sroa.30.0..sroa_idx111.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.30.sroa.13.0.copyload132, ptr %.sroa.30.sroa.13.0..sroa.30.0..sroa_idx111.sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.bk, align 8, !tbaa !54
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNKR5boost6system6resultINS_4urls15pct_string_viewENS0_10error_codeEE5errorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.k, %bb.w, %bb.b
  ret void

bb.y:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEERPKcSC_RKS7_(ptr dead_on_unwind noalias writable sret(%"class.boost::system::result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::result.286", align 8 ; 6 uses
  %5 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t.310", align 4 ; 4 uses
  %6 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %7 = alloca %"struct.std::array.103", align 4   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !278
  store i32 3026478, ptr %5, align 4, !noalias !278
  call void @_ZNK5boost4urls7grammar22implementation_defined12tuple_rule_tINS2_16dec_octet_rule_tEJNS2_14squelch_rule_tINS2_13ch_delim_ruleEEES4_S7_S4_S7_S4_EE5parseERPKcSA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.286") align 8 %4, ptr noundef nonnull align 1 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !278
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76, !noalias !278 ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = icmp eq i8 %i.b, 2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 24, i1 false), !tbaa.struct !74, !noalias !278
  br label %_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !alias.scope !279, !noalias !278
  br label %_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv.exit.i

_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.e, align 8, !tbaa !78, !alias.scope !278
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !278
  %i.f = load <4 x i8>, ptr %4, align 8, !tbaa !17, !noalias !278
  %i.g = shufflevector <4 x i8> %i.f, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.g, ptr %7, align 4, !tbaa !17, !noalias !278
  call void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(4) %7) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.h, align 8, !tbaa !78, !alias.scope !278
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !278
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit: ; preds = %_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !278
  ret void
}

; Function Attrs: nounwind
declare i32 @_ZNK5boost4urls12ipv4_address8to_bytesEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNR5boost6system6resultINS_4urls15pct_string_viewENS0_10error_codeEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr @.str.12, ptr %1, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.28, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 348, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 16, ptr %i.c, align 4, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !67
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_ZNR5boost6system6resultINS_4urls15pct_string_viewENS0_10error_codeEE5valueERKNS_15source_locationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  unreachable

_ZNR5boost6system6resultINS_4urls15pct_string_viewENS0_10error_codeEE5valueERKNS_15source_locationE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5boost4urls6detail17ip_literal_rule_t5parseERPKcS4_(ptr dead_on_unwind noalias writable sret(%"class.boost::system::result.73") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::result.138", align 8 ; 7 uses
  %5 = alloca %"struct.std::is_same.215", align 1 ; 3 uses
  %6 = alloca %"struct.boost::urls::grammar::detail::parse_sequence.214", align 8 ; 7 uses
  %7 = alloca %"struct.std::integral_constant.70", align 1 ; 3 uses
  %8 = alloca %"struct.std::integral_constant.70", align 1 ; 3 uses
  %9 = alloca %"class.boost::system::result.119", align 8 ; 6 uses
  %.sroa.11 = alloca [23 x i8], align 1           ; 5 uses
  %10 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t", align 1 ; 6 uses
  %11 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t.153", align 1 ; 7 uses
  %.sroa.0 = alloca %"struct.boost::urls::detail::ipvfuture_rule_t::value_type", align 8 ; 5 uses
  %12 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t.174", align 1 ; 4 uses
  %13 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.sroa.11.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 7
  %.sroa.11.7..sroa_idx98 = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.11.7..sroa_idx98, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !16, !noalias !324 ; 3 uses
  %i.b = icmp eq ptr %i.a, %3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !325
  %i.d = and i64 %i.c, -2
  %switch.i.i.i.i.i.i = icmp eq i64 %i.d, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !325
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !325
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 1) #22, !noalias !325, !inline_history !0
  br i1 %i.h, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i, %bb.b
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i
  %i.i = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i ]
  %i.j = or disjoint i64 %i.i, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE__ to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.a, align 1, !tbaa !17, !noalias !324
  %.not.i.i = icmp eq i8 %i.k, 91
  br i1 %.not.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !326
  %i.m = and i64 %i.l, -2
  %switch.i.i.i.i5.i.i = icmp eq i64 %i.m, -5572340897628102704
  br i1 %switch.i.i.i.i5.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i: ; preds = %bb.d
  %i.n = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !326
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !noalias !326
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 2) #22, !noalias !326, !inline_history !0
  br i1 %i.q, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i, %bb.d
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i
  %i.r = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i ]
  %i.s = or disjoint i64 %i.r, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE___0 to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit: ; preds = %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i
  %.sroa.031.0.ph = phi i64 [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i ], [ 1, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i ]
  %.sink24.i.i.ph = phi i64 [ %i.s, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i ], [ %i.j, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i ]
  store i64 %.sroa.031.0.ph, ptr %0, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !17
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink24.i.i.ph, ptr %.sroa.635.0..sroa_idx, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.t, align 8, !tbaa !73
  br label %bb.ab

.critedge:                                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !16, !noalias !324
  %i.v = icmp eq ptr %i.u, %3
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !327
  %i.x = and i64 %i.w, -2
  %switch.i.i.i.i = icmp eq i64 %i.x, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.e
  %i.y = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !327
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !327
end_hunk_0
