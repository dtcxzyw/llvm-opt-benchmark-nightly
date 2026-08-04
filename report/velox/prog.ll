inline.NumInlined: 1564
inline.NumDeleted: 717
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3re24Prog20PrefixAccel_ShiftDFAEPKvm:bb.a
bb.n:                                             ; preds = %bb.m
  %i.cq = sub i64 0, %i.b
  %i.cr = getelementptr inbounds i8, ptr %i.bp, i64 %i.cq
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.cs = sub i64 54, %i.bg
  %i.ct = and i64 %i.cs, 63
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cv = sub i64 0, %i.b
  %i.cw = getelementptr inbounds i8, ptr %i.bq, i64 %i.cv
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.cx = sub i64 54, %i.bi
  %i.cy = and i64 %i.cx, 63
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.da = sub i64 0, %i.b
  %i.db = getelementptr inbounds i8, ptr %i.br, i64 %i.da
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %.097, i64 8
  %i.dd = sub i64 0, %i.b
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  br label %.critedge

bb.t:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %.097, i64 8 ; 2 uses
  %.not100 = icmp eq ptr %i.df, %i.f
  br i1 %.not100, label %bb.u, label %bb.d, !llvm.loop !285

bb.u:                                             ; preds = %bb.t
  %i.dg = and i64 %2, 7
  %i.dh = and i64 %i.bk, 63
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.295 = phi i64 [ %i.dh, %bb.u ], [ 0, %bb.b ]
  %.188 = phi i64 [ %i.dg, %bb.u ], [ %2, %bb.b ] ; 7 uses
  %.186 = phi ptr [ %i.f, %bb.u ], [ %1, %bb.b ]  ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.not222 = icmp samesign eq i64 %.188, 0
  br i1 %.not222, label %.critedge, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %.not = icmp samesign eq i64 %.188, 1
  br i1 %.not, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.186, i64 2 ; 2 uses
  %i.dk = load i8, ptr %i.fl, align 1, !tbaa !10
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !10
  %i.dm = zext i8 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !158
  %i.dp = and i64 %i.fr, 63
  %i.dq = lshr i64 %i.do, %i.dp                   ; 2 uses
  %i.dr = and i64 %i.dq, 63
  %.not101.1 = icmp eq i64 %i.dr, 54
  br i1 %.not101.1, label %.thread105, label %bb.x

bb.x:                                             ; preds = %.lr.ph.1
  %.not.1 = icmp samesign eq i64 %.188, 2
  br i1 %.not.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %.186, i64 3 ; 2 uses
  %i.dt = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.du = load ptr, ptr %i.di, align 8, !tbaa !10
  %i.dv = zext i8 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !158
  %i.dy = and i64 %i.dq, 63
  %i.dz = lshr i64 %i.dx, %i.dy                   ; 2 uses
  %i.ea = and i64 %i.dz, 63
  %.not101.2 = icmp eq i64 %i.ea, 54
  br i1 %.not101.2, label %.thread105, label %bb.y

bb.y:                                             ; preds = %.lr.ph.2
  %.not.2 = icmp samesign eq i64 %.188, 3
  br i1 %.not.2, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %.186, i64 4 ; 2 uses
  %i.ec = load i8, ptr %i.ds, align 1, !tbaa !10
  %i.ed = load ptr, ptr %i.di, align 8, !tbaa !10
  %i.ee = zext i8 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !158
  %i.eh = and i64 %i.dz, 63
  %i.ei = lshr i64 %i.eg, %i.eh                   ; 2 uses
  %i.ej = and i64 %i.ei, 63
  %.not101.3 = icmp eq i64 %i.ej, 54
  br i1 %.not101.3, label %.thread105, label %bb.z

bb.z:                                             ; preds = %.lr.ph.3
  %.not.3 = icmp samesign eq i64 %.188, 4
  br i1 %.not.3, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %.186, i64 5 ; 2 uses
  %i.el = load i8, ptr %i.eb, align 1, !tbaa !10
  %i.em = load ptr, ptr %i.di, align 8, !tbaa !10
  %i.en = zext i8 %i.el to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !158
  %i.eq = and i64 %i.ei, 63
  %i.er = lshr i64 %i.ep, %i.eq                   ; 2 uses
  %i.es = and i64 %i.er, 63
  %.not101.4 = icmp eq i64 %i.es, 54
  br i1 %.not101.4, label %.thread105, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.4
  %.not.4 = icmp samesign eq i64 %.188, 5
  br i1 %.not.4, label %.critedge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.186, i64 6 ; 2 uses
  %i.eu = load i8, ptr %i.ek, align 1, !tbaa !10
  %i.ev = load ptr, ptr %i.di, align 8, !tbaa !10
  %i.ew = zext i8 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !158
  %i.ez = and i64 %i.er, 63
  %i.fa = lshr i64 %i.ey, %i.ez                   ; 2 uses
  %i.fb = and i64 %i.fa, 63
  %.not101.5 = icmp eq i64 %i.fb, 54
  br i1 %.not101.5, label %.thread105, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.5
  %.not.5 = icmp samesign eq i64 %.188, 6
  br i1 %.not.5, label %.critedge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %.186, i64 7
  %i.fd = load i8, ptr %i.et, align 1, !tbaa !10
  %i.fe = load ptr, ptr %i.di, align 8, !tbaa !10
  %i.ff = zext i8 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !158
  %i.fi = and i64 %i.fa, 63
  %i.fj = lshr i64 %i.fh, %i.fi
  %i.fk = and i64 %i.fj, 63
  %.not101.6 = icmp eq i64 %i.fk, 54
  br i1 %.not101.6, label %.thread105, label %.critedge

.lr.ph:                                           ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %.186, i64 1 ; 2 uses
  %i.fm = load i8, ptr %.186, align 1, !tbaa !10
  %i.fn = load ptr, ptr %i.di, align 8, !tbaa !10
  %i.fo = zext i8 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !158
  %i.fr = lshr i64 %i.fq, %.295                   ; 2 uses
  %i.fs = and i64 %i.fr, 63
  %.not101 = icmp eq i64 %i.fs, 54
  br i1 %.not101, label %.thread105, label %bb.w

.thread105:                                       ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa = phi ptr [ %i.fl, %.lr.ph ], [ %i.dj, %.lr.ph.1 ], [ %i.ds, %.lr.ph.2 ], [ %i.eb, %.lr.ph.3 ], [ %i.ek, %.lr.ph.4 ], [ %i.et, %.lr.ph.5 ], [ %i.fc, %.lr.ph.6 ]
  %i.ft = sub i64 0, %i.b
  %i.fu = getelementptr inbounds i8, ptr %.lcssa, i64 %i.ft
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %.lr.ph.6, %bb.v, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.s, %.thread105, %bb.a
  %.7 = phi ptr [ null, %bb.a ], [ %i.bx, %bb.f ], [ %i.fu, %.thread105 ], [ %i.de, %bb.s ], [ %i.db, %bb.r ], [ %i.cw, %bb.p ], [ %i.cr, %bb.n ], [ %i.cm, %bb.l ], [ %i.ch, %bb.j ], [ %i.cc, %bb.h ], [ null, %bb.v ], [ null, %.lr.ph.6 ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ]
  ret ptr %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN3re24Prog24PrefixAccel_FrontAndBackEPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = icmp ult i64 %2, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.neg63 = add i64 %2, 1
  %i.d = sub i64 %.neg63, %i.b                    ; 4 uses
  %i.e = icmp ugt i64 %i.d, 31
  br i1 %i.e, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %i.h = lshr i64 %i.d, 5
  %i.i = getelementptr [32 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %i.j, align 8, !tbaa !10     ; 2 uses
  %4 = trunc i32 %3 to i8
  %5 = insertelement <32 x i8> poison, i8 %4, i64 0
  %6 = shufflevector <32 x i8> %5, <32 x i8> poison, <32 x i32> zeroinitializer
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %7, align 4, !tbaa !10
  %8 = trunc i32 %i.k to i8
  %9 = insertelement <32 x i8> poison, i8 %8, i64 0
  %10 = shufflevector <32 x i8> %9, <32 x i8> poison, <32 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.047 = phi ptr [ %i.g, %bb.c ], [ %i.v, %bb.e ] ; 2 uses
  %.046 = phi ptr [ %1, %bb.c ], [ %i.u, %bb.e ]  ; 3 uses
  %i.l = load <32 x i8>, ptr %.046, align 1, !tbaa !10
  %i.m = load <32 x i8>, ptr %.047, align 1, !tbaa !10
  %i.n = icmp eq <32 x i8> %6, %i.l               ; 2 uses
  %i.o = sext <32 x i1> %i.n to <32 x i8>
  %i.p = bitcast <32 x i8> %i.o to <4 x i64>
  %i.q = icmp eq <32 x i8> %10, %i.m              ; 2 uses
  %i.r = sext <32 x i1> %i.q to <32 x i8>
  %i.s = bitcast <32 x i8> %i.r to <4 x i64>
  %i.t = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.p, <4 x i64> %i.s)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.046, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %.not55 = icmp eq ptr %i.u, %i.i
  br i1 %.not55, label %.thread58, label %bb.d, !llvm.loop !286

.thread58:                                        ; preds = %bb.e
  %i.w = and i64 %i.d, 31
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = select <32 x i1> %i.q, <32 x i1> %i.n, <32 x i1> zeroinitializer
  %i.y = bitcast <32 x i1> %i.x to i32
  %i.z = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.y, i1 true)
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.046, i64 %i.aa
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge, %.thread58
  %i.ac = phi i32 [ %3, %.thread58 ], [ %.pre, %._crit_edge ] ; 2 uses
  %.145 = phi i64 [ %i.w, %.thread58 ], [ %i.d, %._crit_edge ] ; 2 uses
  %.143 = phi ptr [ %i.i, %.thread58 ], [ %1, %._crit_edge ] ; 2 uses
  %i.ad = ptrtoint ptr %.143 to i64
  %.neg = add i64 %.145, %i.ad
  %i.ae = tail call noundef ptr @memchr(ptr noundef %.143, i32 noundef %i.ac, i64 noundef %.145) #27 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %i.ai = phi ptr [ %i.ae, %.lr.ph ], [ %i.ar, %bb.i ] ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.b
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = sext i8 %i.al to i32
  %i.an = icmp eq i32 %i.ah, %i.am
  br i1 %i.an, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %.neg, %i.ap
  %i.ar = tail call noundef ptr @memchr(ptr noundef nonnull %i.ao, i32 noundef %i.ac, i64 noundef %i.aq) #27 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.loopexit, label %bb.h, !llvm.loop !287

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.g, %bb.f, %bb.a
  %.2 = phi ptr [ %i.ab, %bb.f ], [ null, %bb.a ], [ null, %bb.g ], [ %i.ai, %bb.h ], [ null, %bb.i ]
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2024011619str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #2 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !112  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !117    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !105

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !10
  store i8 %i.t, ptr %i.s, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !10
  store i8 %i.x, ptr %i.w, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !10
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !117
  store i64 %.0, ptr %i.h, align 8, !tbaa !10
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPN3re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
end_hunk_0
