Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvpack?download=true
inline.NumInlined: 614
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.na = getelementptr inbounds nuw i8, ptr %i.mt, i64 129
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !139
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 129 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !139
  %i.ne = or i8 %i.nd, %i.nb
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !139
  %i.nf = invoke ptr @agfstnode(ptr noundef nonnull %i.ly)
          to label %.preheader.i21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i21:                                   ; preds = %bb.cu, %.loopexit153.i
  %.080.i = phi ptr [ %i.qq, %.loopexit153.i ], [ %i.nf, %bb.cu ] ; 9 uses
  %.178.i = phi i1 [ %.279.i, %.loopexit153.i ], [ %.077170.i, %bb.cu ] ; 2 uses
  %.not85.i = icmp eq ptr %.080.i, null
  br i1 %.not85.i, label %bb.do, label %bb.cv

bb.cv:                                            ; preds = %.preheader.i21
  br i1 %.178.i, label %bb.cw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118.i

bb.cw:                                            ; preds = %bb.cv
  %i.ng = invoke ptr @agnameof(ptr noundef nonnull %.080.i)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  %i.nh = invoke ptr @agnode(ptr noundef %i.iu, ptr noundef %i.ng, i32 noundef 0)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %.not87.i = icmp eq ptr %i.nh, null
  br i1 %.not87.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ni = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.45, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101.i: ; preds = %bb.cz
  %i.nj = invoke ptr @agnameof(ptr noundef nonnull %.080.i)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.da:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101.i
  %.not.i102.i = icmp eq ptr %i.nj, null
  br i1 %.not.i102.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.nk = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !117
  %i.nl = getelementptr i8, ptr %i.nk, i64 -24
  %i.nm = load i64, ptr %i.nl, align 8
  %i.nn = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.np = load i32, ptr %i.no, align 8, !tbaa !132
  %i.nq = or i32 %i.np, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.nn, i32 noundef %i.nq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.da
  %i.nr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nj) #30
  %i.ns = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.nj, i64 noundef %i.nr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.i: ; preds = %bb.dc, %bb.db
  %i.nt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.46, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105.i
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %.076171.i)
          to label %_ZNSolsEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZNSolsEm.exit.i:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107.i
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef nonnull @.str.47, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110.i: ; preds = %_ZNSolsEm.exit.i
  %i.nw = invoke ptr @agnameof(ptr noundef nonnull %i.ly)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.dd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110.i
  %.not.i111.i = icmp eq ptr %i.nw, null
  br i1 %.not.i111.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.nx = load ptr, ptr %i.nu, align 8, !tbaa !117
  %i.ny = getelementptr i8, ptr %i.nx, i64 -24
  %i.nz = load i64, ptr %i.ny, align 8
  %i.oa = getelementptr inbounds i8, ptr %i.nu, i64 %i.nz ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !132
  %i.od = or i32 %i.oc, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.oa, i32 noundef %i.od)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.dd
  %i.oe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nw) #30
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef nonnull %i.nw, i64 noundef %i.oe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114.i: ; preds = %bb.df, %bb.de
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef nonnull @.str.48, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114.i
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef nonnull @.str.49, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.i, %bb.cy, %bb.cv
  %.279.i = phi i1 [ false, %bb.cv ], [ true, %bb.cy ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.oi = invoke ptr @agnameof(ptr noundef nonnull %.080.i)
          to label %bb.dg unwind label %bb.dm

bb.dg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118.i
  invoke fastcc void @_ZL5xNameRSt8multisetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEPc(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.oi)
          to label %bb.dh unwind label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.oj = load ptr, ptr %7, align 8, !tbaa !22
  %i.ok = invoke ptr @agnode(ptr noundef %i.iu, ptr noundef %i.oj, i32 noundef 1)
          to label %bb.di unwind label %bb.dn     ; 6 uses

bb.di:                                            ; preds = %bb.dh
  %i.ol = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.li
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.di
  %i.on = load i64, ptr %i.li, align 8, !tbaa !18
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.op = invoke ptr @agbindrec(ptr noundef %i.ok, ptr noundef nonnull @.str.32, i32 noundef 472, i32 noundef 1)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23
  %i.oq = getelementptr inbounds nuw i8, ptr %.080.i, i64 16 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !45
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 152
  store ptr %i.ok, ptr %i.os, align 8, !tbaa !70
  %i.ot = load i32, ptr %.080.i, align 8
  %i.ou = and i32 %i.ot, 3                        ; 2 uses
  %i.ov = invoke ptr @agroot(ptr noundef nonnull %.080.i)
          to label %.noexc133.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc133.i:                                      ; preds = %bb.dj
  %i.ow = invoke ptr @agroot(ptr noundef %i.ok)
          to label %.noexc134.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc134.i:                                      ; preds = %.noexc133.i
  %i.ox = invoke ptr @agnxtattr(ptr noundef %i.ov, i32 noundef %i.ou, ptr noundef null)
          to label %.noexc135.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc135.i:                                      ; preds = %.noexc134.i
  %.not22.i.i = icmp eq ptr %i.ox, null
  br i1 %.not22.i.i, label %.loopexit153.i, label %.lr.ph.i130.i

.lr.ph.i130.i:                                    ; preds = %.noexc135.i, %.noexc142.i
  %.023.i.i = phi ptr [ %i.pi, %.noexc142.i ], [ %i.ox, %.noexc135.i ] ; 4 uses
  %i.oy = invoke ptr @agxget(ptr noundef nonnull %.080.i, ptr noundef nonnull %.023.i.i)
          to label %.noexc136.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc136.i:                                      ; preds = %.lr.ph.i130.i
  %i.oz = invoke i32 @aghtmlstr(ptr noundef %i.oy)
          to label %.noexc137.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc137.i:                                      ; preds = %.noexc136.i
  %.not21.i.i = icmp eq i32 %i.oz, 0
  br i1 %.not21.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.noexc137.i
  %i.pa = invoke ptr @agstrdup_html(ptr noundef %i.ow, ptr noundef %i.oy)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc138.i:                                      ; preds = %bb.dk
  %i.pb = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !74
  %i.pd = invoke i32 @agset(ptr noundef %i.ok, ptr noundef %i.pc, ptr noundef %i.pa)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc139.i:                                      ; preds = %.noexc138.i
  %i.pe = invoke i32 @agstrfree(ptr noundef %i.ow, ptr noundef %i.pa, i1 noundef zeroext true)
          to label %.noexc140.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dl:                                            ; preds = %.noexc137.i
  %i.pf = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !74
  %i.ph = invoke i32 @agset(ptr noundef %i.ok, ptr noundef %i.pg, ptr noundef %i.oy)
          to label %.noexc140.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc140.i:                                      ; preds = %bb.dl, %.noexc139.i
  %i.pi = invoke ptr @agnxtattr(ptr noundef %i.ov, i32 noundef %i.ou, ptr noundef nonnull %.023.i.i)
          to label %.noexc142.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142.i:                                      ; preds = %.noexc140.i
  %.not.i131.i = icmp eq ptr %i.pi, null
  br i1 %.not.i131.i, label %.loopexit153.i, label %.lr.ph.i130.i, !llvm.loop !0

.loopexit153.i:                                   ; preds = %.noexc142.i, %.noexc135.i
  %i.pj = load ptr, ptr %i.oq, align 8, !tbaa !45 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 176
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !140 ; 2 uses
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !29 ; 3 uses
  %i.pn = fmul double %i.pm, 7.200000e+01
  %i.po = fcmp ult double %i.pn, 0.000000e+00
  %14 = call double @llvm.fmuladd.f64(double %i.pm, double 7.200000e+01, double 5.000000e-01)
  %15 = call double @llvm.fmuladd.f64(double %i.pm, double 7.200000e+01, double -5.000000e-01)
  %.in.i.i = select i1 %i.po, double %15, double %14
  %i.pp = fptosi double %.in.i.i to i32
  %i.pq = sitofp i32 %i.pp to double
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !45 ; 7 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store double %i.pq, ptr %i.pt, align 8, !tbaa !141
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !29 ; 3 uses
  %i.pw = fmul double %i.pv, 7.200000e+01
  %i.px = fcmp ult double %i.pw, 0.000000e+00
  %16 = call double @llvm.fmuladd.f64(double %i.pv, double 7.200000e+01, double 5.000000e-01)
  %17 = call double @llvm.fmuladd.f64(double %i.pv, double 7.200000e+01, double -5.000000e-01)
  %.in26.i.i = select i1 %i.px, double %17, double %16
  %i.py = fptosi double %.in26.i.i to i32
  %i.pz = sitofp i32 %i.py to double
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 40
  store double %i.pz, ptr %i.qa, align 8, !tbaa !142
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pj, i64 96
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !143
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ps, i64 96
  store double %i.qc, ptr %i.qd, align 8, !tbaa !143
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pj, i64 48
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ps, i64 48
  %i.qg = load <2 x double>, ptr %i.qe, align 8, !tbaa !29
  store <2 x double> %i.qg, ptr %i.qf, align 8, !tbaa !29
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pj, i64 104
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ps, i64 104
  %i.qj = load <2 x double>, ptr %i.qh, align 8, !tbaa !29
  store <2 x double> %i.qj, ptr %i.qi, align 8, !tbaa !29
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.qm = load <2 x ptr>, ptr %i.qk, align 8, !tbaa !135
  store <2 x ptr> %i.qm, ptr %i.ql, align 8, !tbaa !135
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pj, i64 144
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !144
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ps, i64 144
  store ptr %i.qo, ptr %i.qp, align 8, !tbaa !144
  %i.qq = invoke ptr @agnxtnode(ptr noundef nonnull %i.ly, ptr noundef nonnull %.080.i)
          to label %.preheader.i21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !95

bb.dm:                                            ; preds = %bb.dg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i

bb.dn:                                            ; preds = %bb.dh
  %i.qs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qt = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.li
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i: ; preds = %bb.dn
  %i.qv = load i64, ptr %i.li, align 8, !tbaa !18
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i, %bb.dm
  %.pn88.i = phi { ptr, i32 } [ %i.qr, %bb.dm ], [ %i.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i ], [ %i.qs, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.loopexit.split-lp.loopexit.split-lp.i20

bb.do:                                            ; preds = %.preheader.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.qx = invoke ptr @agnameof(ptr noundef nonnull %i.ly)
          to label %bb.dp unwind label %bb.du

bb.dp:                                            ; preds = %bb.do
  invoke fastcc void @_ZL5xNameRSt8multisetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEPc(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.qx)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.qy = load ptr, ptr %8, align 8, !tbaa !22
  %i.qz = invoke ptr @agsubg(ptr noundef %i.iu, ptr noundef %i.qy, i32 noundef 1)
          to label %bb.dr unwind label %bb.dv     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.ra = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.lj
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i: ; preds = %bb.dr
  %i.rc = load i64, ptr %i.lj, align 8, !tbaa !18
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.re = invoke ptr @agbindrec(ptr noundef %i.qz, ptr noundef nonnull @.str.31, i32 noundef 400, i32 noundef 1)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i
  invoke fastcc void @_ZL9cloneSubgP8Agraph_sS0_P7Agsym_sRSt8multisetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_EE(ptr noundef nonnull %i.ly, ptr noundef %i.qz, ptr noundef %i.ku, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  %i.rf = add nuw i64 %.076171.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.rf, %i.jn
  br i1 %exitcond.not, label %._crit_edge174.i, label %bb.cn, !llvm.loop !96

bb.du:                                            ; preds = %bb.dp, %bb.do
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i

bb.dv:                                            ; preds = %bb.dq
  %i.rh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ri = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.lj
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i: ; preds = %bb.dv
  %i.rk = load i64, ptr %i.lj, align 8, !tbaa !18
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i, %bb.du
  %.pn.i25 = phi { ptr, i32 } [ %i.rg, %bb.du ], [ %i.rh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i ], [ %i.rh, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit.split-lp.loopexit.split-lp.i20

bb.dw:                                            ; preds = %._crit_edge174.i
  %i.rm = add nsw i32 %i.lw, 1                    ; 2 uses
  %i.rn = sext i32 %i.rm to i64                   ; 4 uses
  %mul.ov.i.i = icmp slt i32 %i.lw, -1
  br i1 %mul.ov.i.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ro = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.rp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ro, ptr noundef nonnull @.str.54, i64 noundef range(i64 -2147483647, 2147483648) %i.rn, i64 noundef 8) #32 ; 0 uses
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.rq = icmp ne i32 %i.rm, 0
  %i.rr = call noalias ptr @calloc(i64 noundef range(i64 -2147483647, 2147483648) %i.rn, i64 noundef 8) #36 ; 3 uses
  %i.rs = icmp eq ptr %i.rr, null
  %or.cond3.i.i = and i1 %i.rq, %i.rs
  br i1 %or.cond3.i.i, label %bb.dz, label %_ZL9gv_callocmm.exit.i

bb.dz:                                            ; preds = %bb.dy
  %i.rt = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ru = shl nuw nsw i64 %i.rn, 3
  %i.rv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rt, ptr noundef nonnull @.str.55, i64 noundef %i.ru) #32 ; 0 uses
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

_ZL9gv_callocmm.exit.i:                           ; preds = %bb.dy
  %i.rw = shl nuw nsw i64 %i.rn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.rr, i8 0, i64 %i.rw, i1 false)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.lu, i64 240
  store ptr %i.rr, ptr %i.rx, align 8, !tbaa !75
  br label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %_ZL9gv_callocmm.exit.i, %._crit_edge180.i
  %.0183.i = phi i32 [ %.1.lcssa.i, %._crit_edge180.i ], [ 1, %_ZL9gv_callocmm.exit.i ] ; 2 uses
  %.sroa.0143.0182.i = phi ptr [ %i.sx, %._crit_edge180.i ], [ %.ph.ph, %_ZL9gv_callocmm.exit.i ] ; 2 uses
  %i.ry = load ptr, ptr %.sroa.0143.0182.i, align 8, !tbaa !33
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !45 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 236
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !63
  %.not84175.i = icmp slt i32 %i.sc, 1
  br i1 %.not84175.i, label %._crit_edge180.i, label %.lr.ph179.preheader.i

.lr.ph179.preheader.i:                            ; preds = %.lr.ph184.i
  %i.sd = sext i32 %.0183.i to i64
  br label %.lr.ph179.i

.lr.ph179.i:                                      ; preds = %.lr.ph179.i, %.lr.ph179.preheader.i
  %indvars.iv202.i = phi i64 [ 1, %.lr.ph179.preheader.i ], [ %indvars.iv.next203.i, %.lr.ph179.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.sd, %.lr.ph179.preheader.i ], [ %indvars.iv.next.i, %.lr.ph179.i ] ; 2 uses
  %i.se = phi ptr [ %i.sa, %.lr.ph179.preheader.i ], [ %i.ss, %.lr.ph179.i ]
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 240
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !75
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %indvars.iv202.i ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !33
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !45
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 160
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !76 ; 2 uses
  %i.sn = load ptr, ptr %i.lh, align 8, !tbaa !45
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 240
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !75
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %indvars.iv.i
  store ptr %i.sm, ptr %i.sq, align 8, !tbaa !33
  %i.sr = load ptr, ptr %i.sh, align 8, !tbaa !33
  call fastcc void @_ZL16cloneClusterTreeP8Agraph_sS0_(ptr noundef %i.sr, ptr noundef %i.sm)
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1
  %i.ss = load ptr, ptr %i.rz, align 8, !tbaa !45 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 236
  %i.su = load i32, ptr %i.st, align 4, !tbaa !63
  %i.sv = sext i32 %i.su to i64
  %.not84.not.i = icmp slt i64 %indvars.iv202.i, %i.sv
  br i1 %.not84.not.i, label %.lr.ph179.i, label %._crit_edge180.loopexit.i, !llvm.loop !97

._crit_edge180.loopexit.i:                        ; preds = %.lr.ph179.i
  %i.sw = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge180.i

._crit_edge180.i:                                 ; preds = %._crit_edge180.loopexit.i, %.lr.ph184.i
  %.1.lcssa.i = phi i32 [ %.0183.i, %.lr.ph184.i ], [ %i.sw, %._crit_edge180.loopexit.i ]
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182.i, i64 8 ; 2 uses
  %.not151.i = icmp eq ptr %i.sx, %.ph313
  br i1 %.not151.i, label %.loopexit.i, label %.lr.ph184.i

.loopexit.i:                                      ; preds = %._crit_edge180.i, %._crit_edge174.i
  %i.sy = load ptr, ptr %i.ld, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.065 = load ptr, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %.not66 = icmp eq ptr %.065, null
  br i1 %.not66, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_upper_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21   ; 8 uses
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.d ] ; 8 uses
  %.02267 = phi ptr [ %i.b, %.lr.ph ], [ %.123, %bb.d ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.068, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g) ; 3 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.l = sub i64 %i.g, %i.d
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.n = sub i64 %i.g, %i.d
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread
  %i.q = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i26 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25
  %i.r = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i29 = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i30 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i29, i64 2147483647)
  %.0.i6.i.i.i31 = trunc nsw i64 %.08.i.i.i.i30 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28
  %.0.i.i.i27 = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25 ], [ %.0.i6.i.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28 ]
  %i.s = icmp slt i32 %.0.i.i.i27, 0
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32
  %i.t = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.068, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %.not10.i = icmp eq ptr %i.u, null
  br i1 %.not10.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.012.i = phi ptr [ %.1.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %i.u, %bb.c ] ; 4 uses
  %.0811.i = phi ptr [ %.19.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.068, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.y) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.i
  %i.ad = sub i64 %i.y, %i.d
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %.19.i = select i1 %i.ae, ptr %.0811.i, ptr %.012.i ; 2 uses
  %.1.in.v.i = select i1 %i.ae, i64 24, i64 16
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 %.1.in.v.i
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !85 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, label %.lr.ph.i, !llvm.loop !184

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.c
  %.08.lcssa.i = phi ptr [ %.068, %bb.c ], [ %.19.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 2 uses
  %.not10.i33 = icmp eq ptr %i.w, null
  br i1 %.not10.i33, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_upper_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40
  %.012.i35 = phi ptr [ %.1.i45, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %i.w, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit ] ; 4 uses
  %.0811.i36 = phi ptr [ %.19.i42, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %.02267, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i35, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.d) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i.i37, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38: ; preds = %.lr.ph.i34
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i35, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i.i.i37) #30 ; 2 uses
  %.not.i.i.i.i39 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38, %.lr.ph.i34
  %i.al = sub i64 %i.d, %i.ag
  %spec.select7.i.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i.i51 = trunc nsw i64 %.08.i.i.i.i.i50 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38
  %.0.i.i.i.i41 = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38 ], [ %.0.i6.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48 ]
  %i.am = icmp slt i32 %.0.i.i.i.i41, 0           ; 2 uses
  %.19.i42 = select i1 %i.am, ptr %.012.i35, ptr %.0811.i36 ; 2 uses
  %.1.in.v.i43 = select i1 %i.am, i64 16, i64 24
  %.1.in.i44 = getelementptr inbounds nuw i8, ptr %.012.i35, i64 %.1.in.v.i43
  %.1.i45 = load ptr, ptr %.1.in.i44, align 8, !tbaa !85 ; 2 uses
  %.not.i46 = icmp eq ptr %.1.i45, null
  br i1 %.not.i46, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_upper_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, label %.lr.ph.i34, !llvm.loop !185

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57
  %.sink = phi i64 [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57 ], [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread ], [ 16, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32 ]
  %.123 = phi ptr [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57 ], [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread ], [ %.068, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32 ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.068, i64 %.sink
  %.0 = load ptr, ptr %i.an, align 8, !tbaa !85   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_upper_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, label %bb.b, !llvm.loop !186

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_upper_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit: ; preds = %bb.d, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40, %bb.a, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit
  %.sroa.055.0 = phi ptr [ %.08.lcssa.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %.08.lcssa.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit ], [ %i.b, %bb.a ], [ %.123, %bb.d ]
  %.sroa.3.0 = phi ptr [ %.19.i42, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %.02267, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit ], [ %i.b, %bb.a ], [ %.123, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.055.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10cloneAttrsPvS_(ptr noundef %0, ptr noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = tail call ptr @agroot(ptr noundef nonnull %0) ; 2 uses
  %i.d = tail call ptr @agroot(ptr noundef %1)    ; 2 uses
  %i.e = tail call ptr @agnxtattr(ptr noundef %i.c, i32 noundef %i.b, ptr noundef null) ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.023 = phi ptr [ %i.p, %bb.d ], [ %i.e, %bb.a ] ; 4 uses
  %i.f = tail call ptr @agxget(ptr noundef nonnull %0, ptr noundef nonnull %.023) ; 3 uses
  %i.g = tail call i32 @aghtmlstr(ptr noundef %i.f)
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call ptr @agstrdup_html(ptr noundef %i.d, ptr noundef %i.f) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = tail call i32 @agset(ptr noundef %1, ptr noundef %i.j, ptr noundef %i.h) ; 0 uses
  %i.l = tail call i32 @agstrfree(ptr noundef %i.d, ptr noundef %i.h, i1 noundef zeroext true) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.o = tail call i32 @agset(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.f) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = tail call ptr @agnxtattr(ptr noundef %i.c, i32 noundef %i.b, ptr noundef nonnull %.023) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #23

declare ptr @agroot(ptr noundef) local_unnamed_addr #4

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @aghtmlstr(ptr noundef) local_unnamed_addr #4

declare ptr @agstrdup_html(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @agset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @agstrfree(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @is_a_cluster(ptr noundef) local_unnamed_addr #4

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #4

declare ptr @agsubnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @agedge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @agattr_html(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_gvpack.cpp() #25 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZL6G_args, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorI6attr_tSaIS0_EED2Ev, ptr nonnull @_ZL6G_args, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { cold nounwind }
attributes #33 = { cold }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { nounwind allocsize(0,1) }
attributes #37 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !25}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseI6attr_tSaIS0_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 16}
!14 = !{!"bool", !6, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !19, i64 8, !6, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!20, !15, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!14, !14, i64 0}
!28 = !{!"double", !6, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"p1 _ZTS8Agraph_s", !10, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!35 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!36 = !{!"_ZTSSt18_Rb_tree_node_base", !34, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!37 = !{!"_ZTSSt15_Rb_tree_header", !36, i64 0, !19, i64 32}
!38 = !{!37, !35, i64 8}
!39 = !{!37, !35, i64 16}
!40 = !{!37, !19, i64 32}
!41 = !{!19, !19, i64 0}
!42 = !{!"_ZTS7Agtag_s", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !19, i64 8}
!43 = !{!"p1 _ZTS7Agrec_s", !10, i64 0}
!44 = !{!"_ZTS7Agobj_s", !42, i64 0, !43, i64 16}
!45 = !{!44, !43, i64 16}
!46 = !{!"_ZTS7Agrec_s", !15, i64 0, !43, i64 8}
!47 = !{!"p1 _ZTS8layout_t", !10, i64 0}
!48 = !{!"p1 _ZTS11textlabel_t", !10, i64 0}
!49 = !{!"_ZTS8pointf_s", !28, i64 0, !28, i64 8}
!50 = !{!"_ZTS4boxf", !49, i64 0, !49, i64 16}
!51 = !{!"short", !6, i64 0}
!52 = !{!"p1 _ZTS5GVC_s", !10, i64 0}
!53 = !{!"p2 _ZTS8Agnode_s", !26, i64 0}
!54 = !{!"p2 double", !26, i64 0}
!55 = !{!"any p3 pointer", !26, i64 0}
!56 = !{!"p3 double", !55, i64 0}
!57 = !{!"p2 _ZTS8Agraph_s", !26, i64 0}
!58 = !{!"p1 _ZTS8Agnode_s", !10, i64 0}
!59 = !{!"p1 _ZTS6rank_t", !10, i64 0}
!60 = !{!"_ZTS7nlist_t", !53, i64 0, !19, i64 8}
!61 = !{!"_ZTS13fontname_kind", !6, i64 0}
!62 = !{!"_ZTS12Agraphinfo_t", !46, i64 0, !47, i64 16, !48, i64 24, !50, i64 32, !6, i64 64, !6, i64 128, !6, i64 129, !14, i64 130, !6, i64 131, !7, i64 132, !28, i64 136, !28, i64 144, !51, i64 152, !10, i64 160, !52, i64 168, !10, i64 176, !53, i64 184, !7, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !56, i64 224, !51, i64 232, !51, i64 234, !7, i64 236, !57, i64 240, !32, i64 248, !58, i64 256, !59, i64 264, !32, i64 272, !7, i64 280, !58, i64 288, !58, i64 296, !60, i64 304, !58, i64 320, !58, i64 328, !7, i64 336, !7, i64 340, !14, i64 344, !6, i64 345, !61, i64 348, !7, i64 352, !7, i64 356, !58, i64 360, !58, i64 368, !58, i64 376, !53, i64 384, !14, i64 392, !6, i64 393, !6, i64 394, !6, i64 395, !14, i64 396}
!63 = !{!62, !7, i64 236}
!64 = !{!"p1 _ZTS10shape_desc", !10, i64 0}
!65 = !{!"p1 double", !10, i64 0}
!66 = !{!"p2 _ZTS8Agedge_s", !26, i64 0}
!67 = !{!"_ZTS5elist", !66, i64 0, !19, i64 8}
!68 = !{!"p1 _ZTS8Agedge_s", !10, i64 0}
!69 = !{!"_ZTS12Agnodeinfo_t", !46, i64 0, !64, i64 16, !10, i64 24, !49, i64 32, !28, i64 48, !28, i64 56, !50, i64 64, !28, i64 96, !28, i64 104, !28, i64 112, !28, i64 120, !28, i64 128, !48, i64 136, !48, i64 144, !10, i64 152, !6, i64 160, !6, i64 161, !14, i64 162, !6, i64 163, !7, i64 164, !7, i64 168, !7, i64 172, !65, i64 176, !28, i64 184, !6, i64 192, !14, i64 193, !58, i64 200, !58, i64 208, !6, i64 216, !19, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !58, i64 240, !58, i64 248, !67, i64 256, !67, i64 272, !67, i64 288, !67, i64 304, !67, i64 320, !32, i64 336, !7, i64 344, !58, i64 352, !7, i64 360, !7, i64 364, !28, i64 368, !67, i64 376, !67, i64 392, !67, i64 408, !67, i64 424, !68, i64 440, !7, i64 448, !7, i64 452, !7, i64 456, !6, i64 464}
!70 = !{!69, !10, i64 152}
!71 = !{!"p1 _ZTS9dtlink_s_", !10, i64 0}
!72 = !{!"_ZTS9dtlink_s_", !71, i64 0, !6, i64 8}
!73 = !{!"_ZTS7Agsym_s", !72, i64 0, !15, i64 16, !15, i64 24, !7, i64 32, !6, i64 36, !6, i64 37, !6, i64 38, !32, i64 40}
!74 = !{!73, !15, i64 16}
!75 = !{!62, !57, i64 240}
!76 = !{!62, !10, i64 160}
!77 = !{!"p1 _ZTS7splines", !10, i64 0}
!78 = !{!"_ZTS4port", !49, i64 0, !28, i64 16, !10, i64 24, !14, i64 32, !14, i64 33, !14, i64 34, !14, i64 35, !6, i64 36, !6, i64 37, !15, i64 40}
!79 = !{!"p1 _ZTS8pointf_s", !10, i64 0}
!80 = !{!"_ZTS7Ppoly_t", !79, i64 0, !19, i64 8}
!81 = !{!"_ZTS12Agedgeinfo_t", !46, i64 0, !77, i64 16, !78, i64 24, !78, i64 72, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !6, i64 152, !6, i64 153, !6, i64 154, !6, i64 155, !6, i64 156, !68, i64 160, !10, i64 168, !28, i64 176, !28, i64 184, !80, i64 192, !6, i64 208, !14, i64 209, !51, i64 210, !7, i64 212, !7, i64 216, !7, i64 220, !51, i64 224, !7, i64 228, !68, i64 232}
!82 = !{!81, !77, i64 16}
!83 = !{!81, !6, i64 152}
!84 = !{!73, !15, i64 24}
!85 = !{!35, !35, i64 0}
!86 = !{!36, !35, i64 24}
!87 = !{!36, !35, i64 16}
!88 = distinct !{!88, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!89 = distinct !{!89, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!91 = distinct !{!91, !90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, i1 true, !"_ZL10readGraphsP5GVC_sRSt8optionalI8Agdesc_sE"}
!94 = distinct !{!94, !93, !"_ZL10readGraphsP5GVC_sRSt8optionalI8Agdesc_sE: argument 0"}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, i1 true, !"_ZL6compBBRSt6vectorIP8Agraph_sSaIS1_EE"}
!99 = distinct !{!99, !98, !"_ZL6compBBRSt6vectorIP8Agraph_sSaIS1_EE: argument 0"}
!100 = distinct !{!100, !25}
!101 = !{!"float", !6, i64 0}
!102 = !{!"_ZTS9pack_mode", !6, i64 0}
!103 = !{!"p1 bool", !10, i64 0}
!104 = !{!"p1 int", !10, i64 0}
!105 = !{!"_ZTS9pack_info", !101, i64 0, !7, i64 4, !7, i64 8, !14, i64 12, !102, i64 16, !103, i64 24, !104, i64 32, !7, i64 40}
!106 = !{!105, !102, i64 16}
!107 = !{!105, !7, i64 8}
!108 = !{!105, !14, i64 12}
!109 = !{!105, !103, i64 24}
!110 = !{!105, !7, i64 4}
!111 = !{!7, !7, i64 0}
!112 = !{!15, !15, i64 0}
!113 = !{!89}
!114 = !{!91}
!115 = !{!11, !10, i64 8}
!116 = !{!"vtable pointer", !5, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!119 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!120 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!121 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !19, i64 8}
!122 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!123 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!124 = !{!"_ZTSSt6locale", !123, i64 0}
!125 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !118, i64 24, !119, i64 28, !119, i64 32, !120, i64 40, !121, i64 48, !6, i64 64, !7, i64 192, !122, i64 200, !124, i64 208}
!126 = !{!125, !19, i64 16}
!127 = !{!"p2 omnipotent char", !26, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"_ZTS12lt_symlist_t", !15, i64 0, !10, i64 8}
!130 = !{!129, !10, i64 8}
!131 = !{!94}
!132 = !{!125, !119, i64 32}
!133 = !{!37, !34, i64 0}
!134 = !{!37, !35, i64 24}
!135 = !{!10, !10, i64 0}
!136 = !{!"_ZTS6attr_t", !15, i64 0, !15, i64 8}
!137 = !{!136, !15, i64 0}
!138 = !{!136, !15, i64 8}
!139 = !{!62, !6, i64 129}
!140 = !{!69, !65, i64 176}
!141 = !{!69, !28, i64 32}
!142 = !{!69, !28, i64 40}
!143 = !{!69, !28, i64 96}
!144 = !{!69, !48, i64 144}
!145 = !{!99}
!146 = distinct !{!146, !25}
!147 = distinct !{!147, !25}
!148 = distinct !{!148, !25}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !25}
!151 = !{!62, !52, i64 168}
!152 = !{!62, !51, i64 232}
!153 = !{!51, !51, i64 0}
!154 = distinct !{!154, !25}
!155 = distinct !{!155, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!156 = distinct !{!156, !155, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!158 = distinct !{!158, !157, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!159 = distinct !{!159, !25}
!160 = distinct !{!160, !25}
!161 = !{!156}
!162 = !{!158}
!163 = distinct !{!163, !25}
!164 = distinct !{!164, !25}
!165 = distinct !{!165, !25}
!166 = distinct !{!166, !25}
!167 = distinct !{!167, !25}
!168 = !{!81, !10, i64 168}
!169 = !{!"_ZTS8Agedge_s", !44, i64 0, !72, i64 24, !72, i64 40, !58, i64 56}
!170 = !{!169, !58, i64 56}
!171 = !{!48, !48, i64 0}
!172 = distinct !{!172, !25}
!173 = !{!62, !48, i64 24}
!174 = !{i64 0, i64 8, !29, i64 8, i64 8, !29, i64 16, i64 8, !29, i64 24, i64 8, !29}
!175 = distinct !{!175, !25}
!176 = distinct !{!176, !25}
!177 = distinct !{!177, !25}
!178 = !{!"_ZTSN12_GLOBAL__N_114AttributeValueE", !20, i64 0, !19, i64 32}
!179 = !{!178, !19, i64 32}
!180 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEE", !20, i64 0, !178, i64 32}
!181 = !{!180, !19, i64 64}
!182 = distinct !{!182, !25}
!183 = distinct !{!183, !25}
!184 = distinct !{!184, !25}
end_hunk_1
