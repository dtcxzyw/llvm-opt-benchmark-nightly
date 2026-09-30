Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/PbrtExporter?download=true
inline.NumInlined: 1466
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp12PbrtExporter17TransformAsStringB5cxx11ERK12aiMatrix4x4tIfE:bb.a
  %i.ba = fpext float %i.az to double
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, double noundef %i.ba)
          to label %_ZNSolsEf.exit35 unwind label %bb.e ; 2 uses

_ZNSolsEf.exit35:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZNSolsEf.exit35
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fpext float %i.be to double
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, double noundef %i.bf)
          to label %_ZNSolsEf.exit37 unwind label %bb.e ; 2 uses

_ZNSolsEf.exit37:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZNSolsEf.exit37
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = fpext float %i.bj to double
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, double noundef %i.bk)
          to label %_ZNSolsEf.exit39 unwind label %bb.e ; 2 uses

_ZNSolsEf.exit39:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %_ZNSolsEf.exit39
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fpext float %i.bo to double
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, double noundef %i.bp)
          to label %_ZNSolsEf.exit41 unwind label %bb.e ; 2 uses

_ZNSolsEf.exit41:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZNSolsEf.exit41
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fpext float %i.bt to double
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, double noundef %i.bu)
          to label %_ZNSolsEf.exit43 unwind label %bb.e ; 2 uses

_ZNSolsEf.exit43:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZNSolsEf.exit43
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = fpext float %i.by to double
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, double noundef %i.bz)
          to label %_ZNSolsEf.exit45 unwind label %bb.e ; 0 uses

_ZNSolsEf.exit45:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cb, ptr %0, align 8, !alias.scope !75
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cc, align 8, !alias.scope !75
  store i8 0, ptr %i.cb, align 8, !alias.scope !75
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !75 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ce, null
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !75 ; 2 uses
  %i.ch = icmp ugt ptr %i.ce, %i.cg
  %.08.i.i.i = select i1 %i.ch, ptr %i.ce, ptr %i.cg ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEf.exit45
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !75 ; 2 uses
  %i.ck = ptrtoint ptr %.08.i.i.i to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.cj, i64 noundef %i.cm)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %0, align 8, !alias.scope !75 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cb
  br i1 %i.cq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.cr = load i64, ptr %i.cb, align 8, !alias.scope !75
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #26
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEf.exit45
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.cu = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cu, ptr %2, align 8
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cw = getelementptr i8, ptr %i.cu, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %2, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cz, ptr %i.a, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.df = load i64, ptr %i.dd, align 8
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dh) #24
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.di, ptr %2, align 8
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dk = getelementptr i8, ptr %i.di, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %2, i64 %i.dl
  store ptr %i.dj, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.do) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZNSolsEf.exit43, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42, %_ZNSolsEf.exit41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %_ZNSolsEf.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %_ZNSolsEf.exit37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZNSolsEf.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %_ZNSolsEf.exit33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZNSolsEf.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZNSolsEf.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %_ZNSolsEf.exit27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZNSolsEf.exit25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %_ZNSolsEf.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZNSolsEf.exit21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZNSolsEf.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZNSolsEf.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEf.exit, %bb.a
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.dp, %bb.e ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.co, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12PbrtExporter11WriteLightsEv(ptr noundef nonnull align 8 dereferenceable(624) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.aiMatrix4x4t, align 4        ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 50 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.111, i64 noundef 18) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.112, i64 noundef 10) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.m = load i32, ptr %i.l, align 8
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.113, i64 noundef 51) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.114, i64 noundef 15) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.115, i64 noundef 20) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.116, i64 noundef 50) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.117, i64 noundef 14) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.s = phi ptr [ %i.f, %.lr.ph ], [ %i.kg, %bb.l ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 33 uses
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.118, i64 noundef 8) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #24
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.y, i64 noundef %i.z) ; 0 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.114, i64 noundef 15) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZNK6Assimp12PbrtExporter16GetNodeTransformERK8aiString(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 4 %1, ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 4 dereferenceable(1028) %i.w)
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.119, i64 noundef 16) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN6Assimp12PbrtExporter17TransformAsStringB5cxx11ERK12aiMatrix4x4tIfE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(64) %1)
  %i.ae = load ptr, ptr %2, align 8
  %i.af = load i64, ptr %i.j, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ae, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.101, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.k
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = load i64, ptr %i.k, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 1080
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 1092
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 1088
  %i.ap = load float, ptr %i.ao, align 4, !noalias !79
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 1100
  %i.ar = load float, ptr %i.aq, align 4, !noalias !79
  %i.as = fadd float %i.ap, %i.ar                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 1068
  %i.au = load float, ptr %i.at, align 4          ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00      ; 2 uses
  %i.aw = fdiv float 1.000000e+00, %i.au          ; 2 uses
  %i.ax = load <2 x float>, ptr %i.am, align 4, !noalias !79
  %i.ay = load <2 x float>, ptr %i.an, align 4, !noalias !79
  %i.az = fadd <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.az, %i.bb
  %i.bd = fmul float %i.as, %i.aw
  %i.be = insertelement <2 x i1> poison, i1 %i.av, i64 0
  %i.bf = shufflevector <2 x i1> %i.be, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bg = select <2 x i1> %i.bf, <2 x float> %i.bc, <2 x float> %i.az ; 4 uses
  %.sroa.16.0 = select i1 %i.av, float %i.bd, float %i.as ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 1028
  %i.bi = load i32, ptr %i.bh, align 4
  switch i32 %i.bi, label %bb.k [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
  ]

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %2, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.k
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.e
  %i.bm = load i64, ptr %i.k, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.bj

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.120, i64 noundef 26) ; 0 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.121, i64 noundef 24) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 1032 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = fpext float %i.br to double
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.bs) ; 2 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 1036 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = fpext float %i.bw to double
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, double noundef %i.bx) ; 2 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = fpext float %i.cb to double
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.by, double noundef %i.cc)
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 1044
  %i.cg = load float, ptr %i.bq, align 4
  %i.ch = load float, ptr %i.cf, align 4
  %i.ci = fadd float %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 1048
  %i.ck = load <2 x float>, ptr %i.bv, align 4
  %i.cl = load <2 x float>, ptr %i.cj, align 4
  %i.cm = fadd <2 x float> %i.ck, %i.cl
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.122, i64 noundef 22) ; 0 uses
  %i.co = fpext float %i.ci to double
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.co) ; 2 uses
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.cr = fpext <2 x float> %i.cm to <2 x double> ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, double noundef %i.cs) ; 2 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.cv = extractelement <2 x double> %i.cr, i64 1
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, double noundef %i.cv)
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.123, i64 noundef 18) ; 0 uses
  %i.cz = fpext <2 x float> %i.bg to <2 x double> ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.da) ; 2 uses
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.dd = extractelement <2 x double> %i.cz, i64 1
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.db, double noundef %i.dd) ; 2 uses
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.dg = fpext float %.sroa.16.0 to double
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.de, double noundef %i.dg)
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.120, i64 noundef 26) ; 0 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.121, i64 noundef 24) ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 1032
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = fpext float %i.dm to double
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.dn) ; 2 uses
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 1036
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fpext float %i.dr to double
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, double noundef %i.ds) ; 2 uses
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  %i.dw = load float, ptr %i.dv, align 4
  %i.dx = fpext float %i.dw to double
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, double noundef %i.dx)
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.123, i64 noundef 18) ; 0 uses
  %i.eb = fpext <2 x float> %i.bg to <2 x double> ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.ec) ; 2 uses
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ef = extractelement <2 x double> %i.eb, i64 1
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, double noundef %i.ef) ; 2 uses
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ei = fpext float %.sroa.16.0 to double
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, double noundef %i.ei)
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.124, i64 noundef 23) ; 0 uses
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.121, i64 noundef 24) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.w, i64 1032 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4
  %i.ep = fpext float %i.eo to double
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.ep) ; 2 uses
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 1036 ; 2 uses
  %i.et = load float, ptr %i.es, align 4
  %i.eu = fpext float %i.et to double
  %i.ev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, double noundef %i.eu) ; 2 uses
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  %i.ey = load float, ptr %i.ex, align 4
  %i.ez = fpext float %i.ey to double
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, double noundef %i.ez)
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.w, i64 1044
  %i.fd = load float, ptr %i.en, align 4
  %i.fe = load float, ptr %i.fc, align 4
  %i.ff = fadd float %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 1048
  %i.fh = load <2 x float>, ptr %i.es, align 4
  %i.fi = load <2 x float>, ptr %i.fg, align 4
  %i.fj = fadd <2 x float> %i.fh, %i.fi           ; 2 uses
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.122, i64 noundef 22) ; 0 uses
  %i.fl = fpext float %i.ff to double
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.fl) ; 2 uses
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.fo = extractelement <2 x float> %i.fj, i64 0
  %i.fp = fpext float %i.fo to double
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, double noundef %i.fp) ; 2 uses
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.fs = extractelement <2 x float> %i.fj, i64 1
  %i.ft = fpext float %i.fs to double
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, double noundef %i.ft)
  %i.fv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.fw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.123, i64 noundef 18) ; 0 uses
  %i.fx = fpext <2 x float> %i.bg to <2 x double> ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.fy) ; 2 uses
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.gb = extractelement <2 x double> %i.fx, i64 1
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, double noundef %i.gb) ; 2 uses
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ge = fpext float %.sroa.16.0 to double
  %i.gf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, double noundef %i.ge)
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.gh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.125, i64 noundef 28) ; 0 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.w, i64 1120 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = fmul float %i.gj, f0x42652EE1
  %i.gl = fpext float %i.gk to double
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.gl)
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.go = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.126, i64 noundef 33) ; 0 uses
  %i.gp = load float, ptr %i.gi, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.w, i64 1116
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = fsub float %i.gp, %i.gr
  %i.gt = fmul float %i.gs, f0x42652EE1
  %i.gu = fpext float %i.gt to double
  %i.gv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.gu)
  %i.gw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.127, i64 noundef 31) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.w, i64 1044
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 1056
  %i.ha = getelementptr inbounds nuw i8, ptr %i.w, i64 1048
  %i.hb = getelementptr inbounds nuw i8, ptr %i.w, i64 1064
  %i.hc = load float, ptr %i.hb, align 4          ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.w, i64 1052
  %i.he = load float, ptr %i.hd, align 4          ; 2 uses
  %i.hf = load <2 x float>, ptr %i.gz, align 4    ; 4 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 1 ; 2 uses
  %i.hh = fneg float %i.hg
  %i.hi = fmul float %i.he, %i.hh
  %i.hj = load float, ptr %i.ha, align 4
  %i.hk = load <2 x float>, ptr %i.gy, align 4    ; 2 uses
  %i.hl = call float @llvm.fmuladd.f32(float %i.hj, float %i.hc, float %i.hi)
  %i.hm = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hn = insertelement <2 x float> %i.hm, float %i.hc, i64 0
  %i.ho = fneg <2 x float> %i.hn
  %i.hp = fmul <2 x float> %i.hk, %i.ho
  %i.hq = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hr = insertelement <2 x float> %i.hq, float %i.he, i64 0
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.hf, <2 x float> %i.hp) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.w, i64 1124
  %3 = load float, ptr %i.ht, align 4
  %4 = fmul float %3, 5.000000e-01                ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.w, i64 1128
  %i.hv = load float, ptr %i.hu, align 4
  %5 = fmul float %i.hv, 5.000000e-01             ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.w, i64 1032
  %6 = fmul float %i.hl, %4                       ; 2 uses
  %7 = extractelement <2 x float> %i.hs, i64 0
  %8 = fmul float %4, %7                          ; 2 uses
  %i.hx = extractelement <2 x float> %i.hs, i64 1
  %i.hy = fmul float %i.hx, %4                    ; 2 uses
  %9 = load float, ptr %i.hw, align 4             ; 2 uses
  %10 = fsub float %9, %6                         ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.w, i64 1036
  %12 = load float, ptr %11, align 4              ; 2 uses
  %13 = fsub float %12, %8                        ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  %15 = load float, ptr %14, align 4              ; 2 uses
  %16 = fsub float %15, %i.hy                     ; 2 uses
  %i.hz = extractelement <2 x float> %i.hf, i64 0
  %17 = fmul float %i.hz, %5                      ; 4 uses
  %i.ia = fmul float %i.hg, %5                    ; 4 uses
  %18 = fmul float %i.hc, %5                      ; 4 uses
  %19 = fsub float %10, %17
  %20 = fsub float %13, %i.ia
  %i.ib = fsub float %16, %18
  %i.ic = fadd float %6, %9                       ; 2 uses
  %i.id = fadd float %8, %12                      ; 2 uses
  %21 = fadd float %i.hy, %15                     ; 2 uses
  %22 = fsub float %i.ic, %17
  %i.ie = fsub float %i.id, %i.ia
  %i.if = fsub float %21, %18
  %23 = fadd float %17, %10
  %24 = fadd float %i.ia, %13
  %25 = fadd float %18, %16
  %i.ig = fadd float %17, %i.ic
  %i.ih = fadd float %i.ia, %i.id
  %26 = fadd float %18, %21
  %i.ii = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.128, i64 noundef 30) ; 0 uses
  %i.ij = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.123, i64 noundef 18) ; 0 uses
  %i.ik = fpext <2 x float> %i.bg to <2 x double> ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  %i.im = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.il) ; 2 uses
  %i.in = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.io = extractelement <2 x double> %i.ik, i64 1
  %i.ip = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.im, double noundef %i.io) ; 2 uses
  %i.iq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ir = fpext float %.sroa.16.0 to double
  %i.is = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, double noundef %i.ir)
  %i.it = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.iu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.129, i64 noundef 25) ; 0 uses
  %i.iv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.130, i64 noundef 21) ; 0 uses
  %i.iw = fpext float %19 to double
  %i.ix = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.iw) ; 2 uses
  %i.iy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.iz = fpext float %20 to double
  %i.ja = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, double noundef %i.iz) ; 2 uses
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.jc = fpext float %i.ib to double
  %i.jd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, double noundef %i.jc) ; 0 uses
  %i.je = fpext float %22 to double
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.je) ; 2 uses
  %i.jg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.jh = fpext float %i.ie to double
  %i.ji = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, double noundef %i.jh) ; 2 uses
  %i.jj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.jk = fpext float %i.if to double
  %i.jl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, double noundef %i.jk) ; 0 uses
  %i.jm = fpext float %23 to double
  %i.jn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.jm) ; 2 uses
  %i.jo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.jp = fpext float %24 to double
  %i.jq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, double noundef %i.jp) ; 2 uses
  %i.jr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.js = fpext float %25 to double
  %i.jt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, double noundef %i.js) ; 0 uses
  %i.ju = fpext float %i.ig to double
  %i.jv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.ju) ; 2 uses
  %i.jw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.jx = fpext float %i.ih to double
  %i.jy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, double noundef %i.jx) ; 2 uses
  %i.jz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ka = fpext float %26 to double
  %i.kb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, double noundef %i.ka) ; 0 uses
  %i.kc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  %i.kd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.131, i64 noundef 38) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ke = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.132, i64 noundef 38) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.kf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.117, i64 noundef 14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 80
  %i.ki = load i32, ptr %i.kh, align 8
  %i.kj = zext i32 %i.ki to i64
  %i.kk = icmp samesign ult i64 %indvars.iv.next, %i.kj
  br i1 %i.kk, label %bb.d, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12PbrtExporter13WriteTexturesEv(ptr noundef nonnull align 8 dereferenceable(624) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.aiString, align 4           ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [3 x i32], align 4                ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 33 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.50, i64 noundef 20) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.51, i64 noundef 12) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %1, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %.not583 = icmp eq i32 %i.p, 0
  br i1 %.not583, label %._crit_edge582, label %.lr.ph581

.lr.ph581:                                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 21 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 22
  br label %bb.b

._crit_edge582:                                   ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.b:                                             ; preds = %.lr.ph581, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph581 ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bc = phi ptr [ %i.n, %.lr.ph581 ], [ %i.bh, %bb.c ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge582, !llvm.loop !80

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %.044578 = phi i32 [ 1, %bb.b ], [ %i.bp, %._crit_edge ] ; 7 uses
  %i.bm = call noundef i32 @aiGetMaterialTextureCount(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i32 noundef %.044578) ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bo = icmp eq i32 %.044578, 7
  br label %bb.e

._crit_edge:                                      ; preds = %bb.ci, %bb.d
  %i.bp = add nuw nsw i32 %.044578, 1             ; 2 uses
  %exitcond594.not = icmp eq i32 %i.bp, 19
  br i1 %exitcond594.not, label %bb.c, label %bb.d, !llvm.loop !81

bb.e:                                             ; preds = %.lr.ph, %bb.ci
  %.055577 = phi i32 [ 0, %.lr.ph ], [ %i.tm, %bb.ci ] ; 3 uses
  %i.bq = call noundef i32 @aiGetMaterialTexture(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i32 noundef %.044578, i32 noundef %.055577, ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef null)
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.52, i64 noundef 23) ; 0 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %indvars.iv) ; 2 uses
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 noundef %.044578) ; 2 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef %.055577)
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.ci

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK6Assimp12PbrtExporter20CleanTextureFilenameB5cxx11ERK8aiStringb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 4 dereferenceable(1028) %1, i1 noundef zeroext true)
  %i.by = load i32, ptr %i.f, align 4
  %.not56 = icmp eq i32 %i.by, 0
  br i1 %.not56, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.53, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.ca = load ptr, ptr %2, align 8
  %i.cb = load i64, ptr %i.q, align 8
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ca, i64 noundef %i.cb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.54, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ce = load i32, ptr %i.f, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i64 noundef %i.cf)
          to label %_ZNSolsEj.exit unwind label %bb.i

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.55, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.h
end_hunk_0
