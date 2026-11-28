Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/source?download=true
inline.NumInlined: 924
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.rl, ptr %2, align 8, !tbaa !50
  %i.rm = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.rd
  br i1 %i.rn, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.ro = load i64, ptr %i.rg, align 8, !tbaa !49 ; 3 uses
  %i.rp = icmp ult i64 %i.ro, 16
  call void @llvm.assume(i1 %i.rp)
  %i.rq = add nuw nsw i64 %i.ro, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rl, ptr noundef nonnull align 8 dereferenceable(1) %i.rd, i64 %i.rq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69.i.i.i.i.i: ; preds = %bb.bi
  store ptr %i.rm, ptr %2, align 8, !tbaa !51
  %i.rr = load i64, ptr %i.rd, align 8, !tbaa !52
  store i64 %i.rr, ptr %i.rl, align 8, !tbaa !52
  %.pre.i70.i.i.i.i.i = load i64, ptr %i.rg, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69.i.i.i.i.i, %bb.bj
  %i.rs = phi i64 [ %.pre.i70.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69.i.i.i.i.i ], [ %i.ro, %bb.bj ]
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.rs, ptr %i.rt, align 8, !tbaa !49
  store ptr %i.rd, ptr %3, align 8, !tbaa !51
  store i64 0, ptr %i.rg, align 8, !tbaa !49
  store i8 0, ptr %i.rd, align 8, !tbaa !52
  %i.ru = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i89.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i72.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i89.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71.i.i.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !49 ; 3 uses
  %i.sa = add nuw nsw i64 %i.rz, 1
  store ptr %i.rv, ptr %4, align 8, !tbaa !51
  store i64 0, ptr %i.ry, align 8, !tbaa !49
  %i.sb = icmp ult i64 %i.rz, 16
  call void @llvm.assume(i1 %i.sb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rx, ptr noundef nonnull align 8 dereferenceable(1) %i.rv, i64 %i.sa, i1 false)
  br label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i72.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71.i.i.i.i.i
  %i.sc = load i64, ptr %i.rv, align 8, !tbaa !52
  %.phi.trans.insert.i.i.i73.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.pre.i.i.i74.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i73.i.i.i.i.i, align 8, !tbaa !49
  store ptr %i.rv, ptr %4, align 8, !tbaa !51
  store i64 0, ptr %.phi.trans.insert.i.i.i73.i.i.i.i.i, align 8, !tbaa !49
  store i64 %i.sc, ptr %i.rx, align 8, !tbaa !52, !alias.scope !220
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i72.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i89.i.i.i.i.i
  %.sink.i.i75.i.i.i.i.i = phi ptr [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i89.i.i.i.i.i ], [ %i.ru, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i72.i.i.i.i.i ]
  %i.sd = phi i64 [ %i.rz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i89.i.i.i.i.i ], [ %.pre.i.i.i74.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i72.i.i.i.i.i ]
  store i8 0, ptr %i.rv, align 8, !tbaa !52
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.sink.i.i75.i.i.i.i.i, ptr %i.se, align 8, !tbaa !50
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.sd, ptr %i.sf, align 8, !tbaa !49, !alias.scope !220
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 0, ptr %i.sg, align 8, !tbaa !57, !alias.scope !220
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.si, ptr %i.sh, align 8, !tbaa !50
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.sj, align 8, !tbaa !49
  store i8 0, ptr %i.si, align 8, !tbaa !52
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 0, ptr %i.sk, align 8, !tbaa !66
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i8 0, ptr %i.sl, align 8, !tbaa !68
  %i.sm = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 8 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.sn, ptr %5, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.sn, ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  %i.so = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 9, ptr %i.so, align 8, !tbaa !49
  %i.sp = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.sp, align 1, !tbaa !52
  %i.sq = invoke noundef ptr @upb_FileDef_Name(ptr noundef %.val.val.i.i.i)
          to label %_ZNK3upb10FileDefPtr4nameEv.exit40.i.i.i.i.i.i unwind label %bb.bx ; 4 uses

_ZNK3upb10FileDefPtr4nameEv.exit40.i.i.i.i.i.i:   ; preds = %bb.bk
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 5 uses
  store ptr %i.sr, ptr %i.sm, align 8, !tbaa !50
  %i.ss = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.sn
  br i1 %i.st, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i79.i.i.i.i.i

bb.bl:                                            ; preds = %_ZNK3upb10FileDefPtr4nameEv.exit40.i.i.i.i.i.i
  %i.su = load i64, ptr %i.so, align 8, !tbaa !49 ; 3 uses
  %i.sv = icmp ult i64 %i.su, 16
  call void @llvm.assume(i1 %i.sv)
  %i.sw = add nuw nsw i64 %i.su, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sr, ptr noundef nonnull align 8 dereferenceable(1) %i.sn, i64 %i.sw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i79.i.i.i.i.i: ; preds = %_ZNK3upb10FileDefPtr4nameEv.exit40.i.i.i.i.i.i
  store ptr %i.ss, ptr %i.sm, align 8, !tbaa !51
  %i.sx = load i64, ptr %i.sn, align 8, !tbaa !52
  store i64 %i.sx, ptr %i.sr, align 8, !tbaa !52
  %.pre108.i.i.i.i.i.i = load i64, ptr %i.so, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i79.i.i.i.i.i, %bb.bl
  %i.sy = phi i64 [ %.pre108.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i79.i.i.i.i.i ], [ %i.su, %bb.bl ]
  %i.sz = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 %i.sy, ptr %i.sz, align 8, !tbaa !49
  store ptr %i.sn, ptr %5, align 8, !tbaa !51
  store i64 0, ptr %i.so, align 8, !tbaa !49
  store i8 0, ptr %i.sn, align 8, !tbaa !52
  %i.ta = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.tb, ptr %1, align 8, !tbaa !50
  %i.tc = icmp eq ptr %i.sq, null
  br i1 %i.tc, label %.noexc.i88.i.i.i.i.i.i, label %bb.bm

.noexc.i88.i.i.i.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #17
          to label %.noexc89.i.i.i.i.i.i unwind label %bb.br

.noexc89.i.i.i.i.i.i:                             ; preds = %.noexc.i88.i.i.i.i.i.i
  unreachable

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i
  %i.td = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sq) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.td, ptr %i.a, align 8, !tbaa !89
  %i.te = icmp ugt i64 %i.td, 15
  br i1 %i.te, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.bm
  %i.tf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc90.i.i.i.i.i.i unwind label %bb.br ; 2 uses

.noexc90.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.tf, ptr %1, align 8, !tbaa !51
  %i.tg = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.tg, ptr %i.tb, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc90.i.i.i.i.i.i, %bb.bm
  %i.th = phi ptr [ %i.tf, %.noexc90.i.i.i.i.i.i ], [ %i.tb, %bb.bm ] ; 2 uses
  switch i64 %i.td, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %bb.bp
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ti = load i8, ptr %i.sq, align 1, !tbaa !52
  store i8 %i.ti, ptr %i.th, align 1, !tbaa !52
  br label %bb.bp

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.th, ptr nonnull align 1 %i.sq, i64 %i.td, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.tj = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.tj, ptr %i.tk, align 8, !tbaa !49
  %i.tl = load ptr, ptr %1, align 8, !tbaa !51
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tj
  store i8 0, ptr %i.tm, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 3 uses
  store ptr %i.tn, ptr %i.ta, align 8, !tbaa !50, !alias.scope !221
  %i.to = load ptr, ptr %1, align 8, !tbaa !51, !noalias !221 ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.tb
  br i1 %i.tp, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.tq = load i64, ptr %i.tk, align 8, !tbaa !49, !noalias !221 ; 3 uses
  %i.tr = icmp ult i64 %i.tq, 16
  call void @llvm.assume(i1 %i.tr)
  %i.ts = add nuw nsw i64 %i.tq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tn, ptr noundef nonnull align 8 dereferenceable(1) %i.tb, i64 %i.ts, i1 false)
  br label %.noexc.i44.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80.i.i.i.i.i: ; preds = %bb.bp
  store ptr %i.to, ptr %i.ta, align 8, !tbaa !51, !alias.scope !221
  %i.tt = load i64, ptr %i.tb, align 8, !tbaa !52, !noalias !221
  store i64 %i.tt, ptr %i.tn, align 8, !tbaa !52, !alias.scope !221
  %.pre.i.i87.i.i.i.i.i.i = load i64, ptr %i.tk, align 8, !tbaa !49, !noalias !221
  br label %.noexc.i44.i.i.i.i.i.i

bb.br:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i, %.noexc.i88.i.i.i.i.i.i
  %i.tu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tv = load ptr, ptr %i.sm, align 8, !tbaa !51 ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %i.sr
  br i1 %i.tw, label %.body.i76.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i: ; preds = %bb.br
  %i.tx = load i64, ptr %i.sr, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a

.noexc.i44.i.i.i.i.i.i:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80.i.i.i.i.i, %bb.bq
  %i.ty = phi i64 [ %i.tq, %bb.bq ], [ %.pre.i.i87.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i80.i.i.i.i.i ]
  %i.tz = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i64 %i.ty, ptr %i.tz, align 8, !tbaa !49, !alias.scope !221
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i8 0, ptr %i.ua, align 8, !tbaa !57, !alias.scope !221
  %i.ub = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  store ptr %i.uc, ptr %i.ub, align 8, !tbaa !50
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 264
  store i64 0, ptr %i.ud, align 8, !tbaa !49
  store i8 0, ptr %i.uc, align 8, !tbaa !52
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i8 0, ptr %i.ue, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.uf = getelementptr inbounds nuw i8, ptr %2, i64 360
  store i8 0, ptr %i.uf, align 8, !tbaa !68
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 7 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  store ptr %i.uh, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 24, ptr %i.b, align 8, !tbaa !89
  %i.ui = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.bs unwind label %bb.by     ; 2 uses

bb.bs:                                            ; preds = %.noexc.i44.i.i.i.i.i.i
  store ptr %i.ui, ptr %6, align 8, !tbaa !51
  %i.uj = load i64, ptr %i.b, align 8, !tbaa !89  ; 3 uses
  store i64 %i.uj, ptr %i.uh, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ui, ptr noundef nonnull align 1 dereferenceable(24) @.str.34, i64 24, i1 false)
  %i.uk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.uj, ptr %i.uk, align 8, !tbaa !49
  %i.ul = load ptr, ptr %6, align 8, !tbaa !51
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.uj
  store i8 0, ptr %i.um, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.un = invoke noundef ptr @upb_FileDef_Name(ptr noundef %.val.val.i.i.i)
          to label %_ZNK3upb10FileDefPtr4nameEv.exit48.i.i.i.i.i.i unwind label %bb.bz ; 2 uses

_ZNK3upb10FileDefPtr4nameEv.exit48.i.i.i.i.i.i:   ; preds = %bb.bs
  %i.uo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.un) #16
  invoke void @_ZN3upb9generator20MiniTableFileVarNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %i.uo, ptr nonnull %i.un)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %_ZNK3upb10FileDefPtr4nameEv.exit48.i.i.i.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 3 uses
  store ptr %i.up, ptr %i.ug, align 8, !tbaa !50
  %i.uq = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.uh
  br i1 %i.ur, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.us = load i64, ptr %i.uk, align 8, !tbaa !49 ; 3 uses
  %i.ut = icmp ult i64 %i.us, 16
  call void @llvm.assume(i1 %i.ut)
  %i.uu = add nuw nsw i64 %i.us, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.up, ptr noundef nonnull align 8 dereferenceable(1) %i.uh, i64 %i.uu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i: ; preds = %bb.bt
  store ptr %i.uq, ptr %i.ug, align 8, !tbaa !51
  %i.uv = load i64, ptr %i.uh, align 8, !tbaa !52
  store i64 %i.uv, ptr %i.up, align 8, !tbaa !52
  %.pre109.i.i.i.i.i.i = load i64, ptr %i.uk, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i, %bb.bu
  %i.uw = phi i64 [ %.pre109.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i ], [ %i.us, %bb.bu ]
  %i.ux = getelementptr inbounds nuw i8, ptr %2, i64 376
  store i64 %i.uw, ptr %i.ux, align 8, !tbaa !49
  store ptr %i.uh, ptr %6, align 8, !tbaa !51
  store i64 0, ptr %i.uk, align 8, !tbaa !49
  store i8 0, ptr %i.uh, align 8, !tbaa !52
  %i.uy = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.va = icmp eq ptr %i.uy, %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 3 uses
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !49 ; 3 uses
  %i.ve = add nuw nsw i64 %i.vd, 1
  store ptr %i.uz, ptr %7, align 8, !tbaa !51
  store i64 0, ptr %i.vc, align 8, !tbaa !49
  %i.vf = icmp ult i64 %i.vd, 16
  call void @llvm.assume(i1 %i.vf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vb, ptr noundef nonnull align 8 dereferenceable(1) %i.uz, i64 %i.ve, i1 false)
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i
  %i.vg = load i64, ptr %i.uz, align 8, !tbaa !52
  %.phi.trans.insert.i.i53.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.pre.i.i54.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i53.i.i.i.i.i.i, align 8, !tbaa !49
  store ptr %i.uz, ptr %7, align 8, !tbaa !51
  store i64 0, ptr %.phi.trans.insert.i.i53.i.i.i.i.i.i, align 8, !tbaa !49
  store i64 %i.vg, ptr %i.vb, align 8, !tbaa !52, !alias.scope !222
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i
  %.sink.i55.i.i.i.i.i.i = phi ptr [ %i.vb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i ], [ %i.uy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i ]
  %i.vh = phi i64 [ %i.vd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i ], [ %.pre.i.i54.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i ]
  store i8 0, ptr %i.uz, align 8, !tbaa !52
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 400
  store ptr %.sink.i55.i.i.i.i.i.i, ptr %i.vi, align 8, !tbaa !50
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i64 %i.vh, ptr %i.vj, align 8, !tbaa !49, !alias.scope !222
  %i.vk = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i8 0, ptr %i.vk, align 8, !tbaa !57, !alias.scope !222
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.vm = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 2 uses
  store ptr %i.vm, ptr %i.vl, align 8, !tbaa !50
  %i.vn = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i64 0, ptr %i.vn, align 8, !tbaa !49
  store i8 0, ptr %i.vm, align 8, !tbaa !52
  %i.vo = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i8 0, ptr %i.vo, align 8, !tbaa !66
  %i.vp = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i8 0, ptr %i.vp, align 8, !tbaa !68
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.jb, ptr nonnull %2, i64 3, i64 219, ptr nonnull @.str.35)
          to label %_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i83.i.i.i.i.i unwind label %bb.ca

_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i83.i.i.i.i.i: ; preds = %bb.bv
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ug) #16
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.sm) #16
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #16
  %i.vq = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.vr = icmp eq ptr %i.vq, %i.uz
  br i1 %i.vr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i.i.i: ; preds = %_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i83.i.i.i.i.i
  %i.vs = load i64, ptr %i.uz, align 8, !tbaa !52
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84.i.i.i.i.i: ; preds = %_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i83.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.vu = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.vv = icmp eq ptr %i.vu, %i.uh
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84.i.i.i.i.i
  %i.vw = load i64, ptr %i.uh, align 8, !tbaa !52
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i.i.i
  %i.vy = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.sn
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i85.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i85.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i
  %i.wa = load i64, ptr %i.sn, align 8, !tbaa !52
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i85.i.i.i.i.i
  %i.wc = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.rv
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i
  %i.we = load i64, ptr %i.rv, align 8, !tbaa !52
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.wg = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.rd
  br i1 %i.wh, label %"_ZZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS_10FileDefPtrERNS1_7ContextEENK3$_1clEv.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i
  %i.wi = load i64, ptr %i.rd, align 8, !tbaa !52
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #18
  br label %"_ZZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS_10FileDefPtrERNS1_7ContextEENK3$_1clEv.exit.i.i.i"

bb.bw:                                            ; preds = %_ZNK3upb10FileDefPtr4nameEv.exit.i68.i.i.i.i.i, %_ZN3upb9generator10reflection12_GLOBAL__N_117WriteDependenciesENS_10FileDefPtrERNS1_7ContextE.exit.i.i.i.i.i
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bk
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i76.i.i.i.i.i

bb.by:                                            ; preds = %.noexc.i44.i.i.i.i.i.i
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i76.i.i.i.i.i

bb.bz:                                            ; preds = %_ZNK3upb10FileDefPtr4nameEv.exit48.i.i.i.i.i.i, %bb.bs
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bv
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ug) #16
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.sm) #16
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #16
  %i.wp = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.uz
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i: ; preds = %bb.ca
  %i.wr = load i64, ptr %i.uz, align 8, !tbaa !52
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i, %bb.bz
  %.pn.pn.i81.i.i.i.i.i = phi { ptr, i32 } [ %i.wn, %bb.bz ], [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i ], [ %i.wo, %bb.ca ] ; 2 uses
  %.1.i82.i.i.i.i.i = phi i1 [ false, %bb.bz ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i ], [ true, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.wt = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.uh
  br i1 %i.wu, label %.body.i76.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i
  %28 = load i64, ptr %i.uh, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i
  %.sink149 = phi i64 [ %28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i ], [ %i.tx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i ]
  %.sink147 = phi ptr [ %i.wt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i ], [ %i.tv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i ]
  %.021.i.i.i.i.i.i.ph = phi ptr [ %i.ug, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i ], [ %i.sm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i ]
  %.pn.pn.pn.pn.i77.i.i.i.i.i.ph = phi { ptr, i32 } [ %.pn.pn.i81.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i ], [ %i.tu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i ]
  %.3.i78.i.i.i.i.i.ph = phi i1 [ %.1.i82.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i.i.i.i ]
  %i.wv = add i64 %.sink149, 1
  call void @_ZdlPvm(ptr noundef %.sink147, i64 noundef %i.wv) #18
  br label %.body.i76.i.i.i.i.i

.body.i76.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i, %bb.br, %bb.by, %bb.bx
  %.021.i.i.i.i.i.i = phi ptr [ %i.sm, %bb.bx ], [ %i.ug, %bb.by ], [ %i.sm, %bb.br ], [ %i.ug, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a ] ; 2 uses
  %.pn.pn.pn.pn.i77.i.i.i.i.i = phi { ptr, i32 } [ %i.wl, %bb.bx ], [ %i.wm, %bb.by ], [ %i.tu, %bb.br ], [ %.pn.pn.i81.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i ], [ %.pn.pn.pn.pn.i77.i.i.i.i.i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a ] ; 2 uses
  %.3.i78.i.i.i.i.i = phi i1 [ false, %bb.bx ], [ false, %bb.by ], [ false, %bb.br ], [ %.1.i82.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i ], [ %.3.i78.i.i.i.i.i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a ] ; 2 uses
  %i.ww = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.sn
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i: ; preds = %.body.i76.i.i.i.i.i
  %i.wy = load i64, ptr %i.sn, align 8, !tbaa !52
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.wz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i: ; preds = %.body.i76.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i
  %i.xa = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.rv
  br i1 %i.xb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i
  %i.xc = load i64, ptr %i.rv, align 8, !tbaa !52
  %i.xd = add i64 %i.xc, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i, %bb.bw
  %.324.i.i.i.i.i.i = phi ptr [ %2, %bb.bw ], [ %.021.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wk, %bb.bw ], [ %.pn.pn.pn.pn.i77.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i ], [ %.pn.pn.pn.pn.i77.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i ]
  %.6.i.i.i.i.i.i = phi i1 [ false, %bb.bw ], [ %.3.i78.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i ], [ %.3.i78.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.xe = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.rd
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i
  %i.xg = load i64, ptr %i.rd, align 8, !tbaa !52
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xe, i64 noundef %i.xh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i.i.i
  %i.xi = icmp eq ptr %2, %.324.i.i.i.i.i.i
  %or.cond.i65.i.i.i.i.i = select i1 %.6.i.i.i.i.i.i, i1 true, i1 %i.xi
  br i1 %or.cond.i65.i.i.i.i.i, label %.loopexit.i67.i.i.i.i.i, label %.preheader.i66.i.i.i.i.i

.preheader.i66.i.i.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i, %.preheader.i66.i.i.i.i.i
  %i.xj = phi ptr [ %i.xk, %.preheader.i66.i.i.i.i.i ], [ %.324.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i ]
  %i.xk = getelementptr inbounds i8, ptr %i.xj, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.xk) #16
  %i.xl = icmp eq ptr %i.xk, %2
  br i1 %i.xl, label %.loopexit.i67.i.i.i.i.i, label %.preheader.i66.i.i.i.i.i

.loopexit.i67.i.i.i.i.i:                          ; preds = %.preheader.i66.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %common.resume.i.i.i.i.i

"_ZZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS_10FileDefPtrERNS1_7ContextEENK3$_1clEv.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i8 0, ptr %i.i, align 8, !tbaa !178
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS7_10FileDefPtrERNS9_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISQ_T0_DpT1_EESQ_E4typeEOSW_DpOSX_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS7_10FileDefPtrERNS9_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISQ_T0_DpT1_EESQ_E4typeEOSW_DpOSX_.exit": ; preds = %bb.a, %"_ZZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS_10FileDefPtrERNS1_7ContextEENK3$_1clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.k, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 !guid !223 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS6_10FileDefPtrERNS8_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !91
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !86
  store ptr %.val, ptr %0, align 8, !tbaa !86
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !92
  store ptr %i.a, ptr %0, align 8, !tbaa !86
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !86 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #18
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefSourceENS8_10FileDefPtrERNSA_7ContextEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN3upb9generator20ReflectionFileSymbolB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #2

declare i32 @upb_FileDef_DependencyCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_FileDef_Dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @upb_FileDef_ToProto(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @upb_Arena_Free(ptr noundef) local_unnamed_addr #2

declare ptr @upb_Arena_Init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_115WriteDescriptorENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 !guid !234 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca [1 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 19 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !86    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !237, !range !79, !noundef !80
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_115WriteDescriptorENS7_10FileDefPtrERNS9_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISQ_T0_DpT1_EESQ_E4typeEOSW_DpOSX_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !237
  %.val.i.i.i = load ptr, ptr %.val, align 8, !tbaa !238 ; 2 uses
  %.val.val.i.i.i = load i64, ptr %.val.i.i.i, align 8, !tbaa !89 ; 3 uses
  %i.f = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.val3.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp eq i64 %.val.val.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %"_ZZN3upb9generator10reflection12_GLOBAL__N_115WriteDescriptorENS_10FileDefPtrERNS1_7ContextEENK3$_0clEv.exit.i.i.i", label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.lr.ph.i.i.i.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.lr.ph.i.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !239
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i: ; preds = %_ZN3upb9generator10reflection12_GLOBAL__N_120WriteStringArrayLineESt17basic_string_viewIcSt11char_traitsIcEERNS1_7ContextE.exit.i.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.lr.ph.i.i.i.i.i
  %.045.i.i.i.i.i = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.lr.ph.i.i.i.i.i ], [ %i.ct, %_ZN3upb9generator10reflection12_GLOBAL__N_120WriteStringArrayLineESt17basic_string_viewIcSt11char_traitsIcEERNS1_7ContextE.exit.i.i.i.i.i ] ; 3 uses
  %i.ac = sub nuw i64 %.val.val.i.i.i, %.045.i.i.i.i.i ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ac, i64 12)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.val3.i.i.i, i64 %.045.i.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.speculated.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  store ptr %i.h, ptr %4, align 8, !tbaa !50, !alias.scope !243
  store i64 0, ptr %i.i, align 8, !tbaa !49, !alias.scope !243
  store i8 0, ptr %i.h, align 8, !tbaa !52, !alias.scope !243
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !52, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !243
  store i8 %i.ag, ptr %i.b, align 1, !tbaa !52, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !243
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 1, ptr nonnull %i.b)
          to label %.noexc9.peel.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.peel.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !243
  store ptr %3, ptr %2, align 8, !tbaa !52, !noalias !243
end_hunk_0
