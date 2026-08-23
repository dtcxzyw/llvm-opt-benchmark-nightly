Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes?download=true
inline.NumInlined: 5074
inline.NumDeleted: 2523
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11getHeapInfoB5cxx11Eb:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.af
  %.pn63 = phi { ptr, i32 } [ %i.rs, %bb.af ], [ %i.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %i.rt, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  br label %bb.ax

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

bb.ai:                                            ; preds = %.noexc244
  %i.rz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sa = load ptr, ptr %20, align 8, !tbaa !22   ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.ln
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %bb.ai
  %i.sc = load i64, ptr %i.ln, align 8, !tbaa !50
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338, %bb.ah
  %.pn65 = phi { ptr, i32 } [ %i.ry, %bb.ah ], [ %i.rz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338 ], [ %i.rz, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #46
  br label %bb.ax

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

bb.ak:                                            ; preds = %.noexc253
  %i.sf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sg = load ptr, ptr %21, align 8, !tbaa !22   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.mb
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.ak
  %i.si = load i64, ptr %i.mb, align 8, !tbaa !50
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.aj
  %.pn67 = phi { ptr, i32 } [ %i.se, %bb.aj ], [ %i.sf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %i.sf, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br label %bb.ax

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

bb.am:                                            ; preds = %.noexc262
  %i.sl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sm = load ptr, ptr %22, align 8, !tbaa !22   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.mq
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.am
  %i.so = load i64, ptr %i.mq, align 8, !tbaa !50
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344, %bb.al
  %.pn69 = phi { ptr, i32 } [ %i.sk, %bb.al ], [ %i.sl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344 ], [ %i.sl, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  br label %bb.ax

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

bb.ao:                                            ; preds = %.noexc271
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ss = load ptr, ptr %23, align 8, !tbaa !22   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.nf
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %bb.ao
  %i.su = load i64, ptr %i.nf, align 8, !tbaa !50
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347, %bb.an
  %.pn71 = phi { ptr, i32 } [ %i.sq, %bb.an ], [ %i.sr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347 ], [ %i.sr, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #46
  br label %bb.ax

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

bb.aq:                                            ; preds = %.noexc280
  %i.sx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sy = load ptr, ptr %24, align 8, !tbaa !22   ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.nv
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.aq
  %i.ta = load i64, ptr %i.nv, align 8, !tbaa !50
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tb) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350, %bb.ap
  %.pn73 = phi { ptr, i32 } [ %i.sw, %bb.ap ], [ %i.sx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350 ], [ %i.sx, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #46
  br label %bb.ax

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

bb.as:                                            ; preds = %.noexc289
  %i.td = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.te = load ptr, ptr %25, align 8, !tbaa !22   ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.ol
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.as
  %i.tg = load i64, ptr %i.ol, align 8, !tbaa !50
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %bb.ar
  %.pn75 = phi { ptr, i32 } [ %i.tc, %bb.ar ], [ %i.td, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ], [ %i.td, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #46
  br label %bb.ax

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

bb.au:                                            ; preds = %.noexc298
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tk = load ptr, ptr %26, align 8, !tbaa !22   ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.pb
  br i1 %i.tl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.au
  %i.tm = load i64, ptr %i.pb, align 8, !tbaa !50
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356, %bb.at
  %.pn77 = phi { ptr, i32 } [ %i.ti, %bb.at ], [ %i.tj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ], [ %i.tj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #46
  br label %bb.ax

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

bb.aw:                                            ; preds = %.noexc307
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tq = load ptr, ptr %27, align 8, !tbaa !22   ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.pr
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %bb.aw
  %i.ts = load i64, ptr %i.pr, align 8, !tbaa !50
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359, %bb.av
  %.pn79 = phi { ptr, i32 } [ %i.to, %bb.av ], [ %i.tp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359 ], [ %i.tp, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #46
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349 ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_lEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl14collectGarbageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !260
  %i.c = and i32 %i.b, 512
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6_crit_edge, label %bb.b

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !22
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq i64 %i.e, 28
  %.pre7 = load ptr, ptr %1, align 8, !tbaa !22   ; 4 uses
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.g = load i128, ptr %.pre7, align 1
  %i.h = xor i128 %i.g, 104086513357223850231069849847901803092
  %i.i = getelementptr i8, ptr %.pre7, i64 12
  %i.j = load i128, ptr %i.i, align 1
  %i.k = xor i128 %i.j, 101360191706643059226432711823035618642
  %i.l = or i128 %i.h, %i.k
  %i.m = icmp ne i128 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6_crit_edge, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.p = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6_crit_edge ], [ %.pre7, %bb.b ], [ %.pre7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !305, !nonnull !30, !align !31 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 4 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !26
  store ptr %i.t, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %i.z, align 8, !tbaa !26
  store i8 0, ptr %i.t, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 856
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !112
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.af = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !50
  %.pre8 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26 ; 2 uses
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !50
  store ptr %i.t, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %i.ad, align 8, !tbaa !26
  store i8 0, ptr %i.t, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 856 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !112
  %i.ai = icmp eq ptr %i.p, %i.s
  br i1 %i.ai, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.aj = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.al = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.am = phi i64 [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %2, align 8, !tbaa !22
  %i.ap = load i64, ptr %i.s, align 8, !tbaa !50
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aq = phi ptr [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %bb.c ] ; 4 uses
  %i.ar = phi ptr [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.c ]
  %i.as = phi ptr [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.c ]
  %i.at = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.am, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !26
  store ptr %i.s, ptr %3, align 8, !tbaa !22
  store i64 0, ptr %i.as, align 8, !tbaa !26
  store i8 0, ptr %i.s, align 8, !tbaa !50
  invoke void @_ZN6hermes2vm7HadesGC7collectENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8112) %i.ar, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.av = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aq
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aq
  br i1 %i.bb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  %i.bc = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #49
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.be = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.s
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bg = load i64, ptr %i.s, align 8, !tbaa !50
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  %i.bi = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.s
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %.body
  %i.bk = load i64, ptr %i.s, align 8, !tbaa !50
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl34startTrackingHeapObjectStackTracesESt8functionIFvmNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESt6vectorISt5tupleIJmmmEESaISB_EEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.80)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #46
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl33stopTrackingHeapObjectStackTracesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.80)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #46
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl17startHeapSamplingEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.81)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #46
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl16stopHeapSamplingERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.82)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #46
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl20createSnapshotToFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3jsi15Instrumentation19HeapSnapshotOptionsE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 1 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.83)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
end_hunk_0
