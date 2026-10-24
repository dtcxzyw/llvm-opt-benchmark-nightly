Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12V3PreProcImp11defineSubstB5cxx11EP10VDefineRef:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649: ; preds = %bb.ge
  %i.aes = load i64, ptr %i.acb, align 8, !tbaa !45
  %i.aet = add i64 %i.aes, 1
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aet) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #44
  br label %bb.gf

bb.gf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, %bb.gd
  %.pn246.pn = phi { ptr, i32 } [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651 ], [ %i.aeo, %bb.gd ] ; 2 uses
  %i.aeu = load ptr, ptr %43, align 8, !tbaa !90  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.abm
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %bb.gf
  %i.aew = load i64, ptr %i.abm, align 8, !tbaa !45
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652, %bb.gc
  %.pn246.pn.pn = phi { ptr, i32 } [ %i.aen, %bb.gc ], [ %.pn246.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652 ], [ %.pn246.pn, %bb.gf ] ; 2 uses
  %i.aey = load ptr, ptr %44, align 8, !tbaa !90  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.aaz
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  %i.afa = load i64, ptr %i.aaz, align 8, !tbaa !45
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655, %bb.gb
  %.pn246.pn.pn.pn = phi { ptr, i32 } [ %i.aem, %bb.gb ], [ %.pn246.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655 ], [ %.pn246.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #44
  br label %.body597

bb.gg:                                            ; preds = %.noexc.i.i626
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663

bb.gh:                                            ; preds = %bb.fu
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i635, %bb.fx
  %i.afe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aff = load ptr, ptr %46, align 8, !tbaa !90  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.adc
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658: ; preds = %bb.gi
  %i.afh = load i64, ptr %i.adc, align 8, !tbaa !45
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658, %bb.gh
  %.pn251 = phi { ptr, i32 } [ %i.afd, %bb.gh ], [ %i.afe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658 ], [ %i.afe, %bb.gi ] ; 2 uses
  %i.afj = load ptr, ptr %47, align 8, !tbaa !90  ; 2 uses
  %i.afk = icmp eq ptr %i.afj, %i.acp
  br i1 %i.afk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
  %i.afl = load i64, ptr %i.acp, align 8, !tbaa !45
  %i.afm = add i64 %i.afl, 1
  call void @_ZdlPvm(ptr noundef %i.afj, i64 noundef %i.afm) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661, %bb.gg
  %.pn251.pn = phi { ptr, i32 } [ %i.afc, %bb.gg ], [ %.pn251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661 ], [ %.pn251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #44
  br label %.body597

.thread:                                          ; preds = %._crit_edge1127, %.critedge319
  %i.afn = load ptr, ptr %26, align 8, !tbaa !90  ; 2 uses
  %i.afo = icmp eq ptr %i.afn, %i.kl
  br i1 %i.afo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664: ; preds = %.thread
  %i.afp = load i64, ptr %i.kl, align 8, !tbaa !45
  %i.afq = add i64 %i.afp, 1
  call void @_ZdlPvm(ptr noundef %i.afn, i64 noundef %i.afq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #44
  %i.afr = load ptr, ptr %25, align 8, !tbaa !90  ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.ki
  br i1 %i.afs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666
  %i.aft = load i64, ptr %i.ki, align 8, !tbaa !45
  %i.afu = add i64 %i.aft, 1
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afu) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #44
  %i.afv = load ptr, ptr %24, align 8, !tbaa !90  ; 2 uses
  %i.afw = icmp eq ptr %i.afv, %i.kg
  br i1 %i.afw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
  %i.afx = load i64, ptr %i.kg, align 8, !tbaa !45
  %i.afy = add i64 %i.afx, 1
  call void @_ZdlPvm(ptr noundef %i.afv, i64 noundef %i.afy) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #44
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  store ptr %i.afz, ptr %0, align 8, !tbaa !140
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  store i64 0, ptr %i.aga, align 8, !tbaa !141
  store i8 0, ptr %i.afz, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #44
  %i.agb = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 8 uses
  store ptr %i.agb, ptr %48, align 8, !tbaa !140
  %i.agc = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 4 uses
  store i64 0, ptr %i.agc, align 8, !tbaa !141
  store i8 0, ptr %i.agb, align 8, !tbaa !45
  %i.agd = load ptr, ptr %15, align 8, !tbaa !90  ; 2 uses
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !45 ; 2 uses
  %.not2821130 = icmp eq i8 %i.age, 0
  br i1 %.not2821130, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672
  %i.agf = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 7 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  br label %.critedge

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit674.thread847: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.pre1152.a = load ptr, ptr %48, align 8, !tbaa !90 ; 2 uses
  %i.agi = icmp eq ptr %.pre1152.a, %i.agb
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit674.thread847
  %i.agj = load i64, ptr %i.agb, align 8, !tbaa !45
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %.pre1152.a, i64 noundef %i.agk) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit674.thread847, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #44
  %i.agl = invoke noundef i32 @_ZN9V3PreProc5debugEv()
          to label %bb.hr unwind label %bb.hz

.body597:                                         ; preds = %.loopexit.split-lp889.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fk, %bb.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575
  %.pn278.pn = phi { ptr, i32 } [ %.pn278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575 ], [ %i.ael, %bb.ga ], [ %.pn251.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663 ], [ %.pn246.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657 ], [ %i.aax, %bb.fk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp889.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.agm = load ptr, ptr %26, align 8, !tbaa !90  ; 2 uses
  %i.agn = icmp eq ptr %i.agm, %i.kl
  br i1 %i.agn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678: ; preds = %.body597
  %i.ago = load i64, ptr %i.kl, align 8, !tbaa !45
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.agp) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680: ; preds = %.body597, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678, %bb.bw
  %.pn278.pn.pn = phi { ptr, i32 } [ %i.mg, %bb.bw ], [ %.pn278.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678 ], [ %.pn278.pn, %.body597 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #44
  %i.agq = load ptr, ptr %25, align 8, !tbaa !90  ; 2 uses
  %i.agr = icmp eq ptr %i.agq, %i.ki
  br i1 %i.agr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
  %i.ags = load i64, ptr %i.ki, align 8, !tbaa !45
  %i.agt = add i64 %i.ags, 1
  call void @_ZdlPvm(ptr noundef %i.agq, i64 noundef %i.agt) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #44
  %i.agu = load ptr, ptr %24, align 8, !tbaa !90  ; 2 uses
  %i.agv = icmp eq ptr %i.agu, %i.kg
  br i1 %i.agv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
  %i.agw = load i64, ptr %i.kg, align 8, !tbaa !45
  %i.agx = add i64 %i.agw, 1
  call void @_ZdlPvm(ptr noundef %i.agu, i64 noundef %i.agx) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819

.critedge:                                        ; preds = %.critedge.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.agy = phi i64 [ 0, %.critedge.lr.ph ], [ %i.any, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 11 uses
  %i.agz = phi i8 [ %i.age, %.critedge.lr.ph ], [ %i.anx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 8 uses
  %.01231136 = phi ptr [ %i.agd, %.critedge.lr.ph ], [ %i.anw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 12 uses
  %.01241135 = phi i1 [ false, %.critedge.lr.ph ], [ %.1125850, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 2 uses
  %.01261133 = phi i1 [ false, %.critedge.lr.ph ], [ %.1127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 6 uses
  %.01281132 = phi i1 [ false, %.critedge.lr.ph ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 8 uses
  %or.cond6 = select i1 %.01281132, i1 true, i1 %.01261133
  br i1 %or.cond6, label %.thread853, label %bb.gj

.thread853:                                       ; preds = %.critedge
  %i.aha = sext i8 %i.agz to i32
  %i.ahb = call i32 @isspace(i32 noundef %i.aha) #46
  %.not294854 = icmp eq i32 %i.ahb, 0
  %spec.select322855 = select i1 %.not294854, i1 %.01241135, i1 false
  br label %thread-pre-split

bb.gj:                                            ; preds = %.critedge
  %i.ahc = icmp eq i8 %i.agz, 92
  br i1 %i.ahc, label %.thread848, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ahd = sext i8 %i.agz to i32                  ; 2 uses
  %i.ahe = call i32 @isspace(i32 noundef %i.ahd) #46
  %.not294 = icmp eq i32 %i.ahe, 0
  %spec.select322 = select i1 %.not294, i1 %.01241135, i1 false
  br label %.thread848

.thread848:                                       ; preds = %bb.gj, %bb.gk
  %.pre-phi = phi i32 [ %i.ahd, %bb.gk ], [ 92, %bb.gj ]
  %.1125851 = phi i1 [ %spec.select322, %bb.gk ], [ true, %bb.gj ] ; 9 uses
  %i.ahf = call i32 @isalpha(i32 noundef %.pre-phi) #46
  %.fr = freeze i32 %i.ahf
  %.not295.not = icmp eq i32 %.fr, 0
  br i1 %.not295.not, label %switch.early.test, label %bb.gm

switch.early.test:                                ; preds = %.thread848
  switch i8 %i.agz, label %bb.gl [
    i8 95, label %bb.gm
    i8 36, label %bb.gm
  ]

bb.gl:                                            ; preds = %switch.early.test
  %i.ahg = icmp eq i64 %i.agy, 0
  br i1 %i.ahg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit725, label %.thread859

.thread859:                                       ; preds = %bb.gl
  %57 = add i8 %i.agz, -48
  %isdigit861 = icmp ult i8 %57, 10
  br i1 %isdigit861, label %bb.gm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit696.thread

bb.gm:                                            ; preds = %.thread859, %switch.early.test, %switch.early.test, %.thread848
  %i.ahh = add i64 %i.agy, 1                      ; 3 uses
  %i.ahi = load ptr, ptr %48, align 8, !tbaa !90  ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.agb
  br i1 %i.ahj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i692, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i692: ; preds = %bb.gm
  %i.ahk = icmp ult i64 %i.agy, 16
  call void @llvm.assume(i1 %i.ahk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i690

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689: ; preds = %bb.gm
  %i.ahl = load i64, ptr %i.agb, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i690

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i690: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i692
  %i.ahm = phi i64 [ %i.ahl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i689 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i692 ]
  %i.ahn = icmp ugt i64 %i.ahh, %i.ahm
  br i1 %i.ahn, label %bb.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit694

bb.gn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i690
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef %i.agy, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc693 unwind label %.loopexit.split-lp884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc693:                                        ; preds = %bb.gn
  %.pre.i.i691 = load ptr, ptr %48, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit694

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit694: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i690, %.noexc693
  %i.aho = phi ptr [ %.pre.i.i691, %.noexc693 ], [ %i.ahi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i690 ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.agy
  store i8 %i.agz, ptr %i.ahp, align 1, !tbaa !45
  store i64 %i.ahh, ptr %i.agc, align 8, !tbaa !141
  %i.ahq = load ptr, ptr %48, align 8, !tbaa !90
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.ahh
  store i8 0, ptr %i.ahr, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit696.thread: ; preds = %.thread859
  %i.ahs = load ptr, ptr %i.kc, align 8, !tbaa !219 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit696.thread
  %i.aht = load ptr, ptr %48, align 8             ; 2 uses
  br label %bb.go

bb.go:                                            ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ahs, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.kb, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ] ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !141 ; 3 uses
  %i.ahw = icmp eq i64 %i.ahv, 0
  br i1 %i.ahw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.go
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.agy, i64 %i.ahv)
  %i.ahx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !90
  %i.ahz = call i32 @memcmp(ptr noundef %i.ahy, ptr noundef %i.aht, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #44 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ahz, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.go
  %i.aia = sub i64 %i.ahv, %i.agy
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aia, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ahz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aib = icmp slt i32 %.0.i.i.i.i.i.i, 0        ; 4 uses
  %.19.i.i.i = select i1 %i.aib, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.aib, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !284 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %bb.go, !llvm.loop !4

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i
  %i.aic = icmp eq ptr %.19.i.i.i, %i.kb
  br i1 %i.aic, label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE4findERS6_.exit.thread, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aib, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.aid = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !141 ; 3 uses
  %i.aie = icmp eq i64 %i.aid, 0
  br i1 %i.aie, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.gp
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aid, i64 %i.agy)
  %.19.i.i.i.sroa.sel843.v.sroa.sel.v.sroa.sel.v = select i1 %i.aib, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel843.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel843.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aif = load ptr, ptr %.19.i.i.i.sroa.sel843.v.sroa.sel.v.sroa.sel, align 8, !tbaa !90
  %i.aig = call i32 @memcmp(ptr noundef %i.aht, ptr noundef %i.aif, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aig, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE4findERS6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.gp
  %i.aih = sub i64 %i.agy, %i.aid
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aih, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE4findERS6_.exit

_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE4findERS6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aig, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aii = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.aii, label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE4findERS6_.exit.thread, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE4findERS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #44
  %i.aij = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  store ptr %i.agf, ptr %49, align 8, !tbaa !140
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !90 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.aim = load i64, ptr %i.ail, align 8, !tbaa !141 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %i.aim, ptr %i.a, align 8, !tbaa !35
  %i.ain = icmp ugt i64 %i.aim, 15
  br i1 %i.ain, label %.noexc.i698, label %._crit_edge.i.i697

.noexc.i698:                                      ; preds = %bb.gq
  %i.aio = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc699 unwind label %bb.gv ; 2 uses

.noexc699:                                        ; preds = %.noexc.i698
  store ptr %i.aio, ptr %49, align 8, !tbaa !90
  %i.aip = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.aip, ptr %i.agf, align 8, !tbaa !45
  br label %._crit_edge.i.i697

._crit_edge.i.i697:                               ; preds = %.noexc699, %bb.gq
  %i.aiq = phi ptr [ %i.aio, %.noexc699 ], [ %i.agf, %bb.gq ] ; 2 uses
  switch i64 %i.aim, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %bb.gt
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i697
  %i.air = load i8, ptr %i.aik, align 1, !tbaa !45
  store i8 %i.air, ptr %i.aiq, align 1, !tbaa !45
  br label %bb.gt

bb.gs:                                            ; preds = %._crit_edge.i.i697
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aiq, ptr align 1 %i.aik, i64 %i.aim, i1 false)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %._crit_edge.i.i697
  %i.ais = load i64, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  store i64 %i.ais, ptr %i.agg, align 8, !tbaa !141
  %i.ait = load ptr, ptr %49, align 8, !tbaa !90
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.ais
  store i8 0, ptr %i.aiu, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.aiv = load i64, ptr %i.agg, align 8, !tbaa !141 ; 3 uses
  %i.aiw = icmp eq i64 %i.aiv, 0
  %i.aix = load i64, ptr %i.aga, align 8, !tbaa !141 ; 4 uses
  br i1 %i.aiw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit701.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit701.thread867

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit701.thread: ; preds = %bb.gt
  %i.aiy = icmp ugt i64 %i.aix, 1
  br i1 %i.aiy, label %.critedge325, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.critedge325:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit701.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  store ptr %i.agh, ptr %50, align 8, !tbaa !140, !alias.scope !1246
  %i.aiz = load ptr, ptr %0, align 8, !tbaa !90, !noalias !1246
  %i.aja = getelementptr i8, ptr %i.aiz, i64 %i.aix
  %i.ajb = getelementptr i8, ptr %i.aja, i64 -2
  %i.ajc = load i16, ptr %i.ajb, align 1          ; 2 uses
  store i16 %i.ajc, ptr %i.agh, align 8
  %.not1399 = icmp eq i16 %i.ajc, 24672
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #44
  br i1 %.not1399, label %bb.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.gu:                                            ; preds = %.critedge325
  %i.ajd = add i64 %i.aix, -2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ajd, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i726, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i733, %bb.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i743, %bb.hj, %bb.hl, %bb.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i765, %bb.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i720, %.invoke1415
  %lpad.loopexit.split-lp1439 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp884

bb.gv:                                            ; preds = %.noexc.i698
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i711, %bb.gu, %bb.gw
  %lpad.loopexit.split-lp1437 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajf = load ptr, ptr %49, align 8, !tbaa !90  ; 2 uses
end_hunk_0
