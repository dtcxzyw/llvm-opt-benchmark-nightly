Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-chat?download=true
inline.NumInlined: 1454
inline.NumDeleted: 202
begin_hunk_0_@_Z23llm_chat_apply_template17llm_chat_templateRKSt6vectorIPK18llama_chat_messageSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.ca, ptr %i.be, align 8, !tbaa !26
  br label %._crit_edge.i.i966

._crit_edge.i.i966:                               ; preds = %.noexc969, %bb.r
  %i.cb = phi ptr [ %i.bz, %.noexc969 ], [ %i.be, %bb.r ] ; 2 uses
  switch i64 %i.bx, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i966
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !26
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !26
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i966
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.bv, i64 %i.bx, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i966
  %i.cd = load i64, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  store i64 %i.cd, ptr %i.bf, align 8, !tbaa !20
  %i.ce = load ptr, ptr %6, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  %i.cg = load i64, ptr %i.bd, align 8, !tbaa !20
  switch i64 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread2605 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.u
  %i.ch = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 1953724787
  %i.ck = getelementptr i8, ptr %i.ch, i64 4
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = zext i16 %i.cl to i32
  %i.cn = xor i32 %i.cm, 28005
  %i.co = or i32 %i.cj, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread2605

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.59, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit972 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit972: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.ay, i64 noundef %i.bh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit975 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit975: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit972
  %i.cu = load ptr, ptr %6, align 8, !tbaa !21
  %i.cv = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.cu, i64 noundef %i.cv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994.invoke unwind label %bb.v

.loopexit.split-lp2685.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.l
  %lpad.loopexit.split-lp4020 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

.loopexit.split-lp2690.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i967, %bb.q
  %lpad.loopexit.split-lp4023 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread2605, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit985, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit982, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit975, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.be
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.da = load i64, ptr %i.be, align 8, !tbaa !26
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980: ; preds = %bb.u
  %i.dc = load ptr, ptr %5, align 8, !tbaa !21
  %i.dd = load i32, ptr %i.dc, align 1
  %i.de = icmp ne i32 %i.dd, 1919251317
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread2605

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.58, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit982 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit982: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.ay, i64 noundef %i.bh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit985 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit985: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit982
  %i.dj = load ptr, ptr %6, align 8, !tbaa !21
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.dj, i64 noundef %i.dk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994.invoke unwind label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread2605: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.ay, i64 noundef %i.bh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit980.thread2605
  %i.dn = load ptr, ptr %6, align 8, !tbaa !21
  %i.do = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.dn, i64 noundef %i.do)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994.invoke unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994.invoke: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit975, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit985
  %i.dq = phi ptr [ %i.dl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit985 ], [ %i.dp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992 ], [ %i.cw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit975 ]
  %i.dr = phi ptr [ @.str.137, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit985 ], [ @.str.72, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992 ], [ @.str.135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit975 ]
  %i.ds = phi i64 [ 7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit985 ], [ 4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992 ], [ 16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit975 ]
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull %i.dr, i64 noundef %i.ds)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit978 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit978: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994.invoke
  %i.du = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.be
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit978
  %i.dw = load i64, ptr %i.be, align 8, !tbaa !26
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit978, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dy = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bc
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999
  %i.ea = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.02597.03153, i64 8 ; 2 uses
  %.not2681 = icmp eq ptr %i.ec, %i.bb
  br i1 %.not2681, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %.loopexit.split-lp2690.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn864 = phi { ptr, i32 } [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp4023, %.loopexit.split-lp2690.loopexit.split-lp.loopexit.split-lp ], [ %i.cx, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ed = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.bc
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ef = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit.split-lp2685.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003
  %.pn864.pn = phi { ptr, i32 } [ %.pn864, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003 ], [ %lpad.loopexit.split-lp4020, %.loopexit.split-lp2685.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn864, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.i
  %i.eh = icmp eq i32 %0, 6
  %i.ei = icmp ne i32 %0, 7                       ; 2 uses
  %i.ej = add i32 %0, -5
  %or.cond6 = icmp ult i32 %i.ej, 3
  br i1 %or.cond6, label %._crit_edge.i.i1006, label %bb.aw

._crit_edge.i.i1006:                              ; preds = %bb.w
  %i.ek = icmp eq i32 %0, 5                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.el, ptr %7, align 8, !tbaa !24
  %i.em = zext i1 %i.ek to i64                    ; 2 uses
  br i1 %i.ek, label %._crit_edge.i.i1010.thread, label %._crit_edge.i.i1010

._crit_edge.i.i1010.thread:                       ; preds = %._crit_edge.i.i1006
  store i8 32, ptr %i.el, align 8, !tbaa !26
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.em, ptr %i.en, align 8, !tbaa !20
  %.sroa.gep4114 = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %.sroa.gep4114, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.eo, ptr %8, align 8, !tbaa !24
  %i.ep = zext i1 %i.ei to i64
  br label %bb.x

._crit_edge.i.i1010:                              ; preds = %._crit_edge.i.i1006
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.em, ptr %i.eq, align 8, !tbaa !20
  store i8 0, ptr %i.el, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.er, ptr %8, align 8, !tbaa !24
  br i1 %i.ei, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i1010.thread, %._crit_edge.i.i1010
  %i.es = phi i64 [ %i.ep, %._crit_edge.i.i1010.thread ], [ 1, %._crit_edge.i.i1010 ]
  %i.et = phi ptr [ %i.eo, %._crit_edge.i.i1010.thread ], [ %i.er, %._crit_edge.i.i1010 ] ; 2 uses
  %i.eu = phi ptr [ %i.en, %._crit_edge.i.i1010.thread ], [ %i.eq, %._crit_edge.i.i1010 ]
  store i8 32, ptr %i.et, align 1, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i1010, %bb.x
  %i.ev = phi i64 [ 0, %._crit_edge.i.i1010 ], [ %i.es, %bb.x ] ; 2 uses
  %i.ew = phi ptr [ %i.er, %._crit_edge.i.i1010 ], [ %i.et, %bb.x ] ; 5 uses
  %i.ex = phi ptr [ %i.eq, %._crit_edge.i.i1010 ], [ %i.eu, %bb.x ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.ev, ptr %i.ey, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ez, align 1, !tbaa !26
  %i.fa = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !48 ; 2 uses
  %.not26803146 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not26803146, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, label %.lr.ph3150

.lr.ph3150:                                       ; preds = %bb.y
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.z

._crit_edge3151:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070
  %.pre3267 = load ptr, ptr %8, align 8, !tbaa !21 ; 2 uses
  %i.fk = icmp eq ptr %.pre3267, %i.ew
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014: ; preds = %._crit_edge3151
  %i.fl = load i64, ptr %i.ew, align 8, !tbaa !26
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %.pre3267, i64 noundef %i.fm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016: ; preds = %._crit_edge3151, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.fn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.el
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016
  %i.fp = load i64, ptr %i.el, align 8, !tbaa !26
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.z:                                             ; preds = %.lr.ph3150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070
  %.06783148 = phi i1 [ false, %.lr.ph3150 ], [ %.2680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070 ]
  %.sroa.02589.03147 = phi ptr [ %i.fa, %.lr.ph3150 ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070 ] ; 2 uses
  %i.fr = load ptr, ptr %.sroa.02589.03147, align 8, !tbaa !50 ; 2 uses
  br i1 %.06783148, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1025, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = load ptr, ptr %7, align 8, !tbaa !21
  %i.ft = load i64, ptr %i.ex, align 8, !tbaa !20
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef %i.fs, i64 noundef %i.ft)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1021 unwind label %bb.ab ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1021: ; preds = %bb.aa
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull @.str.58, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1023 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1023: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1021
  %i.fw = load ptr, ptr %8, align 8, !tbaa !21
  %i.fx = load i64, ptr %i.ey, align 8, !tbaa !20
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef %i.fw, i64 noundef %i.fx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1025 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1023, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1021, %bb.aa
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1025: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1023, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !52 ; 4 uses
  store ptr %i.fe, ptr %9, align 8, !tbaa !24
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1025
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.243) #24
          to label %.noexc1028 unwind label %.loopexit.split-lp2695.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1028:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1025
  %i.gc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ga) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i64 %i.gc, ptr %i.n, align 8, !tbaa !25
  %i.gd = icmp ugt i64 %i.gc, 15
  br i1 %i.gd, label %.noexc.i1027, label %._crit_edge.i.i1026

.noexc.i1027:                                     ; preds = %bb.ad
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc1029 unwind label %.loopexit.split-lp2695.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1029:                                       ; preds = %.noexc.i1027
  store ptr %i.ge, ptr %9, align 8, !tbaa !21
  %i.gf = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.gf, ptr %i.fe, align 8, !tbaa !26
  br label %._crit_edge.i.i1026

._crit_edge.i.i1026:                              ; preds = %.noexc1029, %bb.ad
  %i.gg = phi ptr [ %i.ge, %.noexc1029 ], [ %i.fe, %bb.ad ] ; 2 uses
  switch i64 %i.gc, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i1026
  %i.gh = load i8, ptr %i.ga, align 1, !tbaa !26
  store i8 %i.gh, ptr %i.gg, align 1, !tbaa !26
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i1026
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr nonnull align 1 %i.ga, i64 %i.gc, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i1026
  %i.gi = load i64, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  store i64 %i.gi, ptr %i.ff, align 8, !tbaa !20
  %i.gj = load ptr, ptr %9, align 8, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  store i8 0, ptr %i.gk, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !64 ; 4 uses
  store ptr %i.fg, ptr %10, align 8, !tbaa !24
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.243) #24
          to label %.noexc1033 unwind label %.loopexit.split-lp2700.loopexit.split-lp.loopexit.split-lp

.noexc1033:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.go = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gm) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i64 %i.go, ptr %i.m, align 8, !tbaa !25
  %i.gp = icmp ugt i64 %i.go, 15
  br i1 %i.gp, label %.noexc.i1032, label %._crit_edge.i.i1031

.noexc.i1032:                                     ; preds = %bb.ai
  %i.gq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc1034 unwind label %.loopexit.split-lp2700.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1034:                                       ; preds = %.noexc.i1032
  store ptr %i.gq, ptr %10, align 8, !tbaa !21
  %i.gr = load i64, ptr %i.m, align 8, !tbaa !25
  store i64 %i.gr, ptr %i.fg, align 8, !tbaa !26
  br label %._crit_edge.i.i1031

._crit_edge.i.i1031:                              ; preds = %.noexc1034, %bb.ai
  %i.gs = phi ptr [ %i.gq, %.noexc1034 ], [ %i.fg, %bb.ai ] ; 2 uses
  switch i64 %i.go, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i1031
  %i.gt = load i8, ptr %i.gm, align 1, !tbaa !26
  store i8 %i.gt, ptr %i.gs, align 1, !tbaa !26
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i1031
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr nonnull align 1 %i.gm, i64 %i.go, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i1031
  %i.gu = load i64, ptr %i.m, align 8, !tbaa !25  ; 2 uses
  store i64 %i.gu, ptr %i.fh, align 8, !tbaa !20
  %i.gv = load ptr, ptr %10, align 8, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gu
  store i8 0, ptr %i.gw, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  %i.gx = load i64, ptr %i.ff, align 8, !tbaa !20
  switch i64 %i.gx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1043.thread2607 [
end_hunk_0
begin_hunk_1_@_Z23llm_chat_apply_template17llm_chat_templateRKSt6vectorIPK18llama_chat_messageSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.ahg = xor i32 %i.ahf, 1953724787
  %i.ahh = getelementptr i8, ptr %.pre, i64 4
  %i.ahi = load i16, ptr %i.ahh, align 1
  %i.ahj = zext i16 %i.ahi to i32
  %i.ahk = xor i32 %i.ahj, 28005
  %i.ahl = or i32 %i.ahg, %i.ahk
  %i.ahm = icmp ne i32 %i.ahl, 0
  %i.ahn = zext i1 %i.ahm to i32
  %i.aho = icmp eq i32 %i.ahn, 0
  br i1 %i.aho, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread2621

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !64 ; 3 uses
  %.not.i1379 = icmp eq ptr %i.ahq, null
  br i1 %.not.i1379, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread
  %i.ahr = load ptr, ptr %i.agq, align 8, !tbaa !54
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 -24
  %i.aht = load i64, ptr %i.ahs, align 8
  %i.ahu = getelementptr inbounds i8, ptr %i.agq, i64 %i.aht ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 32
  %i.ahw = load i32, ptr %i.ahv, align 8, !tbaa !63
  %i.ahx = or i32 %i.ahw, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ahu, i32 noundef %i.ahx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1397.invoke unwind label %bb.fs

bb.fr:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread
  %i.ahy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahq) #23
  %i.ahz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, ptr noundef nonnull %i.ahq, i64 noundef %i.ahy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1397.invoke unwind label %bb.fs ; 0 uses

.loopexit.split-lp2781.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i1373, %bb.fl
  %lpad.loopexit.split-lp4108 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387

bb.fs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1397.invoke, %bb.fu, %bb.ft, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1391, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1389, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread2621, %bb.fr, %bb.fq
  %i.aia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aib = load ptr, ptr %28, align 8, !tbaa !21  ; 2 uses
  %i.aic = icmp eq ptr %i.aib, %i.ago
  br i1 %i.aic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1385: ; preds = %bb.fs
  %i.aid = load i64, ptr %i.ago, align 8, !tbaa !26
  %i.aie = add i64 %i.aid, 1
  call void @_ZdlPvm(ptr noundef %i.aib, i64 noundef %i.aie) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread2621: ; preds = %bb.fp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378
  %i.aif = load i8, ptr %.pre, align 1, !tbaa !26
  %i.aig = sext i8 %i.aif to i32
  %i.aih = call i32 @toupper(i32 noundef %i.aig) #26
  %i.aii = trunc i32 %i.aih to i8
  store i8 %i.aii, ptr %.pre, align 1, !tbaa !26
  %i.aij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, ptr noundef nonnull @.str.79, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1389 unwind label %bb.fs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1389: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1378.thread2621
  %i.aik = load ptr, ptr %28, align 8, !tbaa !21
  %i.ail = load i64, ptr %i.agp, align 8, !tbaa !20
  %i.aim = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, ptr noundef %i.aik, i64 noundef %i.ail)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1391 unwind label %bb.fs ; 6 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1391: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1389
  %i.ain = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aim, ptr noundef nonnull @.str.162, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1393 unwind label %bb.fs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1393: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1391
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !64 ; 3 uses
  %.not.i1394 = icmp eq ptr %i.aip, null
  br i1 %.not.i1394, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1393
  %i.aiq = load ptr, ptr %i.aim, align 8, !tbaa !54
  %i.air = getelementptr i8, ptr %i.aiq, i64 -24
  %i.ais = load i64, ptr %i.air, align 8
  %i.ait = getelementptr inbounds i8, ptr %i.aim, i64 %i.ais ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 32
  %i.aiv = load i32, ptr %i.aiu, align 8, !tbaa !63
  %i.aiw = or i32 %i.aiv, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ait, i32 noundef %i.aiw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1397.invoke unwind label %bb.fs

bb.fu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1393
  %i.aix = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aip) #23
  %i.aiy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aim, ptr noundef nonnull %i.aip, i64 noundef %i.aix)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1397.invoke unwind label %bb.fs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1397.invoke: ; preds = %bb.fr, %bb.fq, %bb.fu, %bb.ft
  %i.aiz = phi ptr [ %i.aim, %bb.fu ], [ %i.aim, %bb.ft ], [ %i.agq, %bb.fq ], [ %i.agq, %bb.fr ]
  %i.aja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aiz, ptr noundef nonnull @.str.161, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1384 unwind label %bb.fs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1384: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1397.invoke
  %i.ajb = load ptr, ptr %28, align 8, !tbaa !21  ; 2 uses
  %i.ajc = icmp eq ptr %i.ajb, %i.ago
  br i1 %i.ajc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1400: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1384
  %i.ajd = load i64, ptr %i.ago, align 8, !tbaa !26
  %i.aje = add i64 %i.ajd, 1
  call void @_ZdlPvm(ptr noundef %i.ajb, i64 noundef %i.aje) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1402: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1400
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.ajf = getelementptr inbounds nuw i8, ptr %.sroa.02541.02955, i64 8 ; 2 uses
  %.not2641 = icmp eq ptr %i.ajf, %i.agn
  br i1 %.not2641, label %._crit_edge, label %bb.fk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387: ; preds = %bb.fs, %.loopexit.split-lp2781.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1385
  %.pn826 = phi { ptr, i32 } [ %i.aia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1385 ], [ %lpad.loopexit.split-lp4108, %.loopexit.split-lp2781.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aia, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.loopexit.split-lp

bb.fv:                                            ; preds = %._crit_edge
  %i.ajg = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3902

bb.fw:                                            ; preds = %bb.bu
  %i.ajh = icmp eq i32 %0, 19
  %or.cond15 = icmp eq i32 %i.aw, 18
  br i1 %or.cond15, label %bb.fx, label %bb.gk

bb.fx:                                            ; preds = %bb.fw
  %i.aji = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !48 ; 2 uses
  %.not26783137 = icmp eq ptr %i.aji, %i.ajk
  br i1 %.not26783137, label %._crit_edge3141, label %.lr.ph3140

.lr.ph3140:                                       ; preds = %bb.fx
  %i.ajl = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  br label %bb.fy

._crit_edge3141:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1447, %bb.fx
  br i1 %3, label %bb.gj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.fy:                                            ; preds = %.lr.ph3140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1447
  %.sroa.02536.03138 = phi ptr [ %i.aji, %.lr.ph3140 ], [ %i.amf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1447 ] ; 2 uses
  %i.ajo = load ptr, ptr %.sroa.02536.03138, align 8, !tbaa !50 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !52 ; 4 uses
  store ptr %i.ajl, ptr %29, align 8, !tbaa !24
  %i.ajq = icmp eq ptr %i.ajp, null
  br i1 %i.ajq, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.243) #24
          to label %.noexc1407 unwind label %.loopexit.split-lp2719.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1407:                                       ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.ajr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajp) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ajr, ptr %i.a, align 8, !tbaa !25
  %i.ajs = icmp ugt i64 %i.ajr, 15
  br i1 %i.ajs, label %.noexc.i1406, label %._crit_edge.i.i1405

.noexc.i1406:                                     ; preds = %bb.ga
  %i.ajt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1408 unwind label %.loopexit.split-lp2719.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1408:                                       ; preds = %.noexc.i1406
  store ptr %i.ajt, ptr %29, align 8, !tbaa !21
  %i.aju = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.aju, ptr %i.ajl, align 8, !tbaa !26
  br label %._crit_edge.i.i1405

._crit_edge.i.i1405:                              ; preds = %.noexc1408, %bb.ga
  %i.ajv = phi ptr [ %i.ajt, %.noexc1408 ], [ %i.ajl, %bb.ga ] ; 2 uses
  switch i64 %i.ajr, label %bb.gc [
    i64 1, label %bb.gb
    i64 0, label %bb.gd
  ]

bb.gb:                                            ; preds = %._crit_edge.i.i1405
  %i.ajw = load i8, ptr %i.ajp, align 1, !tbaa !26
  store i8 %i.ajw, ptr %i.ajv, align 1, !tbaa !26
  br label %bb.gd

bb.gc:                                            ; preds = %._crit_edge.i.i1405
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajv, ptr nonnull align 1 %i.ajp, i64 %i.ajr, i1 false)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %._crit_edge.i.i1405
  %i.ajx = load i64, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  store i64 %i.ajx, ptr %i.ajm, align 8, !tbaa !20
  %i.ajy = load ptr, ptr %29, align 8, !tbaa !21
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.ajx
  store i8 0, ptr %i.ajz, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.aka = load i64, ptr %i.ajm, align 8, !tbaa !20 ; 3 uses
  switch i64 %i.aka, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411: ; preds = %bb.gd
  %i.akb = load ptr, ptr %29, align 8, !tbaa !21  ; 2 uses
  %i.akc = load i32, ptr %i.akb, align 1
  %i.akd = xor i32 %i.akc, 1953724787
  %i.ake = getelementptr i8, ptr %i.akb, i64 4
  %i.akf = load i16, ptr %i.ake, align 1
  %i.akg = zext i16 %i.akf to i32
  %i.akh = xor i32 %i.akg, 28005
  %i.aki = or i32 %i.akd, %i.akh
  %i.akj = icmp ne i32 %i.aki, 0
  %i.akk = zext i1 %i.akj to i32
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411
  br i1 %i.ajh, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411.thread
  %i.akm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajn, ptr noundef nonnull @.str.82, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1413 unwind label %bb.gf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1413: ; preds = %bb.ge
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !64 ; 2 uses
  %.not.i1414 = icmp eq ptr %i.ako, null
  br i1 %.not.i1414, label %.invoke3912, label %.invoke3911

.loopexit.split-lp2719.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i1406, %bb.fz
  %lpad.loopexit.split-lp4042 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422

bb.gf:                                            ; preds = %.invoke3912, %.invoke3911, %.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430.thread, %bb.gi, %bb.gh, %bb.ge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1442
  %i.akp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akq = load ptr, ptr %29, align 8, !tbaa !21  ; 2 uses
  %i.akr = icmp eq ptr %i.akq, %i.ajl
  br i1 %i.akr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1420: ; preds = %bb.gf
  %i.aks = load i64, ptr %i.ajl, align 8, !tbaa !26
  %i.akt = add i64 %i.aks, 1
  call void @_ZdlPvm(ptr noundef %i.akq, i64 noundef %i.akt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422

bb.gg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411.thread
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !64 ; 3 uses
  %.not.i1423 = icmp eq ptr %i.akv, null
  br i1 %.not.i1423, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.akw = load ptr, ptr %i.ajn, align 8, !tbaa !54
  %i.akx = getelementptr i8, ptr %i.akw, i64 -24
  %i.aky = load i64, ptr %i.akx, align 8
  %i.akz = getelementptr inbounds i8, ptr %i.ajn, i64 %i.aky ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 32
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !63
  %i.alc = or i32 %i.alb, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.akz, i32 noundef %i.alc)
          to label %.invoke unwind label %bb.gf

bb.gi:                                            ; preds = %bb.gg
  %i.ald = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.akv) #23
  %i.ale = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajn, ptr noundef nonnull %i.akv, i64 noundef %i.ald)
          to label %.invoke unwind label %bb.gf   ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430: ; preds = %bb.gd
  %.pre3265 = load ptr, ptr %29, align 8, !tbaa !21
  %bcmp.i1429 = call i32 @bcmp(ptr %.pre3265, ptr nonnull @.str.136, i64 %i.aka)
  %i.alf = icmp eq i32 %bcmp.i1429, 0
  br i1 %i.alf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430
  %i.alg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajn, ptr noundef nonnull @.str.80, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1432 unwind label %bb.gf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1432: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430.thread
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !64 ; 2 uses
  %.not.i1433 = icmp eq ptr %i.ali, null
  br i1 %.not.i1433, label %.invoke3912, label %.invoke3911

.invoke3912:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1432, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1413
  %i.alj = load ptr, ptr %i.ajn, align 8, !tbaa !54
  %i.alk = getelementptr i8, ptr %i.alj, i64 -24
  %i.all = load i64, ptr %i.alk, align 8
  %i.alm = getelementptr inbounds i8, ptr %i.ajn, i64 %i.all ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 32
  %i.alo = load i32, ptr %i.aln, align 8, !tbaa !63
  %i.alp = or i32 %i.alo, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alm, i32 noundef %i.alp)
          to label %.invoke unwind label %bb.gf

.invoke3911:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1432, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1413
  %.sink = phi ptr [ %i.ako, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1413 ], [ %i.ali, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1432 ] ; 2 uses
  %i.alq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink) #23
  %i.alr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajn, ptr noundef nonnull %.sink, i64 noundef %i.alq)
          to label %.invoke unwind label %bb.gf   ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440: ; preds = %bb.gd
  %.pre3266 = load ptr, ptr %29, align 8, !tbaa !21
  %bcmp.i1439 = call i32 @bcmp(ptr %.pre3266, ptr nonnull @.str.155, i64 %i.aka)
  %i.als = icmp eq i32 %bcmp.i1439, 0
  br i1 %i.als, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440
  %i.alt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajn, ptr noundef nonnull @.str.81, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1442 unwind label %bb.gf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1442: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440.thread
  %i.alu = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !64
  %i.alw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ajn, ptr noundef %i.alv)
          to label %.invoke unwind label %bb.gf

.invoke:                                          ; preds = %.invoke3912, %.invoke3911, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1442, %bb.gi, %bb.gh
  %i.alx = phi ptr [ %i.ajn, %.invoke3911 ], [ %i.ajn, %bb.gi ], [ %i.alw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1442 ], [ %i.ajn, %bb.gh ], [ %i.ajn, %.invoke3912 ]
  %i.aly = phi ptr [ @.str.129, %.invoke3911 ], [ @.str.138, %bb.gi ], [ @.str.153, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1442 ], [ @.str.138, %bb.gh ], [ @.str.129, %.invoke3912 ]
  %i.alz = phi i64 [ 1, %.invoke3911 ], [ 2, %bb.gi ], [ 5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1442 ], [ 2, %bb.gh ], [ 1, %.invoke3912 ]
  %i.ama = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alx, ptr noundef nonnull %i.aly, i64 noundef %i.alz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419 unwind label %bb.gf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419: ; preds = %.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1430, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1411, %bb.gd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1440
  %i.amb = load ptr, ptr %29, align 8, !tbaa !21  ; 2 uses
  %i.amc = icmp eq ptr %i.amb, %i.ajl
  br i1 %i.amc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1445: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419
  %i.amd = load i64, ptr %i.ajl, align 8, !tbaa !26
  %i.ame = add i64 %i.amd, 1
  call void @_ZdlPvm(ptr noundef %i.amb, i64 noundef %i.ame) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1447: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1445
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.amf = getelementptr inbounds nuw i8, ptr %.sroa.02536.03138, i64 8 ; 2 uses
  %.not2678 = icmp eq ptr %i.amf, %i.ajk
  br i1 %.not2678, label %._crit_edge3141, label %bb.fy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422: ; preds = %bb.gf, %.loopexit.split-lp2719.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1420
  %.pn824 = phi { ptr, i32 } [ %i.akp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1420 ], [ %lpad.loopexit.split-lp4042, %.loopexit.split-lp2719.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.akp, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %.loopexit.split-lp

bb.gj:                                            ; preds = %._crit_edge3141
  %i.amg = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3902

bb.gk:                                            ; preds = %bb.fw
  switch i32 %0, label %bb.rm [
    i32 20, label %bb.gl
    i32 24, label %bb.gw
    i32 25, label %bb.hy
    i32 26, label %bb.ik
    i32 27, label %bb.iq
    i32 28, label %bb.iw
    i32 29, label %bb.jd
    i32 21, label %bb.jv
    i32 22, label %bb.kf
    i32 23, label %bb.kq
    i32 30, label %bb.kt
    i32 31, label %bb.lv
    i32 32, label %bb.ne
    i32 33, label %.preheader2732
    i32 34, label %bb.pn
    i32 35, label %bb.pv
    i32 36, label %bb.qd
    i32 37, label %bb.ql
    i32 38, label %bb.qz
    i32 39, label %.preheader2734
  ]

.preheader2734:                                   ; preds = %bb.gk
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !66
  %i.amj = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %.not3161 = icmp eq ptr %i.ami, %i.amj
  br i1 %.not3161, label %._crit_edge2991, label %.lr.ph2990

.lr.ph2990:                                       ; preds = %.preheader2734
  %i.amk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 4 uses
  br label %bb.rg

.preheader2732:                                   ; preds = %bb.gk
  %i.amm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !66
  %i.amo = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %.not3162 = icmp eq ptr %i.amn, %i.amo
  br i1 %.not3162, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, label %.lr.ph3016

.lr.ph3016:                                       ; preds = %.preheader2732
  %i.amp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.amr = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.ams = getelementptr inbounds nuw i8, ptr %113, i64 16 ; 4 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %114, i64 16 ; 4 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.amv = getelementptr inbounds nuw i8, ptr %110, i64 8
  %i.amw = getelementptr inbounds nuw i8, ptr %110, i64 16 ; 4 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %111, i64 16 ; 4 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %108, i64 8
  %i.amz = getelementptr inbounds nuw i8, ptr %107, i64 8
  %i.ana = getelementptr inbounds nuw i8, ptr %107, i64 16 ; 4 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 4 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 4 uses
  br label %bb.on

bb.gl:                                            ; preds = %bb.gk
  %i.and = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !48 ; 2 uses
  %.not26663073 = icmp eq ptr %i.and, %i.anf
  br i1 %.not26663073, label %._crit_edge3077, label %.lr.ph3076

.lr.ph3076:                                       ; preds = %bb.gl
  %i.ang = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  br label %bb.gm

._crit_edge3077:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1463, %bb.gl
  br i1 %3, label %bb.gv, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.gm:                                            ; preds = %.lr.ph3076, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1463
  %.sroa.02531.03074 = phi ptr [ %i.and, %.lr.ph3076 ], [ %i.aom, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1463 ] ; 2 uses
  %i.ani = load ptr, ptr %.sroa.02531.03074, align 8, !tbaa !50 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.anj, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.gn unwind label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.ank = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.134)
  br i1 %i.ank, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !64
  %i.ann = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, ptr noundef %i.anm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1456 unwind label %bb.gq ; 0 uses

bb.gp:                                            ; preds = %bb.gm
  %i.ano = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452

bb.gq:                                            ; preds = %.invoke3897, %bb.gu, %bb.gs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1454, %bb.go
  %i.anp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anq = load ptr, ptr %30, align 8, !tbaa !21  ; 2 uses
  %i.anr = icmp eq ptr %i.anq, %i.anh
  br i1 %i.anr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450: ; preds = %bb.gq
  %i.ans = load i64, ptr %i.anh, align 8, !tbaa !26
  %i.ant = add i64 %i.ans, 1
  call void @_ZdlPvm(ptr noundef %i.anq, i64 noundef %i.ant) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452

bb.gr:                                            ; preds = %bb.gn
  %i.anu = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.136)
  br i1 %i.anu, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.anv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, ptr noundef nonnull @.str.165, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1454 unwind label %bb.gq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1454: ; preds = %bb.gs
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !64
  %i.any = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, ptr noundef %i.anx)
          to label %.invoke3897 unwind label %bb.gq

bb.gt:                                            ; preds = %bb.gr
  %i.anz = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.155)
  br i1 %i.anz, label %bb.gu, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1456

bb.gu:                                            ; preds = %bb.gt
  %i.aoa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, ptr noundef nonnull @.str.166, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1458 unwind label %bb.gq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1458: ; preds = %bb.gu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !64
  %i.aod = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, ptr noundef %i.aoc)
          to label %.invoke3897 unwind label %bb.gq

.invoke3897:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1454
  %i.aoe = phi ptr [ %i.any, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1454 ], [ %i.aod, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1458 ]
  %i.aof = phi ptr [ @.str.129, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1454 ], [ @.str.167, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1458 ]
  %i.aog = phi i64 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1454 ], [ 9, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1458 ]
  %i.aoh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aoe, ptr noundef nonnull %i.aof, i64 noundef %i.aog)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1456 unwind label %bb.gq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1456: ; preds = %.invoke3897, %bb.gt, %bb.go
  %i.aoi = load ptr, ptr %30, align 8, !tbaa !21  ; 2 uses
  %i.aoj = icmp eq ptr %i.aoi, %i.anh
  br i1 %i.aoj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1461

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1461: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1456
end_hunk_1
