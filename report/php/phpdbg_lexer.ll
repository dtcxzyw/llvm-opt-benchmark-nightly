Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_lexer?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_phpdbg_globals = type { [11 x %struct._zend_array], %struct._zend_array, %struct._zend_array, ptr, ptr, %struct.phpdbg_frame_t, i32, ptr, %struct.phpdbg_lexer_data, ptr, %struct.sigaction, i32, i64, %struct.phpdbg_btree, %struct.phpdbg_btree, %struct._zend_array, %struct._zend_array, %struct._zend_array, %struct._zend_array, ptr, ptr, ptr, i8, ptr, ptr, ptr, i64, ptr, %struct._zval_struct, i32, i32, i8, i8, ptr, ptr, ptr, %struct._zend_array, ptr, ptr, ptr, [3 x %struct.anon.8], ptr, %struct.anon.9, i64, [2 x ptr], [3 x ptr], ptr, i8, ptr, ptr, [500 x i8], i32, %struct.phpdbg_signal_safe_mem, ptr, i64, ptr, i64 }
%struct.phpdbg_frame_t = type { i32, ptr, ptr }
%struct.phpdbg_lexer_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.sigaction = type { %union.anon.2, %struct.__sigset_t, i32, ptr }
%union.anon.2 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.phpdbg_btree = type { i64, i64, i8, ptr }
%struct._zval_struct = type { %union._zend_value, %union.anon.4, %union.anon.7 }
%union._zend_value = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.7 = type { i32 }
%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.0, i32, %union.anon.1, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { ptr }
%struct.anon.8 = type { i32 }
%struct.anon.9 = type { i8, i32, i32, ptr, i32 }
%struct.phpdbg_signal_safe_mem = type { ptr, i8, ptr, ptr }

@phpdbg_globals = external local_unnamed_addr global %struct._zend_phpdbg_globals, align 8
@phpdbg_lex.yybm_NORMAL = internal unnamed_addr constant [512 x i8] c"\00>>>>>>>>(\00>>(>>>>>>>>>>>>>>>>>>(>2(>>>\0E>>>>>>?>\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F(>>>>>>\FE\FE\FE\FE\FE\FE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE>\02>>\BE>\FE\FE\FE\FE\FE\FE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\00@@@@@@@@\80\00@@\80@@@@@@@@@@@@@@@@@@\80@\00\00@@@\00@@@@@@@@@@@@@@@@@@\00@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", align 16
@phpdbg_lex.yybm_PRE_RAW = internal unnamed_addr constant <{ [58 x i8], [198 x i8] }> <{ [58 x i8] c"\00\00\00\00\00\00\00\00\00@\00\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\80\80\80\80\80\80\80\80\80\80", [198 x i8] zeroinitializer }>, align 16
@phpdbg_lex.yybm_RAW = internal unnamed_addr constant [256 x i8] c"\00\F7\F7\F7\F7\F7\F7\F7\F7\F7\00\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\94F\F7\F7\F7\A2\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\08\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7", align 16
@phpdbg_lex.yybm_INITIAL = internal unnamed_addr constant <{ [33 x i8], [223 x i8] }> <{ [33 x i8] c"\00\00\00\00\00\00\00\00\00\80\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", [223 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @phpdbg_init_lexer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !46
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 824), align 8, !tbaa !42
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 800), align 8, !tbaa !43
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 792), align 8, !tbaa !44
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6
  %i.b = trunc i64 %i.a to i32
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 784), align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 278) i32 @phpdbg_lex(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %.promoted1183 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 800), align 8, !tbaa !43
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 824), align 8, !tbaa !42
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.promoted12021371.ph = phi ptr [ %.promoted1183, %bb.a ], [ %.promoted12021371.ph.be, %.outer.backedge ] ; 122 uses
  %.ph2032 = phi i32 [ %.promoted, %bb.a ], [ %.ph2032.be, %.outer.backedge ]
  store ptr %.promoted12021371.ph, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 792), align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 2 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 4 uses
  %i.k = ptrtoint ptr %.promoted12021371.ph to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 2 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 4 uses
  %i.p = ptrtoint ptr %.promoted12021371.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %i.q = phi i32 [ %.ph2032, %.outer ], [ %.be2033, %.backedge ] ; 5 uses
  %i.r = icmp slt i32 %i.q, 2
  %i.s = load i8, ptr %.promoted12021371.ph, align 1, !tbaa !51 ; 24 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not976 = icmp eq i32 %i.q, 1
  br i1 %.not976, label %bb.hn, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.q, 2
  br i1 %i.t, label %bb.id, label %bb.ju

bb.e:                                             ; preds = %bb.c
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr @phpdbg_lex.yybm_NORMAL, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  %i.x = load i8, ptr %i.w, align 1, !tbaa !51
  %.not983 = icmp sgt i8 %i.x, -1
  br i1 %.not983, label %bb.f, label %.preheader1106

bb.f:                                             ; preds = %bb.e
  switch i8 %i.s, label %.loopexit1045 [
    i8 0, label %bb.g
    i8 9, label %bb.g
    i8 10, label %bb.g
    i8 34, label %bb.o
    i8 35, label %bb.s
    i8 39, label %bb.z
    i8 45, label %bb.ac
    i8 46, label %.preheader1047.preheader
    i8 49, label %.preheader1047.preheader
    i8 50, label %.preheader1047.preheader
    i8 51, label %.preheader1047.preheader
    i8 52, label %.preheader1047.preheader
    i8 53, label %.preheader1047.preheader
    i8 54, label %.preheader1047.preheader
    i8 55, label %.preheader1047.preheader
    i8 56, label %.preheader1047.preheader
    i8 57, label %.preheader1047.preheader
    i8 48, label %bb.ao
    i8 58, label %bb.aw
    i8 68, label %bb.ax
    i8 100, label %bb.ax
    i8 69, label %bb.ay
    i8 101, label %bb.ay
    i8 70, label %bb.az
    i8 102, label %bb.az
    i8 73, label %bb.ba
    i8 105, label %bb.ba
    i8 78, label %bb.bb
    i8 110, label %bb.bb
    i8 79, label %bb.bc
    i8 111, label %bb.bc
    i8 84, label %bb.bh
    i8 116, label %bb.bh
    i8 89, label %bb.bi
    i8 121, label %bb.bi
    i8 90, label %bb.bj
    i8 122, label %bb.bk
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 800), align 8, !tbaa !43
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 784), align 8, !tbaa !45
  br label %bb.lm

.loopexit1045:                                    ; preds = %bb.fm, %bb.fg, %bb.hk, %bb.hf, %bb.fu, %bb.fk, %bb.fj, %bb.ah, %bb.he, %bb.ft, %bb.ag, %bb.hj, %bb.hh, %bb.ga, %bb.fy, %bb.fw, %bb.fo, %bb.fi, %bb.an, %bb.al, %bb.aj, %bb.h, %bb.f
  %i.z = phi ptr [ %.promoted12021371.ph, %bb.f ], [ %i.od, %bb.fg ], [ %i.tx, %bb.hk ], [ %i.tx, %bb.hf ], [ %i.pf, %bb.fu ], [ %i.oh, %bb.fk ], [ %i.od, %bb.fj ], [ %i.dl, %bb.ah ], [ %i.tx, %bb.he ], [ %i.pf, %bb.ft ], [ %i.dl, %bb.ag ], [ %i.tx, %bb.hj ], [ %i.tx, %bb.hh ], [ %i.pf, %bb.ga ], [ %i.pf, %bb.fy ], [ %i.pf, %bb.fw ], [ %i.oh, %bb.fo ], [ %i.od, %bb.fi ], [ %i.dl, %bb.an ], [ %i.dl, %bb.al ], [ %i.dl, %bb.aj ], [ %i.ac, %bb.h ], [ %i.oh, %bb.fm ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 4 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 800), align 8, !tbaa !43
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 808), align 8, !tbaa !52
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.ei, %bb.ee, %bb.ff, %bb.ej, %bb.ef, %bb.ec, %bb.dj, %bb.bd, %bb.au, %bb.hm, %bb.hb, %bb.ha, %bb.gy, %bb.gx, %bb.gv, %bb.gu, %bb.gt, %bb.gl, %bb.gf, %bb.ge, %bb.gd, %bb.el, %bb.ek, %bb.eg, %bb.dz, %bb.dy, %bb.dx, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.ar, %bb.gz, %bb.gw, %bb.gn, %bb.gm, %bb.en, %bb.em, %bb.eb, %bb.do, %bb.dn, %bb.dl, %bb.di, %bb.bk, %bb.bj, %bb.bg, %bb.bf, %bb.av, %bb.as, %bb.ad, %.loopexit1045
  %i.ac = phi ptr [ %i.aa, %.loopexit1045 ], [ %i.js, %bb.di ], [ %i.js, %bb.dj ], [ %i.js, %bb.dl ], [ %i.nu, %bb.ff ], [ %i.js, %bb.dn ], [ %i.dd, %bb.ad ], [ %i.ej, %bb.ar ], [ %i.ej, %bb.as ], [ %i.ej, %bb.au ], [ %i.ke, %bb.do ], [ %i.ej, %bb.av ], [ %i.li, %bb.ee ], [ %i.li, %bb.ef ], [ %i.uv, %bb.hm ], [ %i.tq, %bb.ha ], [ %i.tf, %bb.gx ], [ %i.st, %bb.gt ], [ %i.qf, %bb.gd ], [ %i.ku, %bb.dx ], [ %i.ex, %bb.ax ], [ %i.lp, %bb.ei ], [ %i.lp, %bb.ej ], [ %i.tt, %bb.hb ], [ %i.ti, %bb.gy ], [ %i.sw, %bb.gu ], [ %i.qi, %bb.ge ], [ %i.kx, %bb.dy ], [ %i.fa, %bb.ay ], [ %i.sz, %bb.gv ], [ %i.ql, %bb.gf ], [ %i.la, %bb.dz ], [ %i.fd, %bb.az ], [ %i.ld, %bb.eb ], [ %i.ld, %bb.ec ], [ %i.fg, %bb.ba ], [ %i.fj, %bb.bb ], [ %i.ll, %bb.eg ], [ %i.fm, %bb.bd ], [ %i.fm, %bb.bf ], [ %i.fm, %bb.bg ], [ %i.rj, %bb.gl ], [ %i.ls, %bb.ek ], [ %i.fr, %bb.bh ], [ %i.lv, %bb.el ], [ %i.fu, %bb.bi ], [ %i.tl, %bb.gz ], [ %i.tc, %bb.gw ], [ %i.rm, %bb.gm ], [ %i.ly, %bb.em ], [ %i.fx, %bb.bj ], [ %i.rp, %bb.gn ], [ %i.mb, %bb.en ], [ %i.ga, %bb.bk ] ; 5 uses
  %.0862 = phi i8 [ %i.ab, %.loopexit1045 ], [ %i.jt, %bb.di ], [ %i.jt, %bb.dj ], [ %i.jt, %bb.dl ], [ %i.nv, %bb.ff ], [ %i.jt, %bb.dn ], [ %i.de, %bb.ad ], [ %i.ek, %bb.ar ], [ %i.ek, %bb.as ], [ %i.ek, %bb.au ], [ %i.kf, %bb.do ], [ %i.ek, %bb.av ], [ %i.lj, %bb.ee ], [ %i.lj, %bb.ef ], [ %i.uw, %bb.hm ], [ %i.tr, %bb.ha ], [ %i.tg, %bb.gx ], [ %i.su, %bb.gt ], [ %i.qg, %bb.gd ], [ %i.kv, %bb.dx ], [ %i.ey, %bb.ax ], [ %i.lq, %bb.ei ], [ %i.lq, %bb.ej ], [ %i.tu, %bb.hb ], [ %i.tj, %bb.gy ], [ %i.sx, %bb.gu ], [ %i.qj, %bb.ge ], [ %i.ky, %bb.dy ], [ %i.fb, %bb.ay ], [ %i.ta, %bb.gv ], [ %i.qm, %bb.gf ], [ %i.lb, %bb.dz ], [ %i.fe, %bb.az ], [ %i.le, %bb.eb ], [ %i.le, %bb.ec ], [ %i.fh, %bb.ba ], [ %i.fk, %bb.bb ], [ %i.lm, %bb.eg ], [ %i.fn, %bb.bd ], [ %i.fn, %bb.bf ], [ %i.fn, %bb.bg ], [ %i.rk, %bb.gl ], [ %i.lt, %bb.ek ], [ %i.fs, %bb.bh ], [ %i.lw, %bb.el ], [ %i.fv, %bb.bi ], [ %i.tm, %bb.gz ], [ %i.td, %bb.gw ], [ %i.rn, %bb.gm ], [ %i.lz, %bb.em ], [ %i.fy, %bb.bj ], [ %i.rq, %bb.gn ], [ %i.mc, %bb.en ], [ %i.gb, %bb.bk ] ; 4 uses
  %.0860 = phi i32 [ 0, %.loopexit1045 ], [ 0, %bb.di ], [ 0, %bb.dj ], [ 0, %bb.dl ], [ 0, %bb.ff ], [ 0, %bb.dn ], [ 0, %bb.ad ], [ 3, %bb.ar ], [ 3, %bb.as ], [ 3, %bb.au ], [ 0, %bb.do ], [ 3, %bb.av ], [ 0, %bb.ee ], [ 0, %bb.ef ], [ 0, %bb.hm ], [ 0, %bb.ha ], [ 0, %bb.gx ], [ 0, %bb.gt ], [ 0, %bb.gd ], [ 0, %bb.dx ], [ 0, %bb.ax ], [ 0, %bb.ei ], [ 0, %bb.ej ], [ 0, %bb.hb ], [ 0, %bb.gy ], [ 0, %bb.gu ], [ 0, %bb.ge ], [ 0, %bb.dy ], [ 0, %bb.ay ], [ 0, %bb.gv ], [ 0, %bb.gf ], [ 0, %bb.dz ], [ 0, %bb.az ], [ 0, %bb.eb ], [ 0, %bb.ec ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.eg ], [ 0, %bb.bd ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 0, %bb.gl ], [ 0, %bb.ek ], [ 0, %bb.bh ], [ 0, %bb.el ], [ 0, %bb.bi ], [ 0, %bb.gz ], [ 0, %bb.gw ], [ 0, %bb.gm ], [ 0, %bb.em ], [ 0, %bb.bj ], [ 0, %bb.gn ], [ 0, %bb.en ], [ 0, %bb.bk ] ; 2 uses
  %i.ad = zext i8 %.0862 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @phpdbg_lex.yybm_NORMAL, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !51
  %i.ah = and i8 %i.ag, 64
  %.not1006 = icmp eq i8 %i.ah, 0
  br i1 %.not1006, label %bb.i, label %.loopexit1045

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp ult i8 %.0862, 33
  %i.aj = icmp eq i8 %.0862, 35
  %or.cond = or i1 %i.ai, %i.aj
  br i1 %or.cond, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ult i8 %.0862, 40
  br i1 %i.ak, label %.loopexit1030, label %bb.bu

.loopexit:                                        ; preds = %bb.dw, %bb.dt, %bb.dt, %bb.dv, %bb.ds, %bb.eu, %bb.et, %bb.er, %bb.eq, %bb.bp, %bb.i, %bb.ev
  %i.al = phi ptr [ %i.my, %bb.ev ], [ %i.mo, %bb.eu ], [ %i.mo, %bb.et ], [ %i.mo, %bb.er ], [ %i.mo, %bb.eq ], [ %i.gr, %bb.bp ], [ %i.ac, %bb.i ], [ %i.km, %bb.ds ], [ %i.km, %bb.dv ], [ %i.km, %bb.dt ], [ %i.km, %bb.dt ], [ %i.km, %bb.dw ]
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 792), align 8, !tbaa !44 ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.am, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 784), align 8, !tbaa !45
  store i32 5, ptr %0, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i8 0, i64 80, i1 false)
  %i.au = load i8, ptr %i.an, align 1, !tbaa !51  ; 2 uses
  switch i8 %i.au, label %unescape_string.exit [
    i8 39, label %bb.k
    i8 34, label %bb.k
  ]

bb.k:                                             ; preds = %.loopexit, %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.av = phi i8 [ %.pre.i, %bb.k ], [ %i.bc, %bb.l ]
  %.012.i = phi ptr [ %i.an, %bb.k ], [ %i.ba, %bb.l ] ; 3 uses
  %.0.i = phi i64 [ 1, %bb.k ], [ %spec.select.i, %bb.l ]
  %i.aw = icmp eq i8 %i.av, 92
  %i.ax = zext i1 %i.aw to i64
  %spec.select.i = add i64 %.0.i, %i.ax           ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i, i64 %spec.select.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !51
  store i8 %i.az, ptr %.012.i, align 1, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %spec.select.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !51  ; 2 uses
  %.not.i = icmp eq i8 %i.bc, %i.au
  br i1 %.not.i, label %bb.m, label %bb.l, !llvm.loop !47

bb.m:                                             ; preds = %bb.l
  %.neg = xor i64 %spec.select.i, 4294967295
  %.pre1392 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 792), align 8, !tbaa !44
  br label %unescape_string.exit

unescape_string.exit:                             ; preds = %.loopexit, %bb.m
  %i.bd = phi ptr [ %.pre1392, %bb.m ], [ %i.an, %.loopexit ]
  %.013.i.neg = phi i64 [ %.neg, %bb.m ], [ 0, %.loopexit ]
  %i.be = add i64 %.013.i.neg, %i.ap
  %i.bf = and i64 %i.be, 4294967295               ; 2 uses
  %i.bg = tail call noalias ptr @_estrndup(ptr noundef %i.bd, i64 noundef %i.bf) #7
  store ptr %i.bg, ptr %i.as, align 8, !tbaa !58
  store i64 %i.bf, ptr %i.at, align 8, !tbaa !59
  br label %bb.lm

.preheader1106:                                   ; preds = %bb.e, %.preheader1106
  %i.bh = phi ptr [ %i.bi, %.preheader1106 ], [ %.promoted12021371.ph, %bb.e ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 5 uses
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 800), align 8, !tbaa !43
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @phpdbg_lex.yybm_NORMAL, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 256
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !51
  %.not1009 = icmp sgt i8 %i.bn, -1
  br i1 %.not1009, label %bb.n, label %.preheader1106

bb.n:                                             ; preds = %.preheader1106
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = ptrtoint ptr %.promoted12021371.ph to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 784), align 8, !tbaa !45
  br label %.outer.backedge

bb.o:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.promoted12021371.ph, i64 1 ; 23 uses
  store ptr %i.bs, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 800), align 8, !tbaa !43
  store ptr %i.bs, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 808), align 8, !tbaa !52
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !51  ; 4 uses
  %i.bu = icmp ult i8 %i.bt, 11
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  switch i8 %i.bt, label %.preheader1027.preheader [
    i8 10, label %bb.r
    i8 0, label %bb.r
  ]

.preheader1027.preheader:                         ; preds = %bb.q, %bb.p
  br label %.preheader1027

bb.q:                                             ; preds = %bb.o
  %i.bv = icmp eq i8 %i.bt, 34
  br i1 %i.bv, label %.loopexit1030, label %.preheader1027.preheader

bb.r:                                             ; preds = %._crit_edge1390, %bb.aa, %bb.aa, %bb.p, %bb.p
  %i.bw = phi ptr [ %.promoted12021371.ph, %bb.aa ], [ %.promoted12021371.ph, %bb.aa ], [ %.promoted12021371.ph, %bb.p ], [ %.promoted12021371.ph, %bb.p ], [ %.pre1391, %._crit_edge1390 ] ; 2 uses
  %i.bx = phi ptr [ %i.cz, %bb.aa ], [ %i.cz, %bb.aa ], [ %i.bs, %bb.p ], [ %i.bs, %bb.p ], [ %i.gr, %._crit_edge1390 ]
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 784), align 8, !tbaa !45
  store i32 5, ptr %0, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = and i64 %i.ca, 4294967295
end_hunk_0
