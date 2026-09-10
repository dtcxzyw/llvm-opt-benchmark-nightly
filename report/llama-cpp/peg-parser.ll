Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/peg-parser?download=true
inline.NumInlined: 11123
inline.NumDeleted: 4735
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN15parser_executorclERK24common_peg_choice_parser:bb.a
bb.v:                                             ; preds = %bb.u
  %i.fh = load ptr, ptr %i.bf, align 8, !tbaa !146
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #33
  br label %_ZN23common_peg_parse_resultD2Ev.exit57

.critedge30.loopexit:                             ; preds = %_ZN23common_peg_parse_resultD2Ev.exit
  %.pre98 = load ptr, ptr %i.a, align 8, !tbaa !251 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre98, i64 64
  %.pre99 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !264
  %i.fl = add nsw i32 %.pre99, -1
  br label %.critedge30

.critedge30:                                      ; preds = %.critedge30.loopexit, %bb.e
  %i.fm = phi i32 [ %i.fl, %.critedge30.loopexit ], [ %i.an, %bb.e ] ; 2 uses
  %i.fn = phi ptr [ %.pre98, %.critedge30.loopexit ], [ %i.al, %bb.e ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  store i32 %i.fm, ptr %i.fo, align 8, !tbaa !264
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !258
  %i.fr = and i32 %i.fq, 2
  %.not62 = icmp eq i32 %i.fr, 0
  br i1 %.not62, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge30
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ft = shl nsw i32 %i.fm, 1
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.fv, ptr %11, align 8, !tbaa !84, !alias.scope !958
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.fu, i8 noundef signext 32)
  %i.fw = load ptr, ptr %11, align 8, !tbaa !67
  %i.fx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.61, ptr noundef %i.fw) #36 ; 0 uses
  %i.fy = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.fv
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.w
  %i.ga = load i64, ptr %i.fv, align 8, !tbaa !81
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %.critedge30
  %i.gc = load i64, ptr %i.ap, align 8, !tbaa !104 ; 2 uses
  store i32 0, ptr %0, align 8, !tbaa !248
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !249
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gc, ptr %i.ge, align 8, !tbaa !250
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i8 0, i64 24, i1 false)
  br label %.critedge29

.critedge29:                                      ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.x
  ret void

_ZN23common_peg_parse_resultD2Ev.exit57:          ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %bb.u ], [ %.pn, %bb.v ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15parser_executorclERK28common_peg_repetition_parser(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::set", align 8          ; 11 uses
  %4 = alloca %struct.parser_executor, align 8    ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::vector", align 16      ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %struct.common_peg_parse_result, align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !143, !align !144 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !258
  %i.e = and i32 %i.d, 2
  %.not144 = icmp eq i32 %i.e, 0
  br i1 %.not144, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !264, !noalias !987
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !84, !alias.scope !987
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.j, i8 noundef signext 32)
  %i.l = load ptr, ptr %5, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !104  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNK15parser_executor19debug_input_snippetB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n, i64 noundef 60)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %6, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !270
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !271
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.62, ptr noundef %i.l, i64 noundef %i.n, ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.s) #36 ; 0 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !67     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !81
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.z = load ptr, ptr %5, align 8, !tbaa !67     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.k
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !81
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !251
  br label %.preheader

bb.d:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ae = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.k
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.d
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !81
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bf

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.a
  %i.ai = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.b, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !264
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !264
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.promoted = load i32, ptr %0, align 8          ; 14 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 19 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  %.promoted238 = load i64, ptr %i.bg, align 8    ; 14 uses
  %.promoted253 = load i64, ptr %i.bh, align 8    ; 14 uses
  %.promoted268 = load ptr, ptr %i.bi, align 8    ; 14 uses
  %.promoted268.a = load ptr, ptr %i.bj, align 8  ; 14 uses
  %.promoted283 = load ptr, ptr %i.bk, align 8    ; 14 uses
  %i.bo = load i32, ptr %i.ao, align 4, !tbaa !271 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, -1
  %i.bq = icmp sgt i32 %i.bo, 0
  %or.cond614 = or i1 %i.bp, %i.bq
  br i1 %or.cond614, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %.preheader, %_ZN23common_peg_parse_resultD2Ev.exit.jt2
  %.039616 = phi i64 [ %i.ik, %_ZN23common_peg_parse_resultD2Ev.exit.jt2 ], [ %i.an, %.preheader ] ; 6 uses
  %.042615 = phi i32 [ %i.il, %_ZN23common_peg_parse_resultD2Ev.exit.jt2 ], [ 0, %.preheader ] ; 7 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !143, !align !144 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !66
  %.not = icmp ult i64 %.039616, %i.bt
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.critedge
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !258
  %i.bw = and i32 %i.bv, 2
  %.not145 = icmp eq i32 %i.bw, 0
  br i1 %.not145, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !264, !noalias !988
  %i.ca = shl nsw i32 %i.bz, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.cc, ptr %8, align 8, !tbaa !84, !alias.scope !988
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.cb, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit unwind label %bb.g

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit: ; preds = %bb.f
  %i.cd = load ptr, ptr %8, align 8, !tbaa !67
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.63, ptr noundef %i.cd, i32 noundef %.042615) #36 ; 0 uses
  %i.cf = load ptr, ptr %8, align 8, !tbaa !67    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.cc
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit
  %i.ch = load i64, ptr %i.cc, align 8, !tbaa !81
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.aq

bb.g:                                             ; preds = %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.bd

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ck = load ptr, ptr %1, align 8, !tbaa !263, !nonnull !143, !align !144 ; 3 uses
  %i.cl = load i64, ptr %2, align 8, !tbaa !272   ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !72, !noalias !989
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !73, !noalias !989 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 80                ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cl, %i.cs
  br i1 %.not.i.i.i, label %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, i64 noundef %i.cl, i64 noundef %i.cs) #30
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !98

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i: ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw [80 x i8], ptr %i.co, i64 %i.cl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !989
  store ptr %i.ck, ptr %4, align 8, !tbaa !100, !noalias !989
  store ptr %i.br, ptr %i.ap, align 8, !tbaa !102, !noalias !989
  store i64 %.039616, ptr %i.aq, align 8, !tbaa !104, !noalias !989
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !76, !noalias !990 ; 2 uses
  %.not.i.i4.i = icmp eq i8 %i.cv, -1
  br i1 %.not.i.i4.i, label %bb.j, label %_ZSt5visitIR15parser_executorJRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISU_EEEEE4typeEE4typeEOS13_EEEE4typeEOSS_DpOSU_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  %i.cw = call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !990, !inline_history !1 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cw, align 8, !tbaa !106, !noalias !990
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr @.str.41, ptr %i.cx, align 8, !tbaa !109, !noalias !990
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.noexc66 unwind label %.loopexit.split-lp, !inline_history !98

.noexc66:                                         ; preds = %bb.j
  unreachable

_ZSt5visitIR15parser_executorJRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISU_EEEEE4typeEE4typeEOS13_EEEE4typeEOSS_DpOSU_.exit.i: ; preds = %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i
  %i.cy = sext i8 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorJRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEE9_S_vtableE, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !80, !noalias !991
  invoke void %i.da(ptr dead_on_unwind nonnull writable sret(%struct.common_peg_parse_result) align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(73) %i.ct)
          to label %bb.k unwind label %.loopexit153, !inline_history !98

bb.k:                                             ; preds = %_ZSt5visitIR15parser_executorJRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISU_EEEEE4typeEE4typeEOS13_EEEE4typeEOSS_DpOSU_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !989
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !143, !align !144 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !258
  %i.de = and i32 %i.dd, 2
  %.not146 = icmp eq i32 %i.de, 0
  br i1 %.not146, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !264, !noalias !992
  %i.di = shl nsw i32 %i.dh, 1
  %i.dj = sext i32 %i.di to i64
  store ptr %i.ar, ptr %10, align 8, !tbaa !84, !alias.scope !992
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.dj, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit69 unwind label %bb.p

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit69: ; preds = %bb.l
  %i.dk = load ptr, ptr %10, align 8, !tbaa !67
  %i.dl = load i32, ptr %9, align 8, !tbaa !248   ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 3
  br i1 %i.dm, label %switch.lookup, label %_Z33common_peg_parse_result_type_name28common_peg_parse_result_type.exit

switch.lookup:                                    ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit69
  %i.dn = zext nneg i32 %i.dl to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN15parser_executorclERK28common_peg_repetition_parser, i64 %i.dn
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_Z33common_peg_parse_result_type_name28common_peg_parse_result_type.exit

_Z33common_peg_parse_result_type_name28common_peg_parse_result_type.exit: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit69, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit69 ]
  %i.do = load i64, ptr %i.as, align 8, !tbaa !249
  %i.dp = load i64, ptr %i.at, align 8, !tbaa !250
  %i.dq = load ptr, ptr %i.av, align 8, !tbaa !147
  %i.dr = load ptr, ptr %i.au, align 8, !tbaa !145
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 3
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.64, ptr noundef %i.dk, i32 noundef %.042615, ptr noundef nonnull %.0.i, i64 noundef %i.do, i64 noundef %i.dp, i64 noundef %i.dv) #36 ; 0 uses
  %i.dx = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ar
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_Z33common_peg_parse_result_type_name28common_peg_parse_result_type.exit
  %i.dz = load i64, ptr %i.ar, align 8, !tbaa !81
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_Z33common_peg_parse_result_type_name28common_peg_parse_result_type.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !251, !noalias !993, !nonnull !143, !align !144
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !264, !noalias !993
  %i.ef = shl nsw i32 %i.ee, 1
  %i.eg = sext i32 %i.ef to i64
  store ptr %i.aw, ptr %11, align 8, !tbaa !84, !alias.scope !993
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.eg, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit74 unwind label %bb.q

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.eh = load ptr, ptr %11, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.ei = load ptr, ptr %1, align 8, !tbaa !263, !nonnull !143, !align !144
  %i.ej = load i64, ptr %2, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !994
  store i32 0, ptr %i.ax, align 8, !tbaa !130, !noalias !994
  store ptr null, ptr %i.ay, align 8, !tbaa !131, !noalias !994
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !132, !noalias !994
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !133, !noalias !994
  store i64 0, ptr %i.bb, align 8, !tbaa !134, !noalias !994
  invoke void @_ZNK16common_peg_arena9dump_implB5cxx11EmRSt3setImSt4lessImESaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(88) %i.ei, i64 noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.m unwind label %.body, !inline_history !267

bb.m:                                             ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit74
  %i.ek = load ptr, ptr %i.ay, align 8, !tbaa !131, !noalias !994
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ek)
          to label %bb.o unwind label %bb.n, !inline_history !267

bb.n:                                             ; preds = %bb.m
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #32, !inline_history !267
  unreachable

.body:                                            ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit74
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #31, !inline_history !267
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !994
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.eo = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.aw
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !994
  %i.eq = load ptr, ptr %12, align 8, !tbaa !67
  %i.er = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.65, ptr noundef %i.eh, ptr noundef %i.eq) #36 ; 0 uses
  %i.es = load ptr, ptr %12, align 8, !tbaa !67   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bc
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.o
  %i.eu = load i64, ptr %i.bc, align 8, !tbaa !81
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.ew = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.aw
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.ey = load i64, ptr %i.aw, align 8, !tbaa !81
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.r

.loopexit153:                                     ; preds = %_ZSt5visitIR15parser_executorJRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISU_EEEEE4typeEE4typeEOS13_EEEE4typeEOSS_DpOSU_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  br label %_ZN23common_peg_parse_resultD2Ev.exit104

.loopexit.split-lp:                               ; preds = %bb.i, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN23common_peg_parse_resultD2Ev.exit104

bb.p:                                             ; preds = %bb.l
  %i.fa = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.ao

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.fb = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %.body
  %i.fc = load i64, ptr %i.aw, align 8, !tbaa !81
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.q
  %.pn = phi { ptr, i32 } [ %i.fb, %bb.q ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.en, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.ao

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.k
  %i.fe = load i32, ptr %9, align 8, !tbaa !248
  switch i32 %i.fe, label %bb.af [
    i32 1, label %bb.s
    i32 2, label %bb.z
  ]

bb.s:                                             ; preds = %bb.r
  %i.ff = load i64, ptr %i.at, align 8, !tbaa !250 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %.039616
  br i1 %i.fg, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !143, !align !144 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !258
  %i.fk = and i32 %i.fj, 2
  %.not148 = icmp eq i32 %i.fk, 0
  br i1 %.not148, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !264, !noalias !995
  %i.fo = shl nsw i32 %i.fn, 1
  %i.fp = sext i32 %i.fo to i64
  store ptr %i.bl, ptr %13, align 8, !tbaa !84, !alias.scope !995
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.fp, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit85 unwind label %bb.v

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit85: ; preds = %bb.u
  %i.fq = load ptr, ptr %13, align 8, !tbaa !67
  %i.fr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fl, ptr noundef nonnull @.str.66, ptr noundef %i.fq) #36 ; 0 uses
  %i.fs = load ptr, ptr %13, align 8, !tbaa !67   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bl
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit85
  %i.fu = load i64, ptr %i.bl, align 8, !tbaa !81
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.ak

bb.v:                                             ; preds = %bb.u
  %i.fw = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.ao

bb.w:                                             ; preds = %bb.s
  %i.fx = load ptr, ptr %i.au, align 8, !tbaa !56 ; 3 uses
  %i.fy = load ptr, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ga = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.gb = load ptr, ptr %7, align 16, !tbaa !56   ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.gb, i64 %i.ge
  invoke void @_ZNSt6vectorImSaImEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPmS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.gf, ptr %i.fx, ptr %i.fy)
          to label %._crit_edge unwind label %bb.y

._crit_edge:                                      ; preds = %bb.x
  %.pre445 = load i64, ptr %i.at, align 8, !tbaa !250
  %.pr = load ptr, ptr %i.au, align 8, !tbaa !145
  br label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.gg = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  br label %bb.ao

bb.z:                                             ; preds = %bb.r
  %i.gh = load ptr, ptr %i.au, align 8, !tbaa !56 ; 2 uses
  %i.gi = load ptr, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gk = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.gl = load ptr, ptr %7, align 16, !tbaa !56   ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.gl, i64 %i.go
  invoke void @_ZNSt6vectorImSaImEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPmS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.gp, ptr %i.gh, ptr %i.gi)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gq = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  br label %bb.ao

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !143, !align !144 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 64 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !264
  %i.gu = add nsw i32 %i.gt, -1                   ; 2 uses
  store i32 %i.gu, ptr %i.gs, align 8, !tbaa !264
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !258
  %i.gx = and i32 %i.gw, 2
  %.not147 = icmp eq i32 %i.gx, 0
  br i1 %.not147, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.gz = shl nsw i32 %i.gu, 1
  %i.ha = sext i32 %i.gz to i64
  store ptr %i.be, ptr %14, align 8, !tbaa !84, !alias.scope !996
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.ha, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit93 unwind label %bb.ae

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit93: ; preds = %bb.ad
  %i.hb = load ptr, ptr %14, align 8, !tbaa !67
  %i.hc = load ptr, ptr %i.bd, align 8, !tbaa !147
  %i.hd = load ptr, ptr %7, align 16, !tbaa !145
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = ashr exact i64 %i.hg, 3
  %i.hi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gy, ptr noundef nonnull @.str.67, ptr noundef %i.hb, i32 noundef %.042615, i64 noundef %i.hh) #36 ; 0 uses
  %i.hj = load ptr, ptr %14, align 8, !tbaa !67   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.be
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit93
  %i.hl = load i64, ptr %i.be, align 8, !tbaa !81
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.hn = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.ao

bb.af:                                            ; preds = %bb.r
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !143, !align !144 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !258
  %i.hr = and i32 %i.hq, 2
  %.not149 = icmp eq i32 %i.hr, 0
  br i1 %.not149, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hs = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !264, !noalias !997
  %i.hv = shl nsw i32 %i.hu, 1
  %i.hw = sext i32 %i.hv to i64
  store ptr %i.bm, ptr %15, align 8, !tbaa !84, !alias.scope !997
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.hw, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit99 unwind label %bb.ah

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit99: ; preds = %bb.ag
  %i.hx = load ptr, ptr %15, align 8, !tbaa !67
  %i.hy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hs, ptr noundef nonnull @.str.68, ptr noundef %i.hx) #36 ; 0 uses
  %i.hz = load ptr, ptr %15, align 8, !tbaa !67   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.bm
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit99
  %i.ib = load i64, ptr %i.bm, align 8, !tbaa !81
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.id = landingpad { ptr, i32 }
          cleanup
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.ao

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.ac
  %i.ie = load i64, ptr %i.am, align 8, !tbaa !104
  %i.if = load i64, ptr %i.at, align 8, !tbaa !250
  %i.ig = load <2 x ptr>, ptr %7, align 16, !tbaa !56
  %i.ih = load ptr, ptr %i.bf, align 16, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ii = load ptr, ptr %i.au, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i.jt1 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.jt1, label %_ZN23common_peg_parse_resultD2Ev.exit.jt1, label %bb.al

bb.aj:                                            ; preds = %bb.w, %._crit_edge
  %i.ij = phi ptr [ %i.fx, %bb.w ], [ %.pr, %._crit_edge ] ; 3 uses
  %i.ik = phi i64 [ %i.ff, %bb.w ], [ %.pre445, %._crit_edge ] ; 2 uses
  %i.il = add nuw nsw i32 %.042615, 1             ; 3 uses
  %.not.i.i.i.i.jt2 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.jt2, label %_ZN23common_peg_parse_resultD2Ev.exit.jt2, label %bb.am

bb.ak:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.t
  %i.im = load ptr, ptr %i.au, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i.jt3 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i.jt3, label %_ZN23common_peg_parse_resultD2Ev.exit.jt3, label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.in = load ptr, ptr %i.bn, align 8, !tbaa !146
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.ii to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.iq) #33
  br label %_ZN23common_peg_parse_resultD2Ev.exit.jt1

bb.am:                                            ; preds = %bb.aj
  %i.ir = load ptr, ptr %i.bn, align 8, !tbaa !146
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ij to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.iu) #33
  br label %_ZN23common_peg_parse_resultD2Ev.exit.jt2

bb.an:                                            ; preds = %bb.ak
  %i.iv = load ptr, ptr %i.bn, align 8, !tbaa !146
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.im to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.iy) #33
  br label %_ZN23common_peg_parse_resultD2Ev.exit.jt3

_ZN23common_peg_parse_resultD2Ev.exit.jt1:        ; preds = %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  store i64 %i.ie, ptr %i.bg, align 8
  store i64 %i.if, ptr %i.bh, align 8
  store <2 x ptr> %i.ig, ptr %i.bi, align 8
  store ptr %i.ih, ptr %i.bk, align 8
  store i32 2, ptr %0, align 8
  br label %bb.bb

_ZN23common_peg_parse_resultD2Ev.exit.jt2:        ; preds = %bb.am, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.iz = load i32, ptr %i.ao, align 4, !tbaa !271 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, -1
  %i.jb = icmp slt i32 %i.il, %i.iz
  %or.cond = select i1 %i.ja, i1 true, i1 %i.jb
  br i1 %or.cond, label %.critedge, label %.loopexit

_ZN23common_peg_parse_resultD2Ev.exit.jt3:        ; preds = %bb.an, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.loopexit

bb.ao:                                            ; preds = %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.p
  %.pn49 = phi { ptr, i32 } [ %i.fw, %bb.v ], [ %i.gg, %bb.y ], [ %i.hn, %bb.ae ], [ %i.gq, %bb.ab ], [ %i.id, %bb.ah ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.fa, %bb.p ] ; 2 uses
  %i.jc = load ptr, ptr %i.au, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i103, label %_ZN23common_peg_parse_resultD2Ev.exit104, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jd = load ptr, ptr %i.bn, align 8, !tbaa !146
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jg) #33
  br label %_ZN23common_peg_parse_resultD2Ev.exit104

_ZN23common_peg_parse_resultD2Ev.exit104:         ; preds = %.loopexit153, %.loopexit.split-lp, %bb.ap, %bb.ao
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.ap ], [ %.pn49, %bb.ao ], [ %lpad.loopexit, %.loopexit153 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.bd

.loopexit:                                        ; preds = %_ZN23common_peg_parse_resultD2Ev.exit.jt2, %.preheader, %_ZN23common_peg_parse_resultD2Ev.exit.jt3
  %.042579 = phi i32 [ %.042615, %_ZN23common_peg_parse_resultD2Ev.exit.jt3 ], [ 0, %.preheader ], [ %i.il, %_ZN23common_peg_parse_resultD2Ev.exit.jt2 ]
  %.039564 = phi i64 [ %.039616, %_ZN23common_peg_parse_resultD2Ev.exit.jt3 ], [ %i.an, %.preheader ], [ %i.ik, %_ZN23common_peg_parse_resultD2Ev.exit.jt2 ]
  store i64 %.promoted238, ptr %i.bg, align 8
  store i64 %.promoted253, ptr %i.bh, align 8
  store ptr %.promoted268, ptr %i.bi, align 8
  store ptr %.promoted268.a, ptr %i.bj, align 8
  store ptr %.promoted283, ptr %i.bk, align 8
  store i32 %.promoted, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.042578 = phi i32 [ %.042579, %.loopexit ], [ %.042615, %bb.e ], [ %.042615, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ] ; 4 uses
  %.039563 = phi i64 [ %.039564, %.loopexit ], [ %.039616, %bb.e ], [ %.039616, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ] ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !270 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  %i.jk = icmp slt i32 %.042578, %i.ji
  %or.cond56 = select i1 %i.jj, i1 %i.jk, i1 false
  %i.jl = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !143, !align !144 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 64 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !264
  %i.jo = add nsw i32 %i.jn, -1                   ; 4 uses
  store i32 %i.jo, ptr %i.jm, align 8, !tbaa !264
  br i1 %or.cond56, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !66
  %.not52 = icmp uge i64 %.039563, %i.jq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %.pre447 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !258 ; 2 uses
  %i.jr = trunc i32 %.pre447 to i1
  %or.cond550 = select i1 %.not52, i1 %i.jr, i1 false
  %i.js = and i32 %.pre447, 2
  %.not151 = icmp eq i32 %i.js, 0                 ; 2 uses
  br i1 %or.cond550, label %bb.as, label %._crit_edge446

bb.as:                                            ; preds = %bb.ar
  br i1 %.not151, label %_ZNSt6vectorImSaImEED2Ev.exit111, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.ju = shl nsw i32 %i.jo, 1
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.jw, ptr %16, align 8, !tbaa !84, !alias.scope !998
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.jv, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit106 unwind label %bb.au

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit106: ; preds = %bb.at
  %i.jx = load ptr, ptr %16, align 8, !tbaa !67
  %i.jy = load i32, ptr %i.jh, align 8, !tbaa !270
  %i.jz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jt, ptr noundef nonnull @.str.69, ptr noundef %i.jx, i32 noundef %.042578, i32 noundef %i.jy) #36 ; 0 uses
  %i.ka = load ptr, ptr %16, align 8, !tbaa !67   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jw
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit106
  %i.kc = load i64, ptr %i.jw, align 8, !tbaa !81
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit111

bb.au:                                            ; preds = %bb.at
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.bd

_ZNSt6vectorImSaImEED2Ev.exit111:                 ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.kf = load i64, ptr %i.am, align 8, !tbaa !104
  %i.kg = load ptr, ptr %i.bf, align 16, !tbaa !146
  %i.kh = load <2 x ptr>, ptr %7, align 16, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 2, ptr %0, align 8, !tbaa !248
  store i64 %i.kf, ptr %i.bg, align 8, !tbaa !249
  store i64 %.039563, ptr %i.bh, align 8, !tbaa !250
  store <2 x ptr> %i.kh, ptr %i.bi, align 8, !tbaa !56
  store ptr %i.kg, ptr %i.bk, align 8, !tbaa !146
  br label %bb.bb

._crit_edge446:                                   ; preds = %bb.ar
  br i1 %.not151, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %._crit_edge446
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.kj = shl nsw i32 %i.jo, 1
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.kl, ptr %17, align 8, !tbaa !84, !alias.scope !999
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.kk, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit113 unwind label %bb.aw

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit113: ; preds = %bb.av
  %i.km = load ptr, ptr %17, align 8, !tbaa !67
  %i.kn = load i32, ptr %i.jh, align 8, !tbaa !270
  %i.ko = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.70, ptr noundef %i.km, i32 noundef %.042578, i32 noundef %i.kn) #36 ; 0 uses
  %i.kp = load ptr, ptr %17, align 8, !tbaa !67   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.kl
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit113
  %i.kr = load i64, ptr %i.kl, align 8, !tbaa !81
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.bd

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %._crit_edge446
  %i.ku = load i64, ptr %i.am, align 8, !tbaa !104
  store i32 0, ptr %0, align 8, !tbaa !248
  store i64 %i.ku, ptr %i.bg, align 8, !tbaa !249
  store i64 %.039563, ptr %i.bh, align 8, !tbaa !250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aq
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !258
  %i.kx = and i32 %i.kw, 2
  %.not150 = icmp eq i32 %i.kx, 0
  br i1 %.not150, label %_ZNSt6vectorImSaImEED2Ev.exit123, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ky = load ptr, ptr @stderr, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  %i.kz = shl nsw i32 %i.jo, 1
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.lb, ptr %18, align 8, !tbaa !84, !alias.scope !1000
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.la, i8 noundef signext 32)
          to label %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit118 unwind label %bb.ba

_ZNK15parser_executor12debug_indentB5cxx11Ev.exit118: ; preds = %bb.az
  %i.lc = load ptr, ptr %18, align 8, !tbaa !67
  %i.ld = load ptr, ptr %i.bd, align 8, !tbaa !147
  %i.le = load ptr, ptr %7, align 16, !tbaa !145
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = ashr exact i64 %i.lh, 3
  %i.lj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ky, ptr noundef nonnull @.str.71, ptr noundef %i.lc, i32 noundef %.042578, i64 noundef %i.li) #36 ; 0 uses
  %i.lk = load ptr, ptr %18, align 8, !tbaa !67   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.lb
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit118
  %i.lm = load i64, ptr %i.lb, align 8, !tbaa !81
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNK15parser_executor12debug_indentB5cxx11Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit123

bb.ba:                                            ; preds = %bb.az
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.bd

_ZNSt6vectorImSaImEED2Ev.exit123:                 ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.lp = load i64, ptr %i.am, align 8, !tbaa !104
  %i.lq = load ptr, ptr %i.bf, align 16, !tbaa !146
  %i.lr = load <2 x ptr>, ptr %7, align 16, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !248
  store i64 %i.lp, ptr %i.bg, align 8, !tbaa !249
  store i64 %.039563, ptr %i.bh, align 8, !tbaa !250
  store <2 x ptr> %i.lr, ptr %i.bi, align 8, !tbaa !56
  store ptr %i.lq, ptr %i.bk, align 8, !tbaa !146
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN23common_peg_parse_resultD2Ev.exit.jt1, %_ZNSt6vectorImSaImEED2Ev.exit123, %bb.ax, %_ZNSt6vectorImSaImEED2Ev.exit111
  %i.ls = load ptr, ptr %7, align 16, !tbaa !145  ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorImSaImEED2Ev.exit125, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lt = load ptr, ptr %i.bf, align 16, !tbaa !146
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lw) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit125

_ZNSt6vectorImSaImEED2Ev.exit125:                 ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret void

bb.bd:                                            ; preds = %bb.ba, %bb.aw, %bb.au, %_ZN23common_peg_parse_resultD2Ev.exit104, %bb.g
end_hunk_0
