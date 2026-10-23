Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/nfa?download=true
inline.NumInlined: 681
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10duckdb_re23NFA13FormatCaptureB5cxx11EPPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit.split-lp49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.az = load i32, ptr %i.c, align 4, !tbaa !96
  %i.ba = trunc nuw i64 %indvars.iv.next to i32
  %i.bb = icmp sgt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !169

.loopexit.split-lp49:                             ; preds = %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn22 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bc = load ptr, ptr %0, align 8, !tbaa !135   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %.loopexit.split-lp49
  call void @_ZdlPv(ptr noundef %i.bc) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %.loopexit.split-lp49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  resume { ptr, i32 } %.pn22

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.a
  ret void
}

declare void @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re23NFA6SearchERKNS_11StringPieceES3_bbPS1_i(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 11 uses
  %8 = alloca %class.LogMessage, align 8          ; 11 uses
  %9 = alloca %class.LogMessage, align 8          ; 11 uses
  %10 = alloca %class.LogMessage, align 8         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !177
  %i.d = load ptr, ptr %7, align 8, !tbaa !148    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !177
  %.val89.pre = load ptr, ptr %7, align 8, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.val89.pre, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %.val90 = load ptr, ptr %1, align 8, !tbaa !148 ; 3 uses
  %i.g = icmp ult ptr %.val90, %i.f
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val98 = load i64, ptr %i.h, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %.val90, i64 %.val98 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val96 = load i64, ptr %i.j, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.val96 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i8 0, ptr %8, align 8, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.m)
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.8, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.o = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !134
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.q = getelementptr i8, ptr %i.o, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.r
  store ptr %i.p, ptr %i.s, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.v) #17
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #18
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bb

bb.h:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !178, !range !140, !noundef !141
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %.not = icmp ne ptr %i.f, %.val90
  %or.cond.not = and i1 %.not, %i.ad
  br i1 %or.cond.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !179, !range !140, !noundef !141
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not81 = icmp eq ptr %i.k, %i.i
  br i1 %.not81, label %bb.l, label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ah = zext i1 %4 to i8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.ai, align 1, !tbaa !98
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.076 = phi i8 [ 1, %bb.l ], [ %i.ah, %bb.k ]
  %i.aj = or i1 %3, %i.ad
  %i.ak = icmp slt i32 %6, 0
  br i1 %i.ak, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i8 0, ptr %9, align 8, !tbaa !132
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.al)
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.9, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %bb.n
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i32 noundef %6)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !134
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !134
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.at, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !135 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN10LogMessageD2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i100: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.av) #17
  br label %_ZN10LogMessageD2Ev.exit102

_ZN10LogMessageD2Ev.exit102:                      ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i100
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.at, align 8, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #18
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.loopexit

bb.p:                                             ; preds = %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bb

bb.q:                                             ; preds = %bb.m
  %i.bb = shl nuw nsw i32 %6, 1                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.076, ptr %i.bd, align 8, !tbaa !97
  %11 = icmp ne i32 %6, 0                         ; 2 uses
  br i1 %11, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 2, ptr %i.bc, align 4, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = phi i32 [ 2, %bb.r ], [ %i.bb, %bb.q ]
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !109
  %i.bj = load i32, ptr %i.bc, align 4, !tbaa !96
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bh, i8 0, i64 %i.bl, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.bn, align 8, !tbaa !146
  %i.bo = load ptr, ptr %1, align 8, !tbaa !148   ; 2 uses
  %i.bp = load i64, ptr %i.h, align 8, !tbaa !149
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !143
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !32
  store i32 0, ptr %i.bt, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.t

bb.t:                                             ; preds = %bb.av, %bb.s
  %.0125 = phi ptr [ %i.bt, %bb.s ], [ %.0123, %bb.av ] ; 10 uses
  %.0123 = phi ptr [ %i.bs, %bb.s ], [ %.0125, %bb.av ] ; 5 uses
  %.067 = phi ptr [ %i.bo, %bb.s ], [ %i.fx, %bb.av ] ; 13 uses
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !143
  %i.cb = icmp ult ptr %.067, %i.ca
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = load i8, ptr %.067, align 1, !tbaa !115
  %i.cd = zext i8 %i.cc to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ce = phi i32 [ %i.cd, %bb.u ], [ -1, %bb.t ]
  %i.cf = call noundef i32 @_ZN10duckdb_re23NFA4StepEPNS_11SparseArrayIPNS0_6ThreadEEES5_iRKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull %.0123, ptr noundef nonnull %.0125, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %.067) ; 2 uses
  store i32 0, ptr %.0123, align 8, !tbaa !32
  %.not82 = icmp eq i32 %i.cf, 0
  %i.cg = load ptr, ptr %i.br, align 8, !tbaa !143 ; 5 uses
  br i1 %.not82, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = load ptr, ptr %0, align 8, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 120
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !119
  br label %bb.x

bb.x:                                             ; preds = %bb.ae, %bb.w
  %.066 = phi i32 [ %i.cf, %bb.w ], [ %.1, %bb.ae ]
  %i.ck = sext i32 %.066 to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !121 ; 2 uses
  %i.cn = and i32 %i.cm, 7
  switch i32 %i.cn, label %bb.y [
    i32 3, label %bb.ab
    i32 6, label %bb.ae
    i32 5, label %bb.ad
  ], !llvm.loop !170

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i8 0, ptr %10, align 8, !tbaa !132
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.co)
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.10, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103: ; preds = %bb.y
  %i.cq = load i32, ptr %i.cl, align 4, !tbaa !121
  %i.cr = and i32 %i.cq, 7
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i32 noundef %i.cr)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103
  %i.ct = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ct, ptr %i.co, align 8, !tbaa !134
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cv = getelementptr i8, ptr %i.ct, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %i.co, i64 %i.cw
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !134
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cy, align 8, !tbaa !134
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !135 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZN10LogMessageD2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i104: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.da) #17
  br label %_ZN10LogMessageD2Ev.exit106

_ZN10LogMessageD2Ev.exit106:                      ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i104
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cy, align 8, !tbaa !134
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #18
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.de) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.critedge87

bb.aa:                                            ; preds = %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bb

bb.ab:                                            ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !115 ; 2 uses
  %i.di = load i32, ptr %i.bc, align 4, !tbaa !96
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.ac, label %bb.ae, !llvm.loop !170

bb.ac:                                            ; preds = %bb.ab
  %i.dk = load ptr, ptr %i.bi, align 8, !tbaa !109
  %i.dl = sext i32 %i.dh to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  store ptr %i.cg, ptr %i.dm, align 8, !tbaa !139
  br label %bb.ae, !llvm.loop !170

bb.ad:                                            ; preds = %bb.x
  %i.dn = load ptr, ptr %i.bi, align 8, !tbaa !109
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.cg, ptr %i.do, align 8, !tbaa !139
  store i8 1, ptr %i.bm, align 8, !tbaa !142
  br label %.critedge87

bb.ae:                                            ; preds = %bb.x, %bb.ab, %bb.ac
  %.1 = lshr i32 %i.cm, 4
  br label %bb.x

bb.af:                                            ; preds = %bb.v
  %i.dp = icmp ugt ptr %.067, %i.cg
  br i1 %i.dp, label %.critedge87, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = load i8, ptr %i.bm, align 8, !tbaa !142, !range !140, !noundef !141
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.aj, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load ptr, ptr %1, align 8, !tbaa !148
  %i.dt = icmp eq ptr %.067, %i.ds
  br i1 %i.dt, label %bb.am, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit

.critedge:                                        ; preds = %bb.ah
  %i.du = load i32, ptr %.0125, align 8, !tbaa !32
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = icmp ult ptr %.067, %i.cg
  %or.cond130 = and i1 %i.dw, %i.dv
  br i1 %or.cond130, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.critedge
  %i.dx = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !150
  %.not131 = icmp eq i64 %i.dz, 0
  br i1 %.not131, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = ptrtoint ptr %i.cg to i64
  %i.eb = ptrtoint ptr %.067 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = call noundef ptr @_ZN10duckdb_re24Prog11PrefixAccelEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %i.dx, ptr noundef %.067, i64 noundef %i.ec) ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.br, align 8, !tbaa !143
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.ak, %bb.al, %bb.aj, %.critedge
  %.168 = phi ptr [ %.067, %.critedge ], [ %i.ef, %bb.al ], [ %i.ed, %bb.ak ], [ %.067, %bb.aj ], [ %.067, %bb.ai ] ; 6 uses
  %i.eg = load ptr, ptr %i.bu, align 8, !tbaa !116 ; 4 uses
  %.not.i = icmp eq ptr %i.eg, null
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !115
  store ptr %i.eh, ptr %i.bu, align 8, !tbaa !116
  store i32 1, ptr %i.eg, align 8, !tbaa !115
  br label %_ZN10duckdb_re23NFA11AllocThreadEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.ei = load ptr, ptr %i.bv, align 8, !tbaa !136 ; 2 uses
  %i.ej = load ptr, ptr %i.bw, align 8, !tbaa !137
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -16
  %.not.i.i = icmp eq ptr %i.ei, %i.ek
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 0, i64 16, i1 false)
  %i.el = load ptr, ptr %i.bv, align 8, !tbaa !136
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  store ptr %i.em, ptr %i.bv, align 8, !tbaa !136
  br label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i

bb.aq:                                            ; preds = %bb.ao
  call void @_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bx)
  %.pre.i = load ptr, ptr %i.bv, align 8, !tbaa !110, !noalias !180
  br label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i

_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i: ; preds = %bb.aq, %bb.ap
  %i.en = phi ptr [ %i.em, %bb.ap ], [ %.pre.i, %bb.aq ] ; 2 uses
  %i.eo = load ptr, ptr %i.by, align 8, !tbaa !138, !noalias !180
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.ar, label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i

bb.ar:                                            ; preds = %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i
  %i.eq = load ptr, ptr %i.bz, align 8, !tbaa !111, !noalias !180
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !104
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 512
  br label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i

_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i: ; preds = %bb.ar, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i
  %i.eu = phi ptr [ %i.et, %bb.ar ], [ %i.en, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i ] ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -16 ; 2 uses
  store i32 1, ptr %i.ev, align 8, !tbaa !115
  %i.ew = load i32, ptr %i.bc, align 4, !tbaa !96 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i32 %i.ew, 0
  %i.ez = shl nsw i64 %i.ex, 3
  %i.fa = select i1 %i.ey, i64 -1, i64 %i.ez
  %i.fb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fa) #16
  %i.fc = getelementptr inbounds i8, ptr %i.eu, i64 -8
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !114
  br label %_ZN10duckdb_re23NFA11AllocThreadEv.exit

_ZN10duckdb_re23NFA11AllocThreadEv.exit:          ; preds = %bb.an, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i
  %.0.i = phi ptr [ %i.eg, %bb.an ], [ %i.ev, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !114
  %i.ff = load ptr, ptr %i.bi, align 8, !tbaa !109
  %i.fg = load i32, ptr %i.bc, align 4, !tbaa !96
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fe, ptr align 8 %i.ff, i64 %i.fi, i1 false)
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !114
  store ptr %.168, ptr %i.fj, align 8, !tbaa !139
  %i.fk = load i32, ptr %i.a, align 8, !tbaa !95
  %i.fl = load ptr, ptr %i.br, align 8, !tbaa !143
  %i.fm = icmp ult ptr %.168, %i.fl
  br i1 %i.fm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN10duckdb_re23NFA11AllocThreadEv.exit
  %i.fn = load i8, ptr %.168, align 1, !tbaa !115
  %i.fo = zext i8 %i.fn to i32
  br label %bb.at

bb.at:                                            ; preds = %_ZN10duckdb_re23NFA11AllocThreadEv.exit, %bb.as
  %i.fp = phi i32 [ %i.fo, %bb.as ], [ -1, %_ZN10duckdb_re23NFA11AllocThreadEv.exit ]
  call void @_ZN10duckdb_re23NFA12AddToThreadqEPNS_11SparseArrayIPNS0_6ThreadEEEiiRKNS_11StringPieceEPKcS3_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull %.0125, i32 noundef %i.fk, i32 noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %.168, ptr noundef nonnull %.0.i)
  %i.fq = load i32, ptr %.0.i, align 8, !tbaa !115 ; 2 uses
  %i.fr = add nsw i32 %i.fq, -1
  store i32 %i.fr, ptr %.0.i, align 8, !tbaa !115
  %i.fs = icmp sgt i32 %i.fq, 1
  br i1 %i.fs, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = load ptr, ptr %i.bu, align 8, !tbaa !116
  store ptr %i.ft, ptr %.0.i, align 8, !tbaa !115
  store ptr %.0.i, ptr %i.bu, align 8, !tbaa !116
  br label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit

_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit:    ; preds = %bb.au, %bb.at, %bb.ai, %bb.ag
  %.2 = phi ptr [ %.067, %bb.ag ], [ %.067, %bb.ai ], [ %.168, %bb.at ], [ %.168, %bb.au ] ; 2 uses
  %i.fu = load i32, ptr %.0125, align 8, !tbaa !32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %._crit_edge, label %bb.av

bb.av:                                            ; preds = %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit
  %i.fw = icmp eq ptr %.2, null
  %i.fx = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br i1 %i.fw, label %bb.aw, label %bb.t, !llvm.loop !173

bb.aw:                                            ; preds = %bb.av
  %i.fy = call noundef i32 @_ZN10duckdb_re23NFA4StepEPNS_11SparseArrayIPNS0_6ThreadEEES5_iRKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull %.0125, ptr noundef nonnull %.0123, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) ; 0 uses
  store i32 0, ptr %.0125, align 8, !tbaa !32
  br label %.critedge87

.critedge87:                                      ; preds = %bb.af, %_ZN10LogMessageD2Ev.exit106, %bb.ad, %bb.aw
  %.1124.ph = phi ptr [ %.0125, %bb.ad ], [ %.0123, %bb.aw ], [ %.0125, %_ZN10LogMessageD2Ev.exit106 ], [ %.0125, %bb.af ] ; 3 uses
  %.pr = load i32, ptr %.1124.ph, align 8, !tbaa !32
  %i.fz = getelementptr inbounds nuw i8, ptr %.1124.ph, i64 32 ; 2 uses
  %.not83140 = icmp eq i32 %.pr, 0
  br i1 %.not83140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge87
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !102
  br label %bb.ax

._crit_edge:                                      ; preds = %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit, %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107, %.critedge87
  %i.gb = load i8, ptr %i.bm, align 8, !tbaa !142, !range !140, !noundef !141
  %12 = trunc nuw i8 %i.gb to i1                  ; 2 uses
  %brmerge.not = and i1 %11, %12
  br i1 %brmerge.not, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %._crit_edge
  %i.gc = load ptr, ptr %i.bi, align 8, !tbaa !109 ; 3 uses
  %wide.trip.count = zext nneg i32 %6 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gd = icmp eq i32 %6, 1
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph143.new

.lr.ph143.new:                                    ; preds = %.lr.ph143
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ba

bb.ax:                                            ; preds = %.lr.ph, %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107
  %.065141 = phi ptr [ %i.ga, %.lr.ph ], [ %i.gk, %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.065141, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !104 ; 5 uses
  %.not84 = icmp eq ptr %i.gf, null
  br i1 %.not84, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !115 ; 2 uses
  %i.gh = add nsw i32 %i.gg, -1
  store i32 %i.gh, ptr %i.gf, align 8, !tbaa !115
  %i.gi = icmp sgt i32 %i.gg, 1
  br i1 %i.gi, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gj = load ptr, ptr %i.bu, align 8, !tbaa !116
  store ptr %i.gj, ptr %i.gf, align 8, !tbaa !115
  store ptr %i.gf, ptr %i.bu, align 8, !tbaa !116
  br label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107

_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %.065141, i64 16 ; 2 uses
  %i.gl = load ptr, ptr %i.fz, align 8, !tbaa !102
  %i.gm = load i32, ptr %.1124.ph, align 8, !tbaa !32
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [16 x i8], ptr %i.gl, i64 %i.gn
  %.not83 = icmp eq ptr %i.gk, %i.go
  br i1 %.not83, label %._crit_edge, label %bb.ax, !llvm.loop !174

bb.ba:                                            ; preds = %bb.ba, %.lr.ph143.new
  %indvars.iv = phi i64 [ 0, %.lr.ph143.new ], [ %indvars.iv.next.1, %bb.ba ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph143.new ], [ %niter.next.1, %bb.ba ]
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !139 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !139
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  store ptr %i.gq, ptr %i.gw, align 8, !tbaa !139
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.gv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !176
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.1 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !139 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !139
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next ; 2 uses
  store ptr %i.gy, ptr %i.he, align 8, !tbaa !139
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !176
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ba, !llvm.loop !175

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ba
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph143
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod216 = trunc i32 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod216)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.epil ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !139 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !139
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.epil.init ; 2 uses
  store ptr %i.hg, ptr %i.hm, align 8, !tbaa !139
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i64 %i.hl, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !176
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.h, %bb.j, %_ZN10LogMessageD2Ev.exit102, %_ZN10LogMessageD2Ev.exit
  %.174 = phi i1 [ false, %_ZN10LogMessageD2Ev.exit ], [ false, %bb.j ], [ false, %bb.h ], [ false, %_ZN10LogMessageD2Ev.exit102 ], [ %12, %._crit_edge ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aa, %bb.p, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ba, %bb.p ], [ %i.df, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn

bb.bc:                                            ; preds = %bb.a, %.loopexit
  %.275 = phi i1 [ %.174, %.loopexit ], [ false, %bb.a ]
  ret i1 %.275
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10duckdb_re24Prog11PrefixAccelEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !181, !range !140, !noundef !141
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN10duckdb_re24Prog20PrefixAccel_ShiftDFAEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !150
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN10duckdb_re24Prog24PrefixAccel_FrontAndBackEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef %i.i, i64 noundef %2) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchNFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.duckdb_re2::NFA", align 8   ; 7 uses
  %8 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN10duckdb_re23NFAC2EPNS_4ProgE(ptr noundef nonnull align 8 dereferenceable(233) %7, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.a = icmp eq i32 %4, 2                        ; 4 uses
  %i.b = icmp eq i32 %6, 0                        ; 2 uses
  %spec.select = select i1 %i.b, ptr %8, ptr %5   ; 2 uses
  %spec.select20 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  %.016 = select i1 %i.a, ptr %spec.select, ptr %5
  %.015 = select i1 %i.a, i32 %spec.select20, i32 %6
  %i.c = icmp eq i32 %3, 1
  %i.d = or i1 %i.c, %i.a
  %i.e = icmp ne i32 %4, 0
  %i.f = invoke noundef zeroext i1 @_ZN10duckdb_re23NFA6SearchERKNS_11StringPieceES3_bbPS1_i(ptr noundef nonnull align 8 dereferenceable(233) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %i.d, i1 noundef zeroext %i.e, ptr noundef %.016, i32 noundef %.015)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN10duckdb_re23NFAD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.016.val = load ptr, ptr %spec.select, align 8, !tbaa !148
  %spec.select.sroa.sel.v.sroa.sel.v = select i1 %i.b, ptr %8, ptr %5
  %spec.select.sroa.sel.v.sroa.sel = getelementptr i8, ptr %spec.select.sroa.sel.v.sroa.sel.v, i64 8
  %.016.val22 = load i64, ptr %spec.select.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %.016.val, i64 %.016.val22
  %.val = load ptr, ptr %1, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val21 = load i64, ptr %i.i, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %.val21
  %.not = icmp eq ptr %i.h, %i.j
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN10duckdb_re23NFAD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re24Prog6FanoutEPNS_11SparseArrayIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb_re2::SparseSetT", align 8 ; 21 uses
  %3 = alloca %class.LogMessage, align 8          ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99   ; 7 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i, !prof !100

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = zext nneg i32 %i.b to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 10 uses
  store i32 %i.b, ptr %i.d, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !184
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16
          to label %bb.b unwind label %bb.c       ; 12 uses

bb.b:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store i32 %i.b, ptr %i.j, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.i, ptr %i.k, align 8, !tbaa !184
  %.not157 = icmp eq i32 %i.b, 0
  br i1 %.not157, label %_ZN10duckdb_re210SparseSetTIvEC2Ei.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = add nsw i32 %i.b, -1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, i8 -85, i64 %i.o, i1 false), !tbaa !7
  br label %_ZN10duckdb_re210SparseSetTIvEC2Ei.exit

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #17
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.p, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_re210SparseSetTIvEC2Ei.exit:          ; preds = %bb.b, %.lr.ph.i.i
  store i32 0, ptr %1, align 8, !tbaa !197
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !94   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !198  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  %i.v = load i32, ptr %i.s, align 8
  %.not11.i.i = icmp ule i32 %i.v, %i.r
  %.not.i.i.not = select i1 %.not.i.i.i, i1 true, i1 %.not11.i.i
  br i1 %.not.i.i.not, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit, label %.lr.ph115

.lr.ph115:                                        ; preds = %_ZN10duckdb_re210SparseSetTIvEC2Ei.exit
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !7
  store i32 %i.r, ptr %i.u, align 4, !tbaa !200
  store i32 1, ptr %1, align 8, !tbaa !197
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !201
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 345
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
end_hunk_0
