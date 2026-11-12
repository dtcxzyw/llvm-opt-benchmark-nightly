Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8V3PreLex16verilatorCmtLintEPKcb:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !141
  %i.ak = load ptr, ptr %3, align 8, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.am = load ptr, ptr %3, align 8, !tbaa !90    ; 4 uses
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !141 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %.not6696 = icmp samesign eq i64 %i.an, 0
  br i1 %.not6696, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.i, %bb.k
  %.sroa.060.097 = phi ptr [ %i.ax, %bb.k ], [ %i.am, %bb.i ] ; 3 uses
  %i.ap = load i8, ptr %.sroa.060.097, align 1, !tbaa !45 ; 2 uses
  %i.aq = sext i8 %i.ap to i32
  %i.ar = call i32 @isspace(i32 noundef %i.aq) #46
  %.not46 = icmp ne i32 %i.ar, 0
  %i.as = icmp eq i8 %i.ap, 42
  %or.cond = or i1 %i.as, %.not46
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph99
  %i.at = ptrtoint ptr %.sroa.060.097 to i64
  %i.au = ptrtoint ptr %i.am to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  store i64 %i.av, ptr %i.aj, align 8, !tbaa !141
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !45
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph99
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.060.097, i64 1 ; 2 uses
  %.not66 = icmp eq ptr %i.ax, %i.ao
  br i1 %.not66, label %.loopexit, label %.lr.ph99, !llvm.loop !1022

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !54, !noalias !1025 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55, !noalias !1025
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56, !noalias !1025
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  %i.bi = phi ptr [ %i.bh, %bb.l ], [ %i.az, %.loopexit ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !70
  invoke void @_ZN8FileLine12warnOffParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %4, align 8, !tbaa !90    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.br = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ab
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void

bb.o:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ab
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.o
  %i.by = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.bv
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8V3PreLex23verilatorCmtLintRestoreEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !160
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54, !noalias !1030 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55, !noalias !1030
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN8V3PreLex12curFilelinepEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56, !noalias !1030
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit

_ZN8V3PreLex12curFilelinepEv.exit:                ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.g, %bb.b ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161, !noalias !1031 ; 2 uses
  %i.v = icmp eq ptr %i.c, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -48 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !162
  store i16 %i.x, ptr %i.s, align 8, !tbaa !162
  br label %_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit

bb.e:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !163, !noalias !1031
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !164
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !162
  store i16 %i.ad, ptr %i.s, align 8, !tbaa !162
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef 480) #45
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !165
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  store ptr %i.af, ptr %i.y, align 8, !tbaa !163
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !164 ; 3 uses
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !161
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 480
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !166
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 432
  br label %_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit

_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit:    ; preds = %bb.d, %bb.e
  %.sink2.i = phi ptr [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  store ptr %.sink2.i, ptr %i.a, align 8, !tbaa !167
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.sink2.i) #44
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3PreLex20verilatorCmtLintSaveEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54, !noalias !1034 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55, !noalias !1034
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN8V3PreLex12curFilelinepEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56, !noalias !1034
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit

_ZN8V3PreLex12curFilelinepEv.exit:                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.c, %bb.a ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !167  ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1035
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -48
  %.not.i = icmp eq ptr %i.q, %i.t
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.u = load <2 x i16>, ptr %i.o, align 8, !tbaa !168
  store <2 x i16> %i.u, ptr %i.q, align 8, !tbaa !168
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 1                          ; 2 uses
  %i.z = load i32, ptr %i.v, align 4
  %i.aa = and i32 %i.z, -2
  %i.ab = or disjoint i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.v, align 4
  %i.ac = load i32, ptr %i.w, align 4
  %i.ad = and i32 %i.ac, -2
  %i.ae = or disjoint i32 %i.ad, %i.y
  store i32 %i.ae, ptr %i.v, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ah = load <2 x i32>, ptr %i.ag, align 8, !tbaa !28
  store <2 x i32> %i.ah, ptr %i.af, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 16777215
  %i.am = load i64, ptr %i.ai, align 8
  %i.an = and i64 %i.am, -16777216
  %i.ao = or disjoint i64 %i.an, %i.al            ; 2 uses
  store i64 %i.ao, ptr %i.ai, align 8
  %1 = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 16777215
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 32
  %i.ap = and i64 %i.ao, -72057589742960641
  %i.aq = or disjoint i64 %5, %i.ap
  store i64 %i.aq, ptr %i.ai, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.at = load i16, ptr %i.as, align 8, !tbaa !95
  store i16 %i.at, ptr %i.ar, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !169
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !170 ; 2 uses
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !169
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN8FileLineC2ERKS_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN8FileLineC2ERKS_.exit.i

_ZN8FileLineC2ERKS_.exit.i:                       ; preds = %bb.d, %bb.c
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !167
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !167
  br label %_ZNSt5dequeI8FileLineSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  tail call void @_ZNSt5dequeI8FileLineSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  br label %_ZNSt5dequeI8FileLineSaIS0_EE9push_backERKS0_.exit

_ZNSt5dequeI8FileLineSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZN8FileLineC2ERKS_.exit.i, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define internal fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.244, ptr noundef %0) #47 ; 0 uses
  tail call void @exit(i32 noundef 2) #48
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z15V3PreLexrestartP8_IO_FILE(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr %i.f, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.241) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %i.f, align 8
  store i64 1, ptr @_ZL19yy_buffer_stack_max, align 8, !tbaa !35
  store i64 0, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35
  br label %_ZL27V3PreLexensure_buffer_stackv.exit

.critedge:                                        ; preds = %bb.b
  %i.g = load i64, ptr @_ZL19yy_buffer_stack_max, align 8, !tbaa !35 ; 3 uses
  %i.h = add i64 %i.g, -1
  %.not10.i = icmp ult i64 %i.b, %i.h
  br i1 %.not10.i, label %_ZL27V3PreLexensure_buffer_stackv.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.i = add i64 %i.g, 8                          ; 2 uses
  %i.j = shl i64 %i.i, 3
  %i.k = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.a, i64 noundef %i.j) #43 ; 3 uses
  store ptr %i.k, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.241) #42
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false)
  store i64 %i.i, ptr @_ZL19yy_buffer_stack_max, align 8, !tbaa !35
  br label %_ZL27V3PreLexensure_buffer_stackv.exit

_ZL27V3PreLexensure_buffer_stackv.exit:           ; preds = %bb.e, %.critedge, %bb.h
  %i.m = load ptr, ptr @V3PreLexin, align 8, !tbaa !30
  %i.n = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41 ; 7 uses
  %.not.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL27V3PreLexensure_buffer_stackv.exit
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.35) #42
  unreachable

bb.j:                                             ; preds = %_ZL27V3PreLexensure_buffer_stackv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 16384, ptr %i.o, align 8, !tbaa !39
  %i.p = tail call noalias noundef dereferenceable_or_null(16386) ptr @malloc(i64 noundef 16386) #41 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !40
  %.not9.i5 = icmp eq ptr %i.p, null
  br i1 %.not9.i5, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.35) #42
  unreachable

.thread:                                          ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i32 1, ptr %i.r, align 8, !tbaa !41
  tail call fastcc void @_ZL20V3PreLex_init_bufferP15yy_buffer_stateP8_IO_FILE(ptr noundef nonnull %i.n, ptr noundef %i.m)
  %i.s = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33
  %i.t = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.n, ptr %i.u, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.b
  %i.v = phi ptr [ %i.n, %.thread ], [ %i.d, %bb.b ]
  tail call fastcc void @_ZL20V3PreLex_init_bufferP15yy_buffer_stateP8_IO_FILE(ptr noundef nonnull %i.v, ptr noundef %0)
  %i.w = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33
  %i.x = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !42
  store i32 %i.ab, ptr @_ZL10yy_n_chars, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  store ptr %i.ad, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !27
  store ptr %i.ad, ptr @V3PreLextext, align 8, !tbaa !27
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !44
  store ptr %i.ae, ptr @V3PreLexin, align 8, !tbaa !30
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !45
  store i8 %i.af, ptr @_ZL12yy_hold_char, align 1, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL20V3PreLex_init_bufferP15yy_buffer_stateP8_IO_FILE(ptr nofree noundef captures(address) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @__errno_location() #49    ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.not.i = icmp eq ptr %0, null
  %.pr.pre = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33 ; 4 uses
  br i1 %.not.i, label %_Z21V3PreLex_flush_bufferP15yy_buffer_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  store i8 0, ptr %i.e, align 1, !tbaa !45
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 0, ptr %i.g, align 1, !tbaa !45
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.k, align 8, !tbaa !143
  %.not10.i = icmp eq ptr %.pr.pre, null
  br i1 %.not10.i, label %_Z21V3PreLex_flush_bufferP15yy_buffer_state.exit.thread, label %bb.c

_Z21V3PreLex_flush_bufferP15yy_buffer_state.exit.thread: ; preds = %bb.b
  store ptr %1, ptr %0, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.l, align 4, !tbaa !144
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.pr.pre, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 4 uses
  %i.p = icmp eq ptr %0, %i.o
  br i1 %i.p, label %bb.d, label %_Z21V3PreLex_flush_bufferP15yy_buffer_state.exit.thread17

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !42
  store i32 %i.r, ptr @_ZL10yy_n_chars, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 3 uses
  store ptr %i.t, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_:bb.a
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5
  %i.ad = add nsw i64 %i.v, %i.ac
  %i.ae = icmp eq i64 %i.ad, 288230376151711743
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !370
  %i.ah = load ptr, ptr %0, align 8, !tbaa !369
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.h, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !197
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !212 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !140
  %i.as = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !141 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %i.au, ptr %i.a, align 8, !tbaa !35
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !90
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit
  %i.ay = phi ptr [ %i.aw, %.noexc ], [ %i.ar, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit ] ; 2 uses
  switch i64 %i.au, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.az = load i8, ptr %i.as, align 1, !tbaa !45
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !45
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !141
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !178
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !197 ; 3 uses
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !180
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !181
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !212
  ret void

bb.h:                                             ; preds = %.noexc.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  %i.bl = call ptr @__cxa_begin_catch(ptr %i.bk) #44 ; 0 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !197
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #45
  invoke void @__cxa_rethrow() #42
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bp

bb.k:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #51
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI8FileLineSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 10
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 48
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !160
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 192153584101141162
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !402
  %i.ag = load ptr, ptr %0, align 8, !tbaa !400
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeI8FileLineSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #50
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !164
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !167 ; 6 uses
  %i.aq = load <2 x i16>, ptr %1, align 8, !tbaa !168
  store <2 x i16> %i.aq, ptr %i.ap, align 8, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 1                        ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4
  %i.aw = and i32 %i.av, -2
  %i.ax = or disjoint i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.ar, align 4
  %i.ay = load i32, ptr %i.as, align 4
  %i.az = and i32 %i.ay, -2
  %i.ba = or disjoint i32 %i.az, %i.au
  store i32 %i.ba, ptr %i.ar, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !28
  store <2 x i32> %i.bd, ptr %i.bb, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, 16777215
  %i.bi = load i64, ptr %i.be, align 8
  %i.bj = and i64 %i.bi, -16777216
  %i.bk = or disjoint i64 %i.bj, %i.bh            ; 2 uses
  store i64 %i.bk, ptr %i.be, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777215
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %i.bl = and i64 %i.bk, -72057589742960641
  %i.bm = or disjoint i64 %6, %i.bl
  store i64 %i.bm, ptr %i.be, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !95
  store i16 %i.bp, ptr %i.bn, align 8, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.br, align 8, !tbaa !169
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !170 ; 2 uses
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !169
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt16allocator_traitsISaI8FileLineEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt16allocator_traitsISaI8FileLineEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaI8FileLineEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit: ; preds = %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit, %bb.e
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !163
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !164 ; 3 uses
  store ptr %i.by, ptr %i.o, align 8, !tbaa !161
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 480
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !166
  store ptr %i.by, ptr %i.a, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI8FileLineSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !402  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !400
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !308

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !164
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !164
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !308

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !164
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !164
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit, !prof !200

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #50 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !401 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !308

bb.m:                                             ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !164
  store ptr %i.be, ptr %i.av, align 8, !tbaa !164
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24

_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24:      ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !400
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !402
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #45
  store ptr %i.aq, ptr %0, align 8, !tbaa !400
  store i64 %i.am, ptr %i.k, align 8, !tbaa !402
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit:        ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !163
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !164  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !161
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 480
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !166
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !163
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !164 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !161
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 480
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE11equal_rangeERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.065 = load ptr, ptr %i.a, align 8, !tbaa !284 ; 2 uses
  %.not66 = icmp eq ptr %.065, null
  br i1 %.not66, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !141  ; 8 uses
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.d ] ; 8 uses
end_hunk_1
