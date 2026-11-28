Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/comm_group?download=true
inline.NumInlined: 1239
inline.NumDeleted: 559
begin_hunk_0_@_ZN7xgboost10collective9CommGroup6CreateENS_4JsonE:bb.a
  %i.gb = icmp eq ptr %i.ga, %i.fy
  br i1 %i.gb, label %_ZN7xgboost10JsonStringD2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190: ; preds = %bb.ac
  %i.gc = load i64, ptr %i.fy, align 8, !tbaa !27
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #28
  br label %_ZN7xgboost10JsonStringD2Ev.exit192

_ZN7xgboost10JsonStringD2Ev.exit192:              ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190
  %i.ge = load ptr, ptr %20, align 8, !tbaa !61   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.fs
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit192
  %i.gg = load i64, ptr %i.fs, align 8, !tbaa !27
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  %i.gi = load ptr, ptr %19, align 8, !tbaa !61   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fp
  br i1 %i.gj, label %.noexc.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.gk = load i64, ptr %i.fp, align 8, !tbaa !27
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #28
  br label %.noexc.i200

.noexc.i200:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.gm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.gm, ptr %22, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 16, ptr %i.b, align 8, !tbaa !60
  %i.gn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.ad unwind label %bb.cx     ; 2 uses

bb.ad:                                            ; preds = %.noexc.i200
  store ptr %i.gn, ptr %22, align 8, !tbaa !61
  %i.go = load i64, ptr %i.b, align 8, !tbaa !60  ; 3 uses
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gn, ptr noundef nonnull align 1 dereferenceable(16) @.str.13, i64 16, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !62
  %i.gq = load ptr, ptr %22, align 8, !tbaa !61
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.go
  store i8 0, ptr %i.gr, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.gs = invoke fastcc noundef i64 @"_ZZN7xgboost10collective9CommGroup6CreateENS_4JsonEENK3$_0clIlNS_11JsonIntegerEEEDaNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 %22, i64 noundef 0)
          to label %bb.ae unwind label %bb.ao     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.gt = load ptr, ptr %22, align 8, !tbaa !61   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.gm
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.ae
  %i.gv = load i64, ptr %i.gm, align 8, !tbaa !27
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  store i64 %i.gs, ptr %i.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  store i16 -1, ptr %i.j, align 2, !tbaa !79
  %.not.i106 = icmp sgt i64 %i.gs, 65535
  br i1 %.not.i106, label %bb.af, label %_ZN4dmlc11LogCheck_LEIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit108.thread

_ZN4dmlc11LogCheck_LEIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit108.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit256

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  invoke void @_ZN4dmlc14LogCheckFormatIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.j)
          to label %_ZN4dmlc11LogCheck_LEIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit108 unwind label %bb.ap

_ZN4dmlc11LogCheck_LEIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit108: ; preds = %bb.af
  %.pr390 = load ptr, ptr %23, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  %.not427 = icmp eq ptr %.pr390, null
  br i1 %.not427, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit256, label %bb.ag

bb.ag:                                            ; preds = %_ZN4dmlc11LogCheck_LEIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  %i.gx = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %.noexc206 unwind label %bb.aq

.noexc206:                                        ; preds = %bb.ag
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gx, ptr noundef nonnull @.str, i32 noundef 88)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit208 unwind label %bb.aq

_ZN4dmlc15LogMessageFatalC2EPKci.exit208:         ; preds = %.noexc206
  %i.gy = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit210 unwind label %bb.ar ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit210: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit208
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.7, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit210
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.14, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
  %i.hb = load ptr, ptr %23, align 8, !tbaa !76   ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !61
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !62
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef %i.hc, i64 noundef %i.he)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit216 unwind label %bb.ar

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit216: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit216
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.at unwind label %bb.aq

bb.ah:                                            ; preds = %bb.u, %bb.r
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.u ], [ %i.cp, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.ai:                                            ; preds = %.thread
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %12, align 8, !tbaa !21
  %i.hi = load ptr, ptr %i.de, align 8, !tbaa !61 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.df
  br i1 %i.hj, label %_ZN7xgboost10JsonStringD2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219: ; preds = %bb.ai
  %i.hk = load i64, ptr %i.df, align 8, !tbaa !27
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #28
  br label %_ZN7xgboost10JsonStringD2Ev.exit221

_ZN7xgboost10JsonStringD2Ev.exit221:              ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219
  %i.hm = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.da
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit221
  %i.ho = load i64, ptr %i.da, align 8, !tbaa !27
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  %i.hq = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.cx
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.hs = load i64, ptr %i.cx, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.sink.split

bb.aj:                                            ; preds = %.noexc.i164
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.ak:                                            ; preds = %bb.y
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %16, align 8, !tbaa !21
  %i.hv = load ptr, ptr %i.ep, align 8, !tbaa !61 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.eq
  br i1 %i.hw, label %_ZN7xgboost10JsonStringD2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228: ; preds = %bb.ak
  %i.hx = load i64, ptr %i.eq, align 8, !tbaa !27
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #28
  br label %_ZN7xgboost10JsonStringD2Ev.exit230

_ZN7xgboost10JsonStringD2Ev.exit230:              ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228
  %i.hz = load ptr, ptr %15, align 8, !tbaa !61   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.el
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit230
  %i.ib = load i64, ptr %i.el, align 8, !tbaa !27
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  %i.id = load ptr, ptr %14, align 8, !tbaa !61   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.ef
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.if = load i64, ptr %i.ef, align 8, !tbaa !27
  %37 = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %37) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.al:                                            ; preds = %.noexc.i177
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.am:                                            ; preds = %bb.aa
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %17, align 8, !tbaa !61   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.fe
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.am
  %i.ik = load i64, ptr %i.fe, align 8, !tbaa !27
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i181
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %21, align 8, !tbaa !21
  %i.in = load ptr, ptr %i.fx, align 8, !tbaa !61 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.fy
  br i1 %i.io, label %_ZN7xgboost10JsonStringD2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240: ; preds = %bb.an
  %i.ip = load i64, ptr %i.fy, align 8, !tbaa !27
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #28
  br label %_ZN7xgboost10JsonStringD2Ev.exit242

_ZN7xgboost10JsonStringD2Ev.exit242:              ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240
  %i.ir = load ptr, ptr %20, align 8, !tbaa !61   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.fs
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit242
  %i.it = load i64, ptr %i.fs, align 8, !tbaa !27
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  %i.iv = load ptr, ptr %19, align 8, !tbaa !61   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.fp
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.ix = load i64, ptr %i.fp, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.sink.split

bb.ao:                                            ; preds = %bb.ad
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = load ptr, ptr %22, align 8, !tbaa !61   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.gm
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.ao
  %i.jb = load i64, ptr %i.gm, align 8, !tbaa !27
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.ap:                                            ; preds = %bb.af
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %bb.ax

bb.aq:                                            ; preds = %.noexc206, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit216, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit210, %_ZN4dmlc15LogMessageFatalC2EPKci.exit208
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.as unwind label %bb.dl

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn69 = phi { ptr, i32 } [ %i.je, %bb.aq ], [ %i.jf, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #11
  br label %bb.ax

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  %.pr391 = load ptr, ptr %23, align 8, !tbaa !76 ; 4 uses
  %.not.i252 = icmp eq ptr %.pr391, null
  br i1 %.not.i252, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit256, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jg = load ptr, ptr %.pr391, align 8, !tbaa !61 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.pr391, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253: ; preds = %bb.au
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !27
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i254

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i254: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %.pr391, i64 noundef 32) #28
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit256

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit256: ; preds = %_ZN4dmlc11LogCheck_LEIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit108, %_ZN4dmlc11LogCheck_LEIltEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit108.thread, %bb.at, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store i32 0, ptr %i.k, align 4, !tbaa !28
  %i.jl = load i64, ptr %i.i, align 8, !tbaa !60, !noalias !136
  %.not.i98 = icmp slt i64 %i.jl, 0
  br i1 %.not.i98, label %bb.av, label %_ZN4dmlc11LogCheck_GEIliEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit100.thread

_ZN4dmlc11LogCheck_GEIliEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit100.thread: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit274

bb.av:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit256
  invoke void @_ZN4dmlc14LogCheckFormatIliEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN4dmlc11LogCheck_GEIliEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit100 unwind label %bb.ay

_ZN4dmlc11LogCheck_GEIliEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit100: ; preds = %bb.av
  %.pr395 = load ptr, ptr %25, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  %.not428 = icmp eq ptr %.pr395, null
  br i1 %.not428, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit274, label %bb.aw

bb.aw:                                            ; preds = %_ZN4dmlc11LogCheck_GEIliEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #11
  %i.jm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %.noexc257 unwind label %bb.az

.noexc257:                                        ; preds = %bb.aw
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jm, ptr noundef nonnull @.str, i32 noundef 89)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit259 unwind label %bb.az

_ZN4dmlc15LogMessageFatalC2EPKci.exit259:         ; preds = %.noexc257
  %i.jn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit261 unwind label %bb.ba ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit261: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit259
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull @.str.7, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit261
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull @.str.15, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263
  %i.jq = load ptr, ptr %25, align 8, !tbaa !76   ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !61
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !62
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef %i.jr, i64 noundef %i.jt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267 unwind label %bb.ba

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.bc unwind label %bb.az

bb.ax:                                            ; preds = %bb.as, %bb.ap
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %bb.as ], [ %i.jd, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.ay:                                            ; preds = %bb.av
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %bb.bg

bb.az:                                            ; preds = %.noexc257, %bb.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit261, %_ZN4dmlc15LogMessageFatalC2EPKci.exit259
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.bb unwind label %bb.dl

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn72 = phi { ptr, i32 } [ %i.jx, %bb.az ], [ %i.jy, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #11
  br label %bb.bg

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269
end_hunk_0
begin_hunk_1_@_ZN7xgboost10collective9CommGroup6CreateENS_4JsonE:bb.a
bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i319
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #11
  br label %_ZNSt12__shared_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i319, %bb.cp
  %i.oa = load ptr, ptr %i.mq, align 8, !tbaa !22 ; 8 uses
  %.not.i.i321 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i321, label %_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 4 uses
  %i.oc = load atomic i64, ptr %i.ob acquire, align 8 ; 2 uses
  %i.od = icmp eq i64 %i.oc, 4294967297
  %i.oe = trunc i64 %i.oc to i32                  ; 2 uses
  br i1 %i.od, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.ob, align 8, !tbaa !25
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  store i32 0, ptr %i.of, align 4, !tbaa !26
  %i.og = load ptr, ptr %i.oa, align 8, !tbaa !21
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(16) %i.oa) #11, !inline_history !133
  %i.oj = load ptr, ptr %i.oa, align 8, !tbaa !21
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(16) %i.oa) #11, !inline_history !133
  br label %_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.om = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i322 = icmp eq i8 %i.om, 0
  br i1 %.not.i.i.i322, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.on = add nsw i32 %i.oe, -1
  store i32 %i.on, ptr %i.ob, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i323

bb.cu:                                            ; preds = %bb.cs
  %i.oo = atomicrmw volatile add ptr %i.ob, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i323

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i323: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i324 = phi i32 [ %i.oe, %bb.ct ], [ %i.oo, %bb.cu ]
  %i.op = icmp eq i32 %.0.i.i.i.i324, 1
  br i1 %i.op, label %bb.cv, label %_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i323
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oa) #11
  br label %_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i323, %bb.cv
  %i.oq = load ptr, ptr %33, align 8, !tbaa !61   ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.lu
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.os = load i64, ptr %i.lu, align 8, !tbaa !27
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  %i.ou = load ptr, ptr %18, align 8, !tbaa !61   ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.ox = load i64, ptr %i.ov, align 8, !tbaa !27
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  %i.oz = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.pb = icmp eq ptr %i.oz, %i.pa
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.pc = load i64, ptr %i.pa, align 8, !tbaa !27
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.dh

bb.cw:                                            ; preds = %bb.bt, %bb.bq
  %.pn78.pn = phi { ptr, i32 } [ %.pn78, %bb.bt ], [ %i.li, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.cx:                                            ; preds = %.noexc.i200, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit310
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.cy:                                            ; preds = %bb.bw
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread: ; preds = %.noexc.i312
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cc, %_ZNSt10shared_ptrIN7xgboost10collective9RabitCommEEC2IS2_vEEPT_.exit
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %.thread413

bb.da:                                            ; preds = %_ZNSt10shared_ptrIN7xgboost10collective4CollEEC2IS2_vEEPT_.exit
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #11
  br label %.thread413

bb.db:                                            ; preds = %bb.ca, %bb.cb
  %.0 = phi i1 [ false, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pk = load ptr, ptr %33, align 8, !tbaa !61   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.lu
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

.thread413:                                       ; preds = %bb.cz, %bb.da
  %.pn81 = phi { ptr, i32 } [ %i.pi, %bb.da ], [ %i.ph, %bb.cz ] ; 2 uses
  call void @_ZNSt12__shared_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #11
  call void @_ZNSt12__shared_ptrIN7xgboost10collective9RabitCommELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #11
  %i.pm = load ptr, ptr %33, align 8, !tbaa !61   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.lu
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.thread: ; preds = %.thread413
  %i.po = load i64, ptr %i.lu, align 8, !tbaa !27
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %bb.db
  %i.pq = load i64, ptr %i.lu, align 8, !tbaa !27
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pr) #28
  br i1 %.0, label %bb.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %bb.db
  br i1 %.0, label %bb.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %.pn81.pn.pn412 = phi { ptr, i32 } [ %i.pg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread ], [ %i.pj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ %i.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef 224) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420: ; preds = %.thread413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %bb.dc, %bb.cy
  %.pn81.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn412, %bb.dc ], [ %i.pj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ %i.pf, %bb.cy ], [ %i.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ], [ %.pn81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334.thread ], [ %.pn81, %.thread413 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef 64) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420, %bb.cw, %bb.bp, %bb.bg, %bb.ax
  %.pn81.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pe, %bb.cx ], [ %.pn78.pn, %bb.cw ], [ %.pn75.pn, %bb.bp ], [ %.pn72.pn, %bb.bg ], [ %.pn69.pn, %bb.ax ], [ %.pn81.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.thread420 ], [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %i.iy, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  %i.ps = load ptr, ptr %18, align 8, !tbaa !61   ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  %.sink523 = phi i64 [ %i.pv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ]
  %.sink = phi ptr [ %i.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ]
  %.pn81.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ]
  %i.pw = add i64 %.sink523, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.pw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %.pn81.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %.pn81.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %.pn81.pn.pn.pn.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.am, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %.pn81.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %i.ig, %bb.al ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.ih, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  %i.px = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %38 = load i64, ptr %i.py, align 8, !tbaa !27
  %i.qa = add i64 %38, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.a, %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.ht, %bb.aj ], [ %.pn81.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.a ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %.pn81.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.di

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.qb = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 1
  %i.qd = xor i64 %i.qc, 7310575239084402022
  %i.qe = getelementptr i8, ptr %i.qb, i64 8
  %i.qf = load i8, ptr %i.qe, align 1
  %i.qg = zext i8 %i.qf to i64
  %i.qh = xor i64 %i.qg, 100
  %i.qi = or i64 %i.qd, %i.qh
  %i.qj = icmp ne i64 %i.qi, 0
  %i.qk = zext i1 %i.qj to i32
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.dh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #11
  %i.qm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %.noexc345 unwind label %bb.de

.noexc345:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344.thread
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.qm, ptr noundef nonnull @.str, i32 noundef 107)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit347 unwind label %bb.de

_ZN4dmlc15LogMessageFatalC2EPKci.exit347:         ; preds = %.noexc345
  %i.qn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit349 unwind label %bb.df

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit349: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit347
  %i.qo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qn, ptr noundef nonnull @.str.19, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351 unwind label %bb.df ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit349
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #11
  br label %bb.dh

bb.de:                                            ; preds = %.noexc345, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.df:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit349, %_ZN4dmlc15LogMessageFatalC2EPKci.exit347
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.dg unwind label %bb.dl

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.pn58 = phi { ptr, i32 } [ %i.qp, %bb.de ], [ %i.qq, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #11
  br label %bb.di

bb.dh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344, %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %.046 = phi ptr [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ], [ null, %bb.dd ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit344 ]
  %i.qr = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.dh
  %i.qu = load i64, ptr %i.qs, align 8, !tbaa !27
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.qw = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.aj
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.qy = load i64, ptr %i.aj, align 8, !tbaa !27
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn58, %bb.dg ] ; 2 uses
  %i.ra = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %bb.di
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  %.sink526.a = phi i64 [ %i.rd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ]
  %.sink524.a = phi ptr [ %i.ra, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ]
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ]
  %i.re = add i64 %.sink526.a, 1
  call void @_ZdlPvm(ptr noundef %.sink524.a, i64 noundef %i.re) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.sink.split, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.di ], [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.ah
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn53.pn, %bb.ah ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.ck, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.cf, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.rf = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.aj
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.rh = load i64, ptr %i.aj, align 8, !tbaa !27
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ], [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.dk

bb.dj:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %.147 = phi ptr [ %.046, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ], [ %i.r, %bb.b ]
  ret ptr %.147

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %bb.c
  %.pn96 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn81.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ]
  resume { ptr, i32 } %.pn96

bb.dl:                                            ; preds = %bb.df, %bb.bs, %bb.bj, %bb.ba, %bb.ar, %bb.t
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  %i.rk = extractvalue { ptr, i32 } %i.rj, 0
  call void @__clang_call_terminate(ptr %i.rk) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i64 @"_ZZN7xgboost10collective9CommGroup6CreateENS_4JsonEENK3$_0clIlNS_11JsonIntegerEEEDaNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.xgboost::StringView", align 8 ; 6 uses
  %4 = alloca %"struct.xgboost::StringView", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !62
  store i8 0, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %.not5.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not5.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcS9_EEZZN7xgboost10collective9CommGroup6CreateENSD_4JsonEENK3$_0clIlNSD_11JsonIntegerEEEDaS9_T_T0_EUlcE0_ESL_SK_SK_SL_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i
  %.sroa.02.06.i = phi ptr [ %i.x, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load i8, ptr %.sroa.02.06.i, align 1, !tbaa !27
  %i.i = sext i8 %i.h to i32
  %i.j = call noundef i32 @toupper(i32 noundef %i.i) #31
  %i.k = trunc i32 %i.j to i8
  %i.l = load i64, ptr %i.c, align 8, !tbaa !62   ; 4 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !61     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.lr.ph.i
  %i.p = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.q = load i64, ptr %i.b, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.s = icmp ugt i64 %i.m, %i.r
  br i1 %i.s, label %bb.b, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i

end_hunk_1
