Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/merve?download=true
inline.NumInlined: 842
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN5lexer8CJSLexer5parseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.rr = select i1 %.not.i137, ptr %.lcssa232, ptr %.lcssa227 ; 4 uses
  br i1 %i.rq, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %bb.cx
  store i64 4294967300, ptr %i.qj, align 4
  %i.rs = load ptr, ptr %0, align 8               ; 4 uses
  %i.rt = icmp ult ptr %i.rr, %i.rs
  %spec.select.i.i138 = select i1 %i.rt, ptr %i.rs, ptr %i.rr ; 2 uses
  %i.ru = icmp ugt ptr %spec.select.i.i138, %.lcssa227
  %.126.i.i139 = select i1 %i.ru, ptr %.lcssa227, ptr %spec.select.i.i138 ; 3 uses
  %i.rv = icmp ult ptr %i.rs, %.126.i.i139
  br i1 %i.rv, label %.lr.ph.i.i143, label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140

.lr.ph.i.i143:                                    ; preds = %bb.cy, %bb.dd
  %.036.i.i144 = phi ptr [ %.2.i.i149, %bb.dd ], [ %i.rs, %bb.cy ] ; 3 uses
  %.02135.i.i145 = phi i32 [ %.122.i.i148, %bb.dd ], [ 1, %bb.cy ]
  %.02334.i.i146 = phi i32 [ %.124.i.i147, %bb.dd ], [ 1, %bb.cy ] ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.036.i.i144, i64 1 ; 6 uses
  %i.rx = load i8, ptr %.036.i.i144, align 1
  switch i8 %i.rx, label %bb.dc [
    i8 10, label %bb.cz
    i8 13, label %bb.da
  ]

bb.cz:                                            ; preds = %.lr.ph.i.i143
  %i.ry = add i32 %.02334.i.i146, 1
  br label %bb.dd, !llvm.loop !1

bb.da:                                            ; preds = %.lr.ph.i.i143
  %i.rz = add i32 %.02334.i.i146, 1               ; 2 uses
  %i.sa = icmp ult ptr %i.rw, %.126.i.i139
  br i1 %i.sa, label %bb.db, label %bb.dd, !llvm.loop !1

bb.db:                                            ; preds = %bb.da
  %i.sb = load i8, ptr %i.rw, align 1
  %i.sc = icmp eq i8 %i.sb, 10
  %i.sd = getelementptr inbounds nuw i8, ptr %.036.i.i144, i64 2
  %spec.select33.i.i151 = select i1 %i.sc, ptr %i.sd, ptr %i.rw
  br label %bb.dd, !llvm.loop !1

bb.dc:                                            ; preds = %.lr.ph.i.i143
  %i.se = add i32 %.02135.i.i145, 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz
  %.124.i.i147 = phi i32 [ %i.ry, %bb.cz ], [ %.02334.i.i146, %bb.dc ], [ %i.rz, %bb.da ], [ %i.rz, %bb.db ] ; 2 uses
  %.122.i.i148 = phi i32 [ 1, %bb.cz ], [ %i.se, %bb.dc ], [ 1, %bb.da ], [ 1, %bb.db ] ; 2 uses
  %.2.i.i149 = phi ptr [ %i.rw, %bb.cz ], [ %i.rw, %bb.dc ], [ %i.rw, %bb.da ], [ %spec.select33.i.i151, %bb.db ] ; 2 uses
  %i.sf = icmp ult ptr %.2.i.i149, %.126.i.i139
  br i1 %i.sf, label %.lr.ph.i.i143, label %._crit_edge.loopexit.i.i150

._crit_edge.loopexit.i.i150:                      ; preds = %bb.dd
  %i.sg = zext i32 %.122.i.i148 to i64
  %i.sh = shl nuw i64 %i.sg, 32
  %i.si = zext i32 %.124.i.i147 to i64
  %i.sj = or disjoint i64 %i.sh, %i.si
  br label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140

_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140: ; preds = %._crit_edge.loopexit.i.i150, %bb.cy
  %.sroa.0.0.insert.insert.i.i141 = phi i64 [ 4294967297, %bb.cy ], [ %i.sj, %._crit_edge.loopexit.i.i150 ]
  %i.sk = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE) ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 4, !range !10, !noundef !11
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155, label %bb.de

bb.de:                                            ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140
  store i8 1, ptr %i.sl, align 4
  br label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155

_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155: ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140, %bb.de
  store i64 %.sroa.0.0.insert.insert.i.i141, ptr %i.sk, align 4
  br label %.sink.split

bb.df:                                            ; preds = %bb.cx
  store i64 4294967299, ptr %i.qj, align 4
  %i.so = load ptr, ptr %0, align 8               ; 4 uses
  %i.sp = icmp ult ptr %i.rr, %i.so
  %spec.select.i.i157 = select i1 %i.sp, ptr %i.so, ptr %i.rr ; 2 uses
  %i.sq = icmp ugt ptr %spec.select.i.i157, %.lcssa227
  %.126.i.i158 = select i1 %i.sq, ptr %.lcssa227, ptr %spec.select.i.i157 ; 3 uses
  %i.sr = icmp ult ptr %i.so, %.126.i.i158
  br i1 %i.sr, label %.lr.ph.i.i162, label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159

.lr.ph.i.i162:                                    ; preds = %bb.df, %bb.dk
  %.036.i.i163 = phi ptr [ %.2.i.i168, %bb.dk ], [ %i.so, %bb.df ] ; 3 uses
  %.02135.i.i164 = phi i32 [ %.122.i.i167, %bb.dk ], [ 1, %bb.df ]
  %.02334.i.i165 = phi i32 [ %.124.i.i166, %bb.dk ], [ 1, %bb.df ] ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.036.i.i163, i64 1 ; 6 uses
  %i.st = load i8, ptr %.036.i.i163, align 1
  switch i8 %i.st, label %bb.dj [
    i8 10, label %bb.dg
    i8 13, label %bb.dh
  ]

bb.dg:                                            ; preds = %.lr.ph.i.i162
  %i.su = add i32 %.02334.i.i165, 1
  br label %bb.dk, !llvm.loop !1

bb.dh:                                            ; preds = %.lr.ph.i.i162
  %i.sv = add i32 %.02334.i.i165, 1               ; 2 uses
  %i.sw = icmp ult ptr %i.ss, %.126.i.i158
  br i1 %i.sw, label %bb.di, label %bb.dk, !llvm.loop !1

bb.di:                                            ; preds = %bb.dh
  %i.sx = load i8, ptr %i.ss, align 1
  %i.sy = icmp eq i8 %i.sx, 10
  %i.sz = getelementptr inbounds nuw i8, ptr %.036.i.i163, i64 2
  %spec.select33.i.i170 = select i1 %i.sy, ptr %i.sz, ptr %i.ss
  br label %bb.dk, !llvm.loop !1

bb.dj:                                            ; preds = %.lr.ph.i.i162
  %i.ta = add i32 %.02135.i.i164, 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg
  %.124.i.i166 = phi i32 [ %i.su, %bb.dg ], [ %.02334.i.i165, %bb.dj ], [ %i.sv, %bb.dh ], [ %i.sv, %bb.di ] ; 2 uses
  %.122.i.i167 = phi i32 [ 1, %bb.dg ], [ %i.ta, %bb.dj ], [ 1, %bb.dh ], [ 1, %bb.di ] ; 2 uses
  %.2.i.i168 = phi ptr [ %i.ss, %bb.dg ], [ %i.ss, %bb.dj ], [ %i.ss, %bb.dh ], [ %spec.select33.i.i170, %bb.di ] ; 2 uses
  %i.tb = icmp ult ptr %.2.i.i168, %.126.i.i158
  br i1 %i.tb, label %.lr.ph.i.i162, label %._crit_edge.loopexit.i.i169

._crit_edge.loopexit.i.i169:                      ; preds = %bb.dk
  %i.tc = zext i32 %.122.i.i167 to i64
  %i.td = shl nuw i64 %i.tc, 32
  %i.te = zext i32 %.124.i.i166 to i64
  %i.tf = or disjoint i64 %i.td, %i.te
  br label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159

_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159: ; preds = %._crit_edge.loopexit.i.i169, %bb.df
  %.sroa.0.0.insert.insert.i.i160 = phi i64 [ 4294967297, %bb.df ], [ %i.tf, %._crit_edge.loopexit.i.i169 ]
  %i.tg = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE) ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 2 uses
  %i.ti = load i8, ptr %i.th, align 4, !range !10, !noundef !11
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174, label %bb.dl

bb.dl:                                            ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159
  store i8 1, ptr %i.th, align 4
  br label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174

_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174: ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159, %bb.dl
  store i64 %.sroa.0.0.insert.insert.i.i160, ptr %i.tg, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit, %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174, %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155
  %i.tk = getelementptr inbounds nuw i8, ptr %.lcssa227, i64 1
  store ptr %i.tk, ptr %i.b, align 8
  br label %.thread208

.thread208.sink.split.loopexit328:                ; preds = %bb.k
  br label %.thread208.sink.split

.thread208.sink.split:                            ; preds = %bb.cm, %bb.bj, %bb.k, %.thread208.sink.split.loopexit328
  %.sink = phi i32 [ 1, %bb.k ], [ 5, %bb.bj ], [ 12, %bb.cm ], [ 2, %.thread208.sink.split.loopexit328 ]
  tail call void @_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc(ptr noundef nonnull align 8 dereferenceable(32848) %0, i32 noundef %.sink, ptr noundef null)
  br label %.thread208

.thread208:                                       ; preds = %._crit_edge, %.sink.split, %.thread208.sink.split, %bb.cw, %bb.d
  %.037 = phi i1 [ false, %.thread208.sink.split ], [ true, %bb.cw ], [ true, %bb.d ], [ false, %.sink.split ], [ false, %._crit_edge ]
  ret i1 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZN5lexer14get_last_errorEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer10last_errorE)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN5lexer23get_last_error_locationEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @merve_parse_commonjs(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::optional.18", align 16 ; 11 uses
  %4 = alloca %"class.std::optional.18", align 16 ; 11 uses
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not.i, label %_ZL21merve_error_loc_clearP15merve_error_loc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  br label %_ZL21merve_error_loc_clearP15merve_error_loc.exit

_ZL21merve_error_loc_clearP15merve_error_loc.exit: ; preds = %bb.a, %bb.b
  %i.b = tail call noalias noundef dereferenceable_or_null(56) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 56, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #22 ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZL21merve_error_loc_clearP15merve_error_loc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %.not19 = icmp eq ptr %0, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  br i1 %.not19, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN5lexer14parse_commonjsESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.18") align 8 %3, i64 %1, ptr nonnull %0)
  %i.e = load i8, ptr %i.d, align 16, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = load i8, ptr %i.g, align 16, !range !10
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit.thread30, label %bb.f

_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit.thread30: ; preds = %bb.e
  %i.j = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.j, ptr %i.b, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.l, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %3, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = load <2 x ptr>, ptr %i.n, align 16
  %i.r = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.s = insertelement <4 x ptr> %i.r, ptr %i.p, i64 1
  %i.t = shufflevector <2 x ptr> %i.q, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x ptr> %i.s, <4 x ptr> %i.t, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.u, ptr %i.k, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.d, align 16
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.f, label %bb.g, label %5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt22_Optional_payload_baseIN5lexer14lexer_analysisEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #20
  br label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit

5:                                                ; preds = %bb.f
  store i8 0, ptr %i.d, align 16
  br label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit

_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit: ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5lexer14lexer_analysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3) #20 ; 0 uses
  %.pre = load i8, ptr %i.g, align 16, !range !10
  %i.w = trunc nuw i8 %.pre to i1
  br i1 %i.w, label %bb.h, label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit.thread30, %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit
  call void @_ZNSt22_Optional_payload_baseIN5lexer14lexer_analysisEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  br label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit: ; preds = %5, %bb.g, %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN5lexer14parse_commonjsESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.18") align 8 %4, i64 0, ptr nonnull @.str)
  %i.x = load i8, ptr %i.d, align 16, !range !10, !noundef !11
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 16, !range !10
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  %or.cond.i.i.i.i.i21 = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond.i.i.i.i.i21, label %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ab, label %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit22.thread31, label %bb.k

_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit22.thread31: ; preds = %bb.j
  %i.ac = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.ac, ptr %i.b, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = load ptr, ptr %i.ae, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %4, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = load <2 x ptr>, ptr %i.ag, align 16
  %i.ak = insertelement <4 x ptr> poison, ptr %i.ah, i64 0
  %i.al = insertelement <4 x ptr> %i.ak, ptr %i.ai, i64 1
  %i.am = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <4 x ptr> %i.al, <4 x ptr> %i.am, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.an, ptr %i.ad, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.d, align 16
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.l, label %6

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt22_Optional_payload_baseIN5lexer14lexer_analysisEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #20
  br label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit23

6:                                                ; preds = %bb.k
  store i8 0, ptr %i.d, align 16
  br label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit23

_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit22: ; preds = %bb.i
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5lexer14lexer_analysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %4) #20 ; 0 uses
  %.pre26 = load i8, ptr %i.z, align 16, !range !10
  %i.ap = trunc nuw i8 %.pre26 to i1
  br i1 %i.ap, label %bb.m, label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit23

bb.m:                                             ; preds = %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit22.thread31, %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit22
  call void @_ZNSt22_Optional_payload_baseIN5lexer14lexer_analysisEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #20
  br label %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit23

_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit23: ; preds = %6, %bb.l, %_ZNSt8optionalIN5lexer14lexer_analysisEEaSEOS2_.exit22, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit23, %_ZNSt14_Optional_baseIN5lexer14lexer_analysisELb0ELb0EED2Ev.exit
  %i.aq = load i8, ptr %i.d, align 16, !range !10, !noundef !11
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.not = or i1 %.not.i, %i.ar
  br i1 %or.cond.not, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = call noundef nonnull align 4 dereferenceable(12) ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i8, ptr %i.at, align 4, !range !10, !noundef !11
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNKRSt8optionalIN5lexer14error_locationEE5valueEv.exit, label %.thread

_ZNKRSt8optionalIN5lexer14error_locationEE5valueEv.exit: ; preds = %bb.o
  %i.aw = load i32, ptr %i.as, align 4
  store i32 %i.aw, ptr %2, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ay, ptr %i.az, align 4
  br label %.thread

.thread:                                          ; preds = %_ZL21merve_error_loc_clearP15merve_error_loc.exit, %bb.n, %_ZNKRSt8optionalIN5lexer14error_locationEE5valueEv.exit, %bb.o
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @merve_is_valid(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @merve_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %_ZN19merve_analysis_implD2Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt22_Optional_payload_baseIN5lexer14lexer_analysisEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  br label %_ZN19merve_analysis_implD2Ev.exit

_ZN19merve_analysis_implD2Ev.exit:                ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN19merve_analysis_implD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -192153584101141162, 192153584101141163) i64 @merve_get_exports_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %0, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -192153584101141162, 192153584101141163) i64 @merve_get_reexports_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @merve_get_export_name(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  %.not7 = icmp ult i64 %1, %i.j
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i8, ptr %i.l, align 8
  %i.n = icmp eq i8 %i.m, 0                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8     ; 2 uses
  %.val11.i.i.i.i = load ptr, ptr %i.o, align 8   ; 2 uses
  %.pn7.i.i.i.i = select i1 %i.n, ptr %.val.i.i.i.i, ptr %.val11.i.i.i.i
  %.pn9.v.i.i.i.i = select i1 %i.n, ptr %.val11.i.i.i.i, ptr %.val.i.i.i.i
  %.pn9.i.i.i.i = ptrtoint ptr %.pn9.v.i.i.i.i to i64
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.pn7.i.i.i.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.pn9.i.i.i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.pn.pn = phi { ptr, i64 } [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %.fca.1.insert.i, %bb.d ], [ zeroinitializer, %bb.c ]
  ret { ptr, i64 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @merve_get_export_line(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  %.not9 = icmp ult i64 %1, %i.j
  br i1 %.not9, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@_ZN5lexer8CJSLexer11addReexportESt17basic_string_viewIcSt11char_traitsIcEEj:bb.a
    i8 34, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = add i64 %1, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.9.0 = phi ptr [ %2, %bb.a ], [ %i.c, %bb.c ], [ %2, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %.sroa.0.0 ; 2 uses
  %i.f = tail call noundef ptr @_ZN7simdutf4findEPKcS1_c(ptr noundef %.sroa.9.0, ptr noundef %i.e, i8 noundef signext 92) #20
  %.not = icmp eq ptr %i.f, %i.e
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32840
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 %.sroa.0.0, ptr %4, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i8 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.l, ptr noundef nonnull align 8 dereferenceable(44) %4, i64 16, i1 false)
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 %3, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.r, ptr %i.k, align 8
  br label %_ZN5lexer12export_entryD2Ev.exit

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e
  call void @_ZNSt6vectorIN5lexer12export_entryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(44) %4)
  %.pre20 = load i8, ptr %i.i, align 8
  %i.s = icmp eq i8 %.pre20, 0
  br i1 %i.s, label %bb.f, label %_ZN5lexer12export_entryD2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN5lexer12export_entryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZN5lexer12export_entryD2Ev.exit

_ZN5lexer12export_entryD2Ev.exit:                 ; preds = %bb.f, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5lexer16unescapeJsStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, i64 %.sroa.0.0, ptr %.sroa.9.0)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32840
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !align !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.ad, ptr %6, align 8
  %i.ae = load ptr, ptr %5, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  store ptr %i.ae, ptr %6, align 8
  %i.al = load i64, ptr %i.af, align 8
  store i64 %i.al, ptr %i.ad, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.am = phi i64 [ %i.ai, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.am, ptr %i.ao, align 8
  store ptr %i.af, ptr %5, align 8
  store i64 0, ptr %i.an, align 8
  store i8 0, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  store i8 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %3, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %.not.i.i4 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i4, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  store i8 -1, ptr %i.av, align 8
  %i.aw = load i8, ptr %i.ap, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.as, align 8
  %i.az = load ptr, ptr %6, align 8               ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ad
  br i1 %i.ba, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i6

bb.k:                                             ; preds = %bb.j
  %i.bb = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.bd, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i6: ; preds = %bb.j
  store ptr %i.az, ptr %i.as, align 8
  %i.be = load i64, ptr %i.ad, align 8
  store i64 %i.be, ptr %i.ay, align 8
  %.pre17 = load i64, ptr %i.ao, align 8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i6, %bb.k
  %i.bf = phi i64 [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i6 ], [ %i.bb, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bf, ptr %i.bg, align 8
  store ptr %i.ad, ptr %6, align 8
  store i64 0, ptr %i.ao, align 8
  store i8 0, ptr %i.ad, align 8
  br label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i5

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.as, ptr noundef nonnull align 8 dereferenceable(44) %6, i64 16, i1 false)
  br label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i5

_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i5: ; preds = %bb.l, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.bh = load i8, ptr %i.ap, align 8             ; 2 uses
  store i8 %i.bh, ptr %i.av, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bj = load i32, ptr %i.aq, align 8
  store i32 %i.bj, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.ar, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %i.bl, ptr %i.ar, align 8
  br label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit8

bb.m:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit
  call void @_ZNSt6vectorIN5lexer12export_entryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(44) %6)
  %.pre18 = load i8, ptr %i.ap, align 8
  br label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit8

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit8: ; preds = %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i5, %bb.m
  %i.bm = phi i8 [ %i.bh, %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i5 ], [ %.pre18, %bb.m ]
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i10

bb.n:                                             ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit8
  %i.bo = load ptr, ptr %6, align 8               ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ad
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i9: ; preds = %bb.n
  %i.bq = load i64, ptr %i.ad, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i10: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i9, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pre19 = load i8, ptr %i.y, align 8, !range !10
  %i.bs = trunc nuw i8 %.pre19 to i1
  store i8 0, ptr %i.y, align 8
  br i1 %i.bs, label %bb.o, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i10
  %i.bt = load ptr, ptr %5, align 8               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN5lexer12export_entryD2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN7simdutf4findEPKcS1_c(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5lexer12export_entryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5lexer12export_entryESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
  unreachable

_ZNKSt6vectorIN5lexer12export_entryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i8, ptr %i.s, align 8               ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNKSt6vectorIN5lexer12export_entryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.q, align 8
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.w, ptr %i.q, align 8
  %i.ad = load i64, ptr %i.x, align 8
  store i64 %i.ad, ptr %i.v, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ae = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aa, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ae, ptr %i.ag, align 8
  store ptr %i.x, ptr %2, align 8
  store i64 0, ptr %i.af, align 8
  store i8 0, ptr %i.x, align 8
  br label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

bb.e:                                             ; preds = %_ZNKSt6vectorIN5lexer12export_entryESaIS1_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.q, ptr noundef nonnull align 8 dereferenceable(44) %2, i64 16, i1 false)
  br label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i, %bb.e
  store i8 %i.t, ptr %i.r, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i32, ptr %i.ai, align 8
  store i32 %i.aj, ptr %i.ah, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !alias.scope !31 ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.f, label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.an, ptr %.012.i.i.i, align 8, !alias.scope !30
  %i.ao = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !31 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !31 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false), !alias.scope !32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  store ptr %i.ao, ptr %.012.i.i.i, align 8, !alias.scope !30
  %i.av = load i64, ptr %i.ap, align 8, !alias.scope !31
  store i64 %i.av, ptr %i.an, align 8, !alias.scope !30
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(44) %.0911.i.i.i, i64 16, i1 false), !alias.scope !32
  br label %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.aw = phi i64 [ %i.as, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aw, ptr %i.ay, align 8, !alias.scope !30
  store ptr %i.ap, ptr %.0911.i.i.i, align 8, !alias.scope !31
  store i64 0, ptr %i.ax, align 8, !alias.scope !31
  store i8 0, ptr %i.ap, align 8, !alias.scope !31
  br label %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store i8 %i.al, ptr %i.az, align 8, !alias.scope !30
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !31
  store i32 %i.bc, ptr %i.ba, align 8, !alias.scope !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !26

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.be, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bf, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !alias.scope !34 ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.h, label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i20

bb.h:                                             ; preds = %.lr.ph.i.i.i17
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.bj, ptr %.012.i.i.i18, align 8, !alias.scope !33
  %i.bk = load ptr, ptr %.0911.i.i.i19, align 8, !alias.scope !34 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i24

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !34 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i27

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5lexer12export_entryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28: ; preds = %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bf, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ca, %_ZSt19__relocate_object_aIN5lexer12export_entryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5lexer12export_entryESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ce) #23
  br label %_ZNSt12_Vector_baseIN5lexer12export_entryESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5lexer12export_entryESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, %bb.j
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cf, ptr %i.cb, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32848) %0, ptr noundef %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sub i64 0, %2
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp ult ptr %i.c, %i.d
  br i1 %i.e, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %2
  br i1 %i.k, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not1113.i = icmp eq i64 %2, 0
  br i1 %.not1113.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = add nuw i64 %.014.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %2
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.014.i = phi i64 [ %i.l, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %.014.i
  %i.n = load i8, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.014.i
  %i.p = load i8, ptr %i.o, align 1
  %.not.i = icmp eq i8 %i.n, %i.p
  br i1 %.not.i, label %bb.c, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

.loopexit:                                        ; preds = %bb.c, %.preheader.i
  %i.q = icmp eq ptr %i.c, %i.d
  br i1 %i.q, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.r = load i8, ptr %i.b, align 1               ; 2 uses
  %i.s = zext i8 %i.r to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN5lexerL12kBrOrWsTableE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN5lexerL16kPunctuatorTableE, i64 %i.s
  %i.x = load i8, ptr %i.w, align 1, !range !10, !noundef !11
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = icmp ne i8 %i.r, 46
  %i.aa = and i1 %i.z, %i.y
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d, %bb.b, %.loopexit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.aa, %bb.e ], [ true, %.loopexit ], [ false, %bb.b ], [ true, %bb.d ], [ false, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5lexer8CJSLexer9addExportESt17basic_string_viewIcSt11char_traitsIcEEj(ptr noundef nonnull align 8 dereferenceable(32848) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.lexer::export_entry", align 8 ; 10 uses
  %5 = alloca %"class.std::optional", align 8     ; 13 uses
  %6 = alloca %"struct.lexer::export_entry", align 8 ; 13 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1
  switch i8 %i.b, label %bb.d [
    i8 39, label %bb.c
    i8 34, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = add i64 %1, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.10.0 = phi ptr [ %2, %bb.a ], [ %i.c, %bb.c ], [ %2, %bb.b ] ; 5 uses
  %.sroa.051.0 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.c ], [ %1, %bb.b ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.10.0, i64 %.sroa.051.0 ; 2 uses
  %i.f = tail call noundef ptr @_ZN7simdutf4findEPKcS1_c(ptr noundef %.sroa.10.0, ptr noundef %i.e, i8 noundef signext 92) #20
  %.not = icmp eq ptr %i.f, %i.e
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !12 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 7 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.e, %bb.g
  %.sroa.048.060 = phi ptr [ %i.t, %bb.g ], [ %i.i, %bb.e ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.048.060, i64 32
  %i.n = load i8, ptr %i.m, align 8
  %i.o = icmp eq i8 %i.n, 0                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.048.060, i64 8
  %.val.i.i.i = load ptr, ptr %.sroa.048.060, align 8 ; 2 uses
  %.val11.i.i.i = load ptr, ptr %i.p, align 8     ; 2 uses
  %.pn7.i.i.i = select i1 %i.o, ptr %.val.i.i.i, ptr %.val11.i.i.i
  %.pn9.v.i.i.i = select i1 %i.o, ptr %.val11.i.i.i, ptr %.val.i.i.i ; 2 uses
  %.pn9.i.i.i = ptrtoint ptr %.pn9.v.i.i.i to i64
  %i.q = icmp eq i64 %.sroa.051.0, %.pn9.i.i.i
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph61
  %i.r = icmp eq ptr %.pn9.v.i.i.i, null
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.f
  %bcmp.i = tail call i32 @bcmp(ptr %.pn7.i.i.i, ptr %.sroa.10.0, i64 %.sroa.051.0)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread57, label %bb.g

bb.g:                                             ; preds = %.lr.ph61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.048.060, i64 48 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.k
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph61

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 %.sroa.051.0, ptr %4, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i8 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.k, ptr noundef nonnull align 8 dereferenceable(44) %4, i64 16, i1 false)
  store i8 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 %3, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.j, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.ac, ptr %i.j, align 8
  br label %_ZN5lexer12export_entryD2Ev.exit

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  call void @_ZNSt6vectorIN5lexer12export_entryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(44) %4)
  %.pre66 = load i8, ptr %i.v, align 8
  %i.ad = icmp eq i8 %.pre66, 0
  br i1 %i.ad, label %bb.h, label %_ZN5lexer12export_entryD2Ev.exit

bb.h:                                             ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit
  %i.ae = load ptr, ptr %4, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN5lexer12export_entryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #23
  br label %_ZN5lexer12export_entryD2Ev.exit

_ZN5lexer12export_entryD2Ev.exit:                 ; preds = %bb.h, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread57

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5lexer16unescapeJsStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, i64 %.sroa.051.0, ptr %.sroa.10.0)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !10, !noundef !11
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !11, !align !12 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  %.pre = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.ar, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit35, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.044.059 = phi ptr [ %i.ao, %.lr.ph ], [ %i.bb, %bb.l ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.044.059, i64 32
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = icmp eq i8 %i.av, 0                     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.044.059, i64 8
  %.val.i.i.i25 = load ptr, ptr %.sroa.044.059, align 8 ; 2 uses
  %.val11.i.i.i26 = load ptr, ptr %i.ax, align 8  ; 2 uses
  %.pn7.i.i.i27 = select i1 %i.aw, ptr %.val.i.i.i25, ptr %.val11.i.i.i26
  %.pn9.v.i.i.i28 = select i1 %i.aw, ptr %.val11.i.i.i26, ptr %.val.i.i.i25 ; 2 uses
  %.pn9.i.i.i29 = ptrtoint ptr %.pn9.v.i.i.i28 to i64
  %i.ay = icmp eq i64 %i.at, %.pn9.i.i.i29
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = icmp eq ptr %.pn9.v.i.i.i28, null
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32: ; preds = %bb.k
  %bcmp.i33 = call i32 @bcmp(ptr %.pn7.i.i.i27, ptr %.pre, i64 %i.at)
  %i.ba = icmp eq i32 %bcmp.i33, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.044.059, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit35, label %bb.j

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit35: ; preds = %bb.l, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.bd, ptr %6, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %.pre, %i.be
  br i1 %i.bf, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit35
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit35
  store ptr %.pre, ptr %6, align 8
  %i.bk = load i64, ptr %i.be, align 8
  store i64 %i.bk, ptr %i.bd, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre62 = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %i.bh, %bb.m ], [ %.pre62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.bl, ptr %i.bn, align 8
  store ptr %i.be, ptr %5, align 8
  store i64 0, ptr %i.bm, align 8
  store i8 0, ptr %i.be, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %3, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.ap, align 8            ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %.not.i.i36 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i36, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  store i8 -1, ptr %i.bt, align 8
  %i.bu = load i8, ptr %i.bo, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  store ptr %i.bw, ptr %i.bq, align 8
  %i.bx = load ptr, ptr %6, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bd
  br i1 %i.by, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38

bb.p:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.cb, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38: ; preds = %bb.o
  store ptr %i.bx, ptr %i.bq, align 8
  %i.cc = load i64, ptr %i.bd, align 8
  store i64 %i.cc, ptr %i.bw, align 8
  %.pre63 = load i64, ptr %i.bn, align 8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i39

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38, %bb.p
  %i.cd = phi i64 [ %.pre63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38 ], [ %i.bz, %bb.p ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.cd, ptr %i.ce, align 8
  store ptr %i.bd, ptr %6, align 8
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bd, align 8
  br label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i37

bb.q:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bq, ptr noundef nonnull align 8 dereferenceable(44) %6, i64 16, i1 false)
  br label %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i37

_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i37: ; preds = %bb.q, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EEEC1EOSD_EUlOT_T0_E_OSt7variantIJSA_SC_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit.i.i.i.i.i.i.i.i.i.i.i39
  %i.cf = load i8, ptr %i.bo, align 8             ; 2 uses
  store i8 %i.cf, ptr %i.bt, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.ch = load i32, ptr %i.bp, align 8
  store i32 %i.ch, ptr %i.cg, align 8
  %i.ci = load ptr, ptr %i.ap, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %i.cj, ptr %i.ap, align 8
  br label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit40

bb.r:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2IS5_vvS5_vEEOT_.exit
  call void @_ZNSt6vectorIN5lexer12export_entryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(44) %6)
  %.pre64 = load i8, ptr %i.bo, align 8
  br label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit40

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit40: ; preds = %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i37, %bb.r
  %i.ck = phi i8 [ %i.cf, %_ZSt12construct_atIN5lexer12export_entryEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i37 ], [ %.pre64, %bb.r ]
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.s:                                             ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit40
  %i.cm = load ptr, ptr %6, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bd
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i41: ; preds = %bb.s
  %i.co = load i64, ptr %i.bd, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #23
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32, %bb.k
  store i8 0, ptr %i.aj, align 8
  br label %bb.t

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i41, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE9push_backEOS1_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pre65 = load i8, ptr %i.aj, align 8, !range !10
  %i.cq = trunc nuw i8 %.pre65 to i1
  store i8 0, ptr %i.aj, align 8
  br i1 %i.cq, label %bb.t, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.cr = load ptr, ptr %5, align 8               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.t
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.t, %bb.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread57

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.f, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN5lexer12export_entryD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5lexer8CJSLexer22tryParseLiteralExportsEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %.critedge33

bb.b:                                             ; preds = %.critedge
  %i.j = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZN5lexerL21kIdentifierStartTableE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN5lexer8CJSLexer10identifierEc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8              ; 2 uses
  %storemerge.i102 = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  store ptr %storemerge.i102, ptr %i.a, align 8
  %i.q = icmp ult ptr %storemerge.i102, %i.p
  br i1 %i.q, label %.lr.ph105, label %_ZN5lexer8CJSLexer10identifierEc.exit

bb.d:                                             ; preds = %.lr.ph105
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i103, i64 1 ; 4 uses
  store ptr %storemerge.i, ptr %i.a, align 8
  %i.r = icmp ult ptr %storemerge.i, %i.p
  br i1 %i.r, label %.lr.ph105, label %_ZN5lexer8CJSLexer10identifierEc.exit

.lr.ph105:                                        ; preds = %bb.c, %bb.d
  %storemerge.i103 = phi ptr [ %storemerge.i, %bb.d ], [ %storemerge.i102, %bb.c ] ; 3 uses
  %i.s = load i8, ptr %storemerge.i103, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN5lexerL20kIdentifierCharTableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !range !10, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN5lexer8CJSLexer10identifierEc.exit

_ZN5lexer8CJSLexer10identifierEc.exit:            ; preds = %bb.d, %.lr.ph105, %bb.c
  %storemerge.i.lcssa = phi ptr [ %storemerge.i102, %bb.c ], [ %storemerge.i, %bb.d ], [ %storemerge.i103, %.lr.ph105 ]
  %i.x = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) ; 8 uses
  %.not = icmp ne i8 %i.x, 58
  %i.y = ptrtoint ptr %storemerge.i.lcssa to i64
  %i.z = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 3
  %or.cond30 = select i1 %.not, i1 %i.ab, i1 false
  br i1 %or.cond30, label %bb.e, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %_ZN5lexer8CJSLexer10identifierEc.exit
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.z
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ag = load i8, ptr %i.k, align 1
  %.not.i = icmp eq i8 %i.ag, 103
  br i1 %.not.i, label %.lr.ph.i.1, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %.not.i.1 = icmp eq i8 %i.ai, 101
  br i1 %.not.i.1, label %.lr.ph.i.2, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %.not.i.2 = icmp eq i8 %i.ak, 116
  br i1 %.not.i.2, label %bb.f, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

bb.f:                                             ; preds = %.lr.ph.i.2
  %i.al = zext i8 %i.x to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN5lexerL21kIdentifierStartTableE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !range !10, !noundef !11
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.a, align 8
  %storemerge.i35109 = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 3 uses
  store ptr %storemerge.i35109, ptr %i.a, align 8
  %i.aq = icmp ult ptr %storemerge.i35109, %i.ac
  br i1 %i.aq, label %.lr.ph112, label %_ZN5lexer8CJSLexer10identifierEc.exit36

bb.h:                                             ; preds = %.lr.ph112
  %storemerge.i35 = getelementptr inbounds nuw i8, ptr %storemerge.i35110, i64 1 ; 3 uses
  store ptr %storemerge.i35, ptr %i.a, align 8
  %i.ar = icmp ult ptr %storemerge.i35, %i.ac
  br i1 %i.ar, label %.lr.ph112, label %_ZN5lexer8CJSLexer10identifierEc.exit36

.lr.ph112:                                        ; preds = %bb.g, %bb.h
  %storemerge.i35110 = phi ptr [ %storemerge.i35, %bb.h ], [ %storemerge.i35109, %bb.g ] ; 2 uses
  %i.as = load i8, ptr %storemerge.i35110, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN5lexerL20kIdentifierCharTableE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !range !10, !noundef !11
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %_ZN5lexer8CJSLexer10identifierEc.exit36

_ZN5lexer8CJSLexer10identifierEc.exit36:          ; preds = %bb.h, %.lr.ph112, %bb.g
  %i.ax = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 40
  br i1 %i.ay, label %.critedge33.sink.split, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN5lexer8CJSLexer10identifierEc.exit36, %_ZN5lexer8CJSLexer10identifierEc.exit
  %.0 = phi i8 [ %i.ax, %_ZN5lexer8CJSLexer10identifierEc.exit36 ], [ %i.x, %_ZN5lexer8CJSLexer10identifierEc.exit ] ; 2 uses
  %i.az = icmp eq i8 %.0, 58
  br i1 %i.az, label %bb.i, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

bb.i:                                             ; preds = %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8
  %i.bc = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 114
  br i1 %i.bd, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.be = tail call noundef zeroext i1 @_ZN5lexer8CJSLexer15tryParseRequireENS_11RequireTypeE(ptr noundef nonnull align 8 dereferenceable(32848) %0, i32 noundef 1)
  br i1 %i.be, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = load i8, ptr %i.bf, align 1
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

._crit_edge.i:                                    ; preds = %bb.j, %bb.i
  %i.bh = zext i8 %i.bc to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN5lexerL21kIdentifierStartTableE, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !range !10, !noundef !11
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %.critedge33.sink.split

bb.l:                                             ; preds = %._crit_edge.i
  %i.bl = load ptr, ptr %i.a, align 8
  %i.bm = load ptr, ptr %i.d, align 8             ; 2 uses
  %storemerge.i.i114 = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 4 uses
  store ptr %storemerge.i.i114, ptr %i.a, align 8
  %i.bn = icmp ult ptr %storemerge.i.i114, %i.bm
  %.pre6.i115 = load i8, ptr %storemerge.i.i114, align 1 ; 2 uses
  br i1 %i.bn, label %.lr.ph119, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

bb.m:                                             ; preds = %.lr.ph119
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %storemerge.i.i116, i64 1 ; 4 uses
  store ptr %storemerge.i.i, ptr %i.a, align 8
  %i.bo = icmp ult ptr %storemerge.i.i, %i.bm
  %.pre6.i = load i8, ptr %storemerge.i.i, align 1 ; 2 uses
  br i1 %i.bo, label %.lr.ph119, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

.lr.ph119:                                        ; preds = %bb.l, %bb.m
  %.pre6.i117 = phi i8 [ %.pre6.i, %bb.m ], [ %.pre6.i115, %bb.l ] ; 2 uses
  %storemerge.i.i116 = phi ptr [ %storemerge.i.i, %bb.m ], [ %storemerge.i.i114, %bb.l ]
  %i.bp = zext i8 %.pre6.i117 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN5lexerL20kIdentifierCharTableE, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.m, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71

_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.thread71: ; preds = %.lr.ph119, %bb.m, %bb.l, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %bb.f, %bb.k, %bb.e, %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %.1 = phi i8 [ %i.x, %bb.e ], [ %.0, %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.bg, %bb.k ], [ %i.x, %.lr.ph.i.1 ], [ %i.x, %.lr.ph.i.preheader ], [ %i.x, %bb.f ], [ %i.x, %.lr.ph.i.2 ], [ %.pre6.i115, %bb.l ], [ %.pre6.i, %bb.m ], [ %.pre6.i117, %.lr.ph119 ]
  %i.bt = load i32, ptr %i.e, align 8
  tail call void @_ZN5lexer8CJSLexer9addExportESt17basic_string_viewIcSt11char_traitsIcEEj(ptr noundef nonnull align 8 dereferenceable(32848) %0, i64 %i.aa, ptr %i.k, i32 noundef %i.bt)
  br label %bb.aa

_ZN5lexer8CJSLexer10identifierEc.exit.thread:     ; preds = %bb.b
  switch i8 %i.j, label %.critedge33.sink.split [
    i8 39, label %bb.n
end_hunk_2
