Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/application?download=true
inline.NumInlined: 3898
inline.NumDeleted: 1814
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8LightGBM6ConfigC2ERKS0_:bb.a
  %i.afl = load ptr, ptr %i.jf, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i342 = icmp eq ptr %i.afl, null
  br i1 %.not.i.i.i342, label %_ZNSt6vectorIdSaIdEED2Ev.exit343, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  %i.afm = load ptr, ptr %i.js, align 8, !tbaa !129
  %i.afn = ptrtoint ptr %i.afm to i64
  %i.afo = ptrtoint ptr %i.afl to i64
  %i.afp = sub i64 %i.afn, %i.afo
  call void @_ZdlPvm(ptr noundef nonnull %i.afl, i64 noundef %i.afp) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit343

_ZNSt6vectorIdSaIdEED2Ev.exit343:                 ; preds = %bb.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, %bb.en
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abh, %bb.en ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fp ] ; 2 uses
  %i.afq = load ptr, ptr %i.ii, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i344 = icmp eq ptr %i.afq, null
  br i1 %.not.i.i.i344, label %_ZNSt6vectorIdSaIdEED2Ev.exit345, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit343
  %i.afr = load ptr, ptr %i.iv, align 8, !tbaa !129
  %i.afs = ptrtoint ptr %i.afr to i64
  %i.aft = ptrtoint ptr %i.afq to i64
  %i.afu = sub i64 %i.afs, %i.aft
  call void @_ZdlPvm(ptr noundef nonnull %i.afq, i64 noundef %i.afu) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit345

_ZNSt6vectorIdSaIdEED2Ev.exit345:                 ; preds = %bb.fq, %_ZNSt6vectorIdSaIdEED2Ev.exit343, %bb.em
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abg, %bb.em ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit343 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fq ] ; 2 uses
  %i.afv = load ptr, ptr %i.hr, align 8, !tbaa !113 ; 2 uses
  %i.afw = icmp eq ptr %i.afv, %i.ht
  br i1 %i.afw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit345
  %i.afx = load i64, ptr %i.ht, align 8, !tbaa !112
  %i.afy = add i64 %i.afx, 1
  call void @_ZdlPvm(ptr noundef %i.afv, i64 noundef %i.afy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346, %bb.el
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abf, %bb.el ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit345 ] ; 2 uses
  %i.afz = load ptr, ptr %i.gu, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i349 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i.i349, label %_ZNSt6vectorIdSaIdEED2Ev.exit350, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  %i.aga = load ptr, ptr %i.hh, align 8, !tbaa !129
  %i.agb = ptrtoint ptr %i.aga to i64
  %i.agc = ptrtoint ptr %i.afz to i64
  %i.agd = sub i64 %i.agb, %i.agc
  call void @_ZdlPvm(ptr noundef nonnull %i.afz, i64 noundef %i.agd) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit350

_ZNSt6vectorIdSaIdEED2Ev.exit350:                 ; preds = %bb.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %bb.ek
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abe, %bb.ek ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fr ] ; 2 uses
  %i.age = load ptr, ptr %i.gc, align 8, !tbaa !113 ; 2 uses
  %i.agf = icmp eq ptr %i.age, %i.ge
  br i1 %i.agf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit350
  %i.agg = load i64, ptr %i.ge, align 8, !tbaa !112
  %i.agh = add i64 %i.agg, 1
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351, %bb.ej
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abd, %bb.ej ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit350 ] ; 2 uses
  %i.agi = load ptr, ptr %i.ff, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i354 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i.i354, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353
  %i.agj = load ptr, ptr %i.fs, align 8, !tbaa !131
  %i.agk = ptrtoint ptr %i.agj to i64
  %i.agl = ptrtoint ptr %i.agi to i64
  %i.agm = sub i64 %i.agk, %i.agl
  call void @_ZdlPvm(ptr noundef nonnull %i.agi, i64 noundef %i.agm) #30
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, %bb.ei
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abc, %bb.ei ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fs ] ; 2 uses
  %i.agn = load ptr, ptr %i.eo, align 8, !tbaa !113 ; 2 uses
  %i.ago = icmp eq ptr %i.agn, %i.eq
  br i1 %i.ago, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.agp = load i64, ptr %i.eq, align 8, !tbaa !112
  %i.agq = add i64 %i.agp, 1
  call void @_ZdlPvm(ptr noundef %i.agn, i64 noundef %i.agq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %bb.eh
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abb, %bb.eh ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ] ; 2 uses
  %i.agr = load ptr, ptr %i.dw, align 8, !tbaa !113 ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %i.dy
  br i1 %i.ags, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.agt = load i64, ptr %i.dy, align 8, !tbaa !112
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.agu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358, %bb.eg
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aba, %bb.eg ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cx) #22
  br label %.body

.body:                                            ; preds = %bb.ef, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %i.aaz, %bb.ef ], [ %i.do, %bb.r ], [ %i.do, %bb.q ] ; 2 uses
  %i.agv = load ptr, ptr %i.ci, align 8, !tbaa !113 ; 2 uses
  %i.agw = icmp eq ptr %i.agv, %i.ck
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %.body
  %i.agx = load i64, ptr %i.ck, align 8, !tbaa !112
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %bb.ee
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aay, %bb.ee ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.agz = load ptr, ptr %i.bt, align 8, !tbaa !113 ; 2 uses
  %i.aha = icmp eq ptr %i.agz, %i.bv
  br i1 %i.aha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.ahb = load i64, ptr %i.bv, align 8, !tbaa !112
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %i.agz, i64 noundef %i.ahc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364, %bb.ed
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aax, %bb.ed ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ] ; 2 uses
  %i.ahd = load ptr, ptr %i.be, align 8, !tbaa !113 ; 2 uses
  %i.ahe = icmp eq ptr %i.ahd, %i.bg
  br i1 %i.ahe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.ahf = load i64, ptr %i.bg, align 8, !tbaa !112
  %i.ahg = add i64 %i.ahf, 1
  call void @_ZdlPvm(ptr noundef %i.ahd, i64 noundef %i.ahg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367, %bb.ec
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aaw, %bb.ec ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ] ; 2 uses
  %i.ahh = load ptr, ptr %i.ap, align 8, !tbaa !113 ; 2 uses
  %i.ahi = icmp eq ptr %i.ahh, %i.ar
  br i1 %i.ahi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369
  %i.ahj = load i64, ptr %i.ar, align 8, !tbaa !112
  %i.ahk = add i64 %i.ahj, 1
  call void @_ZdlPvm(ptr noundef %i.ahh, i64 noundef %i.ahk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %bb.eb
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aav, %bb.eb ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ]
  %i.ahl = load ptr, ptr %0, align 8, !tbaa !113  ; 2 uses
  %i.ahm = icmp eq ptr %i.ahl, %i.z
  br i1 %i.ahm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %i.ahn = load i64, ptr %i.z, align 8, !tbaa !112
  %i.aho = add i64 %i.ahn, 1
  call void @_ZdlPvm(ptr noundef %i.ahl, i64 noundef %i.aho) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN8LightGBM8Boosting14CreateBoostingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_i(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN8LightGBM17ObjectiveFunction23CreateObjectiveFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(1656)) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM6Common23ConstPtrInVectorWrapperINS_6MetricEEESt6vectorIPKT_SaIS6_EERKS3_ISt10unique_ptrIS4_St14default_deleteIS4_EESaISC_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.296") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !286    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286  ; 2 uses
  %.not17 = icmp eq ptr %i.a, %i.c
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.lcssa14 = phi ptr [ null, %bb.a ], [ %i.ad, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ]
  store ptr %.lcssa14, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ]
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.sroa.06.018 = phi ptr [ %i.a, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  %i.j = load ptr, ptr %.sroa.06.018, align 8, !tbaa !170 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !607
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #34
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.j, ptr %i.w, align 8, !tbaa !170
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %.noexc4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.y, ptr %i.d, align 8, !tbaa !607
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.e, align 8, !tbaa !291
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !286
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %.pre, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.ac = phi ptr [ %i.y, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.aa
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !606

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !111
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !113 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8, !tbaa !123
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !113
  %i.h = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.h, ptr %i.b, align 8, !tbaa !112
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !112
  store i8 %i.j, ptr %i.i, align 1, !tbaa !112
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !109
  %i.m = load ptr, ptr %.014, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !608

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.016, align 8, !tbaa !128 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !159

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.017, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !292
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !129
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !271 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !272

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load double, ptr %i.m, align 8, !tbaa !121
  store double %i.t, ptr %i.i, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !292
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !609

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %lpad.loopexit.split-lp31, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.z

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN8LightGBM6CommonL13StringToArrayIiEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc:bb.a
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i: ; preds = %bb.x
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !113
  %i.cf = load i64, ptr %i.bk, align 8, !tbaa !112, !noalias !663
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !112
  %.pre80.i = load i64, ptr %i.bu, align 8, !tbaa !109, !noalias !663
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i, %bb.y
  %i.cg = phi i64 [ %.pre80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i ], [ %i.cc, %bb.y ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !109
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.ci, ptr %i.s, align 8, !tbaa !183, !alias.scope !663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

bb.z:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i unwind label %bb.ab

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i: ; preds = %bb.z
  %.pre81.i = load ptr, ptr %3, align 8, !tbaa !113, !noalias !663 ; 2 uses
  %i.cj = icmp eq ptr %.pre81.i, %i.bk
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i
  %i.ck = load i64, ptr %i.bk, align 8, !tbaa !112, !noalias !663
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %.pre81.i, i64 noundef %i.cl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !663
  br label %._crit_edge.thread.i

bb.aa:                                            ; preds = %.noexc10.i.i40.i, %bb.t
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

bb.ab:                                            ; preds = %bb.z
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %3, align 8, !tbaa !113, !noalias !663 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bk
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.ab
  %i.cq = load i64, ptr %i.bk, align 8, !tbaa !112, !noalias !663
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.cm, %bb.aa ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ %i.cn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !663
  br label %bb.ac

._crit_edge.thread.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %._crit_edge.i, %.split.i
  %i.cs = load ptr, ptr %1, align 8, !tbaa !113, !noalias !663 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.d
  br i1 %i.ct, label %_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %._crit_edge.thread.i
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !112, !noalias !663
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #30
  br label %_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc.exit

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
  %.pn26.pn.i = phi { ptr, i32 } [ %.pn26.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ] ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !113, !noalias !663 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.d
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i: ; preds = %bb.ac
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !112, !noalias !663
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i
  %common.resume.op = phi { ptr, i32 } [ %.pn26.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i ], [ %lpad.phi, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i, %bb.n
  %.pn26.pn.pn.i = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %.pn26.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i ], [ %.pn26.pn.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !663
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  br label %common.resume

_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc.exit:      ; preds = %._crit_edge.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !183 ; 3 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !147   ; 3 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = ashr exact i64 %i.df, 5                 ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, 2305843009213693951
  br i1 %i.dh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not61 = icmp eq ptr %i.db, %i.dc
  br i1 %.not61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.ae
  %i.dj = ashr exact i64 %i.df, 3
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #34
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc9:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %0, align 8, !tbaa !126
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !293
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dg ; 2 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !127
  %.pre17 = load ptr, ptr %4, align 8, !tbaa !158
  %.pre18 = load ptr, ptr %i.da, align 8, !tbaa !158
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %.noexc9, %bb.ae
  %.promoted11 = phi ptr [ %i.dm, %.noexc9 ], [ null, %bb.ae ]
  %.promoted = phi ptr [ %i.dk, %.noexc9 ], [ null, %bb.ae ] ; 2 uses
  %i.dn = phi ptr [ %.pre18, %.noexc9 ], [ %i.db, %bb.ae ] ; 3 uses
  %i.do = phi ptr [ %.pre17, %.noexc9 ], [ %i.dc, %bb.ae ] ; 3 uses
  %.not9 = icmp eq ptr %i.do, %i.dn
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.ag

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre21 = load ptr, ptr %4, align 8, !tbaa !147
  %.pre22 = load ptr, ptr %i.da, align 8, !tbaa !183
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.dq = phi ptr [ %.pre22, %._crit_edge.loopexit ], [ %i.dn, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %i.dr = phi ptr [ %.pre21, %._crit_edge.loopexit ], [ %i.do, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.dr, %i.dq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dr, %._crit_edge ] ; 3 uses
  %i.ds = load ptr, ptr %.05.i.i.i, align 8, !tbaa !113 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !112
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.dx, %i.dq
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.dy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dr, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !184
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.ag:                                            ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ee = phi ptr [ %.promoted, %.lr.ph ], [ %i.fm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %i.ef = phi ptr [ %.promoted11, %.lr.ph ], [ %i.fn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %i.eg = phi ptr [ %.promoted, %.lr.ph ], [ %i.fo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.02.010 = phi ptr [ %i.do, %.lr.ph ], [ %i.fp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.eh = load ptr, ptr %.sroa.02.010, align 8, !tbaa !113
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %.017.i.i = phi ptr [ %i.eh, %bb.ag ], [ %i.ej, %bb.ai ] ; 5 uses
  %i.ei = load i8, ptr %.017.i.i, align 1, !tbaa !112
  switch i8 %i.ei, label %.loopexit.i.i [
    i8 32, label %bb.ai
    i8 45, label %bb.aj
    i8 43, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  br label %bb.ah, !llvm.loop !661

bb.aj:                                            ; preds = %bb.ah
  %i.ek = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  br label %.loopexit.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ah, %bb.ak, %bb.aj
  %.1.i.i = phi ptr [ %i.ek, %bb.aj ], [ %i.el, %bb.ak ], [ %.017.i.i, %bb.ah ] ; 2 uses
  %.016.i.i = phi i32 [ -1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.ah ]
  %i.em = load i8, ptr %.1.i.i, align 1, !tbaa !112 ; 2 uses
  %i.en = add i8 %i.em, -48
  %or.cond22.i.i = icmp ult i8 %i.en, 10
  br i1 %or.cond22.i.i, label %.lr.ph.i.i, label %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %i.eo = phi i8 [ %i.et, %.lr.ph.i.i ], [ %i.em, %.loopexit.i.i ]
  %.024.i.i = phi i32 [ %i.er, %.lr.ph.i.i ], [ 0, %.loopexit.i.i ]
  %.223.i.i = phi ptr [ %i.es, %.lr.ph.i.i ], [ %.1.i.i, %.loopexit.i.i ]
  %i.ep = mul nsw i32 %.024.i.i, 10
  %narrow.i.i = add nsw i8 %i.eo, -48
  %i.eq = zext nneg i8 %narrow.i.i to i32
  %i.er = add nsw i32 %i.ep, %i.eq                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.223.i.i, i64 1 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !112 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %or.cond.i.i = icmp ult i8 %i.eu, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !662

.critedge.loopexit.i.i:                           ; preds = %.lr.ph.i.i
  %i.ev = mul nsw i32 %i.er, %.016.i.i
  br label %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.critedge.loopexit.i.i, %.loopexit.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i.i ], [ %i.ev, %.critedge.loopexit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.eg, %i.ef
  br i1 %.not.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store i32 %.0.lcssa.i.i, ptr %i.eg, align 4, !tbaa !114
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  store ptr %i.ew, ptr %i.dp, align 8, !tbaa !293
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.am:                                            ; preds = %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ex = ptrtoint ptr %i.ef to i64
  %i.ey = ptrtoint ptr %i.ee to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 6 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775804
  br i1 %i.fa, label %bb.an, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.fb = ashr exact i64 %i.ez, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 2305843009213693951)
  %i.ff = select i1 %i.fd, i64 2305843009213693951, i64 %i.fe ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fg = shl nuw nsw i64 %i.ff, 2
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.ez ; 2 uses
  store i32 %.0.lcssa.i.i, ptr %i.fi, align 4, !tbaa !114
  %i.fj = icmp sgt i64 %i.ez, 0
  br i1 %i.fj, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ao:                                            ; preds = %.noexc12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fh, ptr align 4 %i.ee, i64 %i.ez, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ao, %.noexc12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ez) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fh, ptr %0, align 8, !tbaa !126
  store ptr %i.fk, ptr %i.dp, align 8, !tbaa !293
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ff ; 2 uses
  store ptr %i.fl, ptr %i.di, align 8, !tbaa !127
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.al
  %i.fm = phi ptr [ %i.fh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ee, %bb.al ]
  %i.fn = phi ptr [ %i.fl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ef, %bb.al ]
  %i.fo = phi ptr [ %i.fk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ew, %bb.al ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.02.010, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.fp, %i.dn
  br i1 %.not, label %._crit_edge.loopexit, label %bb.ag

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ad, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.an
  %i.fq = phi ptr [ null, %bb.ad ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.ef, %bb.an ]
  %i.fr = phi ptr [ null, %bb.ad ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.ee, %bb.an ]
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.fs = phi ptr [ %i.ef, %.loopexit.split-lp.loopexit ], [ %i.fq, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ft = phi ptr [ %i.ee, %.loopexit.split-lp.loopexit ], [ %i.fr, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp12, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fw) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp, %bb.aq
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM11Application7PredictEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::vector.13", align 8    ; 6 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !123
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.h, ptr %i.b, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !114
  %i.i = load i32, ptr %0, align 4, !tbaa !114    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !114
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !114
  %i.l = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %.not22 = icmp sgt i32 %i.l, %i.k
  br i1 %.not22, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph25, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvar = phi i64 [ 0, %.lr.ph25 ], [ %indvar.next, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %indvars.iv28 = phi i64 [ %i.p, %.lr.ph25 ], [ %indvars.iv.next29, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %indvars.iv28
  %.val = load ptr, ptr %i.r, align 8, !tbaa !113
  invoke fastcc void @_ZN8LightGBM6CommonL13StringToArrayIiEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !293
  %i.t = load ptr, ptr %6, align 8, !tbaa !126    ; 9 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = load i64, ptr %4, align 8, !tbaa !123
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 249)
          to label %._crit_edge31 unwind label %bb.i

._crit_edge31:                                    ; preds = %bb.e
  %.pre = load i64, ptr %4, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge31, %bb.d
  %i.aa = phi i64 [ %.pre, %._crit_edge31 ], [ %i.x, %bb.d ] ; 6 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ad = mul i64 %i.aa, %indvars.iv28
  %i.ae = load ptr, ptr %5, align 8, !tbaa !126   ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 6 uses
  %wide.trip.count = and i64 %i.aa, 2147483647    ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ag = ptrtoaddr ptr %i.ae to i64
  %i.ah = add i64 %indvar, %i.p
  %i.ai = shl i64 %i.ah, 2
  %i.aj = mul i64 %i.aa, %i.ai
  %i.ak = add i64 %i.aj, %i.ag
  %i.al = sub i64 %i.v, %i.ak
  %diff.check = icmp ugt i64 %i.al, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !114
  %wide.load37 = load <4 x i32>, ptr %i.an, align 4, !tbaa !114
  %i.ao = getelementptr [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load, ptr %i.ao, align 4, !tbaa !114
  store <4 x i32> %wide.load37, ptr %i.ap, align 4, !tbaa !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.prol
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !114
  %i.at = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !114
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !669

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.au = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %._crit_edge.thread, label %scalar.ph

._crit_edge:                                      ; preds = %bb.f
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv28 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !109
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !113
  store i8 0, ptr %i.az, align 1, !tbaa !112
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !127
  %i.bb = ptrtoint ptr %i.ba to i64
end_hunk_1
