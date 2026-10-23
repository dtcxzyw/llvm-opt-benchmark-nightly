Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_swift?download=true
inline.NumInlined: 5770
inline.NumDeleted: 554
begin_hunk_0_@_ZN11flatbuffers5swift14SwiftGenerator29BuildObjectAPIConstructorBodyERKNS_8FieldDefEbRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESE_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742: ; preds = %bb.fx
  %i.anm = load i64, ptr %i.ank, align 8, !tbaa !21
  %i.ann = add i64 %i.anm, 1
  call void @_ZdlPvm(ptr noundef %i.anj, i64 noundef %i.ann) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742, %bb.fw
  %.pn174 = phi { ptr, i32 } [ %i.anh, %bb.fw ], [ %i.ani, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742 ], [ %i.ani, %bb.fx ] ; 2 uses
  %i.ano = load ptr, ptr %55, align 8, !tbaa !26  ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.anq = icmp eq ptr %i.ano, %i.anp
  br i1 %i.anq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744
  %i.anr = load i64, ptr %i.anp, align 8, !tbaa !21
  %i.ans = add i64 %i.anr, 1
  call void @_ZdlPvm(ptr noundef %i.ano, i64 noundef %i.ans) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745, %bb.fv
  %.pn174.pn = phi { ptr, i32 } [ %i.ang, %bb.fv ], [ %.pn174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745 ], [ %.pn174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  %i.ant = load ptr, ptr %54, align 8, !tbaa !26  ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.anv = icmp eq ptr %i.ant, %i.anu
  br i1 %i.anv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747
  %i.anw = load i64, ptr %i.anu, align 8, !tbaa !21
  %i.anx = add i64 %i.anw, 1
  call void @_ZdlPvm(ptr noundef %i.ant, i64 noundef %i.anx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748, %bb.fu
  %.pn174.pn.pn = phi { ptr, i32 } [ %i.anf, %bb.fu ], [ %.pn174.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748 ], [ %.pn174.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  br label %.body724

.thread792:                                       ; preds = %bb.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703
  %i.any = load ptr, ptr %43, align 8, !tbaa !26  ; 2 uses
  %i.anz = icmp eq ptr %i.any, %i.afj
  br i1 %i.anz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751: ; preds = %.thread792
  %i.aoa = load i64, ptr %i.afj, align 8, !tbaa !21
  %i.aob = add i64 %i.aoa, 1
  call void @_ZdlPvm(ptr noundef %i.any, i64 noundef %i.aob) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753: ; preds = %.thread792, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %bb.fy

.body724:                                         ; preds = %bb.ft, %bb.fm, %bb.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650, %bb.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661
  %.pn180.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn180.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %.pn174.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750 ], [ %i.ahb, %bb.eq ], [ %i.ahb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650 ], [ %.pn170.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %i.aha, %bb.ep ], [ %i.ana, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739 ], [ %i.ama, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i716 ], [ %i.ama, %bb.fm ], [ %i.ana, %bb.ft ]
  %i.aoc = load ptr, ptr %43, align 8, !tbaa !26  ; 2 uses
  %i.aod = icmp eq ptr %i.aoc, %i.afj
  br i1 %i.aod, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754: ; preds = %.body724
  %i.aoe = load i64, ptr %i.afj, align 8, !tbaa !21
  %i.aof = add i64 %i.aoe, 1
  call void @_ZdlPvm(ptr noundef %i.aoc, i64 noundef %i.aof) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756: ; preds = %.body724, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %.body459

bb.fy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, %bb.c
  %i.aog = load ptr, ptr %10, align 8, !tbaa !26  ; 2 uses
  %i.aoh = icmp eq ptr %i.aog, %i.ae
  br i1 %i.aoh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757: ; preds = %bb.fy
  %i.aoi = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.aoj = add i64 %i.aoi, 1
  call void @_ZdlPvm(ptr noundef %i.aog, i64 noundef %i.aoj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.aok = load ptr, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aom = icmp eq ptr %i.aok, %i.aol
  br i1 %i.aom, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759
  %i.aon = load i64, ptr %i.aol, align 8, !tbaa !21
  %i.aoo = add i64 %i.aon, 1
  call void @_ZdlPvm(ptr noundef %i.aok, i64 noundef %i.aoo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.aop = load ptr, ptr %6, align 8, !tbaa !26   ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aor = icmp eq ptr %i.aop, %i.aoq
  br i1 %i.aor, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762
  %i.aos = load i64, ptr %i.aoq, align 8, !tbaa !21
  %i.aot = add i64 %i.aos, 1
  call void @_ZdlPvm(ptr noundef %i.aop, i64 noundef %i.aot) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aou = load ptr, ptr %5, align 8, !tbaa !26   ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aow = icmp eq ptr %i.aou, %i.aov
  br i1 %i.aow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765
  %i.aox = load i64, ptr %i.aov, align 8, !tbaa !21
  %i.aoy = add i64 %i.aox, 1
  call void @_ZdlPvm(ptr noundef %i.aou, i64 noundef %i.aoy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

.body459:                                         ; preds = %bb.da, %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, %.body605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, %.body473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  %.pn180.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn180.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ], [ %.pn167.pn, %.body605 ], [ %.pn159.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440 ], [ %i.te, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ], [ %.pn138.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562 ], [ %.pn133.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586 ], [ %.pn130.pn, %.body473 ], [ %i.tu, %bb.cf ], [ %i.acw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596 ], [ %i.zn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542 ], [ %i.tu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i451 ], [ %i.zn, %bb.da ]
  %i.aoz = load ptr, ptr %10, align 8, !tbaa !26  ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, %i.ae
  br i1 %i.apa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %.body459
  %i.apb = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.apc = add i64 %i.apb, 1
  call void @_ZdlPvm(ptr noundef %i.aoz, i64 noundef %i.apc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771: ; preds = %.body459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %.pn180.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn180.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ] ; 2 uses
  %i.apd = load ptr, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.apf = icmp eq ptr %i.apd, %i.ape
  br i1 %i.apf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772: ; preds = %bb.fz
  %i.apg = load i64, ptr %i.ape, align 8, !tbaa !21
  %i.aph = add i64 %i.apg, 1
  call void @_ZdlPvm(ptr noundef %i.apd, i64 noundef %i.aph) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772, %bb.e
  %.pn180.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn180.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772 ], [ %.pn180.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.api = load ptr, ptr %6, align 8, !tbaa !26   ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.apk = icmp eq ptr %i.api, %i.apj
  br i1 %i.apk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774
  %i.apl = load i64, ptr %i.apj, align 8, !tbaa !21
  %i.apm = add i64 %i.apl, 1
  call void @_ZdlPvm(ptr noundef %i.api, i64 noundef %i.apm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775, %bb.d
  %.pn180.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %.pn180.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775 ], [ %.pn180.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.apn = load ptr, ptr %5, align 8, !tbaa !26   ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.app = icmp eq ptr %i.apn, %i.apo
  br i1 %i.app, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777
  %i.apq = load i64, ptr %i.apo, align 8, !tbaa !21
  %i.apr = add i64 %i.apq, 1
  call void @_ZdlPvm(ptr noundef %i.apn, i64 noundef %i.apr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn180.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers5swift14SwiftGenerator36BuildObjectAPIConstructorBodyVectorsERKNS_8FieldDefERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESE_RKSB_(ptr noundef nonnull align 8 dereferenceable(1072) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.flatbuffers::Type", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.d = load i32, ptr %i.c, align 4, !tbaa !274, !noalias !2201 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = load i16, ptr %i.g, align 8, !tbaa !275, !noalias !2201
  store i32 %i.d, ptr %5, align 8, !tbaa !257, !alias.scope !2201
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !274, !alias.scope !2201
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.k = load <2 x ptr>, ptr %i.e, align 8, !tbaa !282, !noalias !2201
  store <2 x ptr> %i.k, ptr %i.j, align 8, !tbaa !282, !alias.scope !2201
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.h, ptr %i.l, align 8, !tbaa !275, !alias.scope !2201
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23, !noalias !2202
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2202
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(400) %i.m, ptr noundef nonnull align 8 dereferenceable(312) %1), !inline_history !6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !23, !noalias !2203
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2203
  invoke void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(400) %i.m, ptr noundef nonnull align 8 dereferenceable(312) %1)
          to label %_ZNK11flatbuffers8IdlNamer5FieldB5cxx11ERKNS_8FieldDefE.exit unwind label %bb.m, !inline_history !6

_ZNK11flatbuffers8IdlNamer5FieldB5cxx11ERKNS_8FieldDefE.exit: ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers8IdlNamer5FieldB5cxx11ERKNS_8FieldDefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.t = load ptr, ptr %6, align 8, !tbaa !26, !noalias !2204
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27, !noalias !2204 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !20, !alias.scope !2205
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.x, align 8, !tbaa !27, !alias.scope !2205
  store i8 0, ptr %i.w, align 8, !tbaa !21, !alias.scope !2205
  %i.y = add i64 %i.v, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.y)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.x, align 8, !tbaa !27, !alias.scope !2205
  %i.aa = sub i64 4611686018427387903, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.v
  br i1 %i.ab, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !27, !alias.scope !2205
  %i.ae = add i64 %i.ad, -4611686018427387899
  %i.af = icmp ult i64 %i.ae, 5
  br i1 %i.af, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #26
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.468, i64 noundef 5)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !26, !alias.scope !2205 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !277 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !278
  %.not.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !20
  %i.ap = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.w
  br i1 %i.aq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !27  ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.at, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !26
  %i.au = load i64, ptr %i.w, align 8, !tbaa !21
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !21
  %.pre = load i64, ptr %i.x, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ar, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !27
  store ptr %i.w, ptr %8, align 8, !tbaa !26
  store i64 0, ptr %i.x, align 8, !tbaa !27
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !277
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  %.pre383 = load ptr, ptr %8, align 8, !tbaa !26 ; 2 uses
  %i.az = icmp eq ptr %.pre383, %i.w
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ba = load i64, ptr %i.w, align 8, !tbaa !21
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre383, i64 noundef %i.bb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %i.bc = load ptr, ptr %6, align 8, !tbaa !26, !noalias !2206
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !27, !noalias !2206 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !20, !alias.scope !2207
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !27, !alias.scope !2207
  store i8 0, ptr %i.be, align 8, !tbaa !21, !alias.scope !2207
  %i.bg = add i64 %i.bd, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.bg)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !27, !alias.scope !2207
  %i.bi = sub i64 4611686018427387903, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.bd
  br i1 %i.bj, label %.invoke.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i88: ; preds = %bb.h
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.bc, i64 noundef %i.bd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i89 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i89: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i88
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !27, !alias.scope !2207
  %i.bm = add i64 %i.bl, -4611686018427387899
  %i.bn = icmp ult i64 %i.bm, 5
  br i1 %i.bn, label %.invoke.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i90

.invoke.i.i91:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i89, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #26
          to label %.cont.i.i92 unwind label %bb.i

.cont.i.i92:                                      ; preds = %.invoke.i.i91
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i89
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.468, i64 noundef 5)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit95 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i90, %.invoke.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !26, !alias.scope !2207 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body93, label %.body93.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit95: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i90
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !277 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !278
  %.not.i.i96 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i96, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit95
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !20
  %i.bx = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.be
  br i1 %i.by, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

bb.k:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %i.bf, align 8, !tbaa !27 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %bb.j
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !26
  %i.cc = load i64, ptr %i.be, align 8, !tbaa !21
  store i64 %i.cc, ptr %i.bw, align 8, !tbaa !21
  %.pre384 = load i64, ptr %i.bf, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  %i.cd = phi i64 [ %.pre384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97 ], [ %i.bz, %bb.k ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !27
  store ptr %i.be, ptr %9, align 8, !tbaa !26
  store i64 0, ptr %i.bf, align 8, !tbaa !27
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !277
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr %i.cg, ptr %i.bs, align 8, !tbaa !277
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit95
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100 unwind label %bb.o

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100: ; preds = %bb.l
  %.pre385 = load ptr, ptr %9, align 8, !tbaa !26 ; 2 uses
  %i.ch = icmp eq ptr %.pre385, %i.be
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100
  %i.ci = load i64, ptr %i.be, align 8, !tbaa !21
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.pre385, i64 noundef %i.cj) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102

bb.m:                                             ; preds = %bb.a
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

bb.n:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.w
  br i1 %i.cn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.d
  %.sink = phi ptr [ %i.ai, %bb.d ], [ %i.cm, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ah, %bb.d ], [ %i.cl, %bb.n ]
  %i.co = load i64, ptr %i.w, align 8, !tbaa !21
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cp) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.d ], [ %i.cl, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.o:                                             ; preds = %bb.l
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.be
  br i1 %i.cs, label %.body93, label %.body93.sink.split

.body93.sink.split:                               ; preds = %bb.o, %bb.i
  %.sink558 = phi ptr [ %i.bq, %bb.i ], [ %i.cr, %bb.o ]
  %.pn50.ph = phi { ptr, i32 } [ %i.bp, %bb.i ], [ %i.cq, %bb.o ]
  %i.ct = load i64, ptr %i.be, align 8, !tbaa !21
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %.sink558, i64 noundef %i.cu) #23
  br label %.body93

.body93:                                          ; preds = %.body93.sink.split, %bb.o, %bb.i
  %.pn50 = phi { ptr, i32 } [ %i.bp, %bb.i ], [ %i.cq, %bb.o ], [ %.pn50.ph, %.body93.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit100.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %.pr = load i32, ptr %5, align 8, !tbaa !257    ; 2 uses
  switch i32 %.pr, label %._crit_edge.i.i283 [
    i32 15, label %._crit_edge.i.i
    i32 17, label %.thread
    i32 14, label %.thread
    i32 16, label %bb.bl
    i32 1, label %.thread
  ]

._crit_edge.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.cw, ptr %10, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cw, ptr noundef nonnull align 1 dereferenceable(9) @.str.173, i64 9, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 9, ptr %i.cx, align 8, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 25
  store i8 0, ptr %i.cy, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNK11flatbuffers5swift14SwiftGenerator7GenTypeB5cxx11ERKNS_4TypeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1072) %0, ptr noundef nonnull align 8 dereferenceable(26) %5, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.an

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(477) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc111 unwind label %bb.ao

.noexc111:                                        ; preds = %bb.p
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.ao

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %.noexc111
  %i.da = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !21
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.df = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cw
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.dh = load i64, ptr %i.cw, align 8, !tbaa !21
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dj, ptr %12, align 8, !tbaa !20
  store i64 5494759122808361039, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 8, ptr %i.dk, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i8 0, ptr %i.dl, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.dm = load ptr, ptr %i.j, align 8, !tbaa !276
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 272
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !234, !range !179, !noundef !77
  %29 = trunc nuw i8 %i.do to i1                  ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.dp, ptr %13, align 8, !tbaa !20
  %not. = xor i1 %29, true
  %i.dq = zext i1 %not. to i64
  br i1 %29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  store i8 63, ptr %i.dp, align 8, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !27
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %13, i64 17
  %.sroa.sel = select i1 %29, ptr %i.dp, ptr %.sroa.gep
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !21
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(477) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc127 unwind label %bb.ap

.noexc127:                                        ; preds = %bb.r
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit129 unwind label %bb.ap

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit129: ; preds = %.noexc127
  %i.dt = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dp
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit129
  %i.dv = load i64, ptr %i.dp, align 8, !tbaa !21
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.dx = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dj
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.dz = load i64, ptr %i.dj, align 8, !tbaa !21
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.eb, ptr %14, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 61, ptr %i.b, align 8, !tbaa !75
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc138 unwind label %bb.cc ; 3 uses

.noexc138:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  store ptr %i.ec, ptr %14, align 8, !tbaa !26
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !75  ; 3 uses
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.ec, ptr noundef nonnull align 1 dereferenceable(61) @.str.470, i64 61, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  store i8 0, ptr %i.ef, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.cv, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.s unwind label %bb.aq

bb.s:                                             ; preds = %.noexc138
  %i.eg = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.eb
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.s
  %i.ei = load i64, ptr %i.eb, align 8, !tbaa !21
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !276
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 272
  %i.em = load i8, ptr %i.el, align 8, !tbaa !234, !range !179, !noundef !77
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.aw, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  %i.eo = load ptr, ptr %7, align 8, !tbaa !26, !noalias !2208
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !27, !noalias !2208 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.er, ptr %16, align 8, !tbaa !20, !alias.scope !2209
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 0, ptr %i.es, align 8, !tbaa !27, !alias.scope !2209
  store i8 0, ptr %i.er, align 8, !tbaa !21, !alias.scope !2209
  %i.et = add i64 %i.eq, 14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.et)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !27, !alias.scope !2209
  %i.ev = add i64 %i.eu, -4611686018427387890
  %i.ew = icmp ult i64 %i.ev, 14
  br i1 %i.ew, label %.invoke.i.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i146: ; preds = %bb.u
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.471, i64 noundef 14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i147 unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i147: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i146
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !27, !alias.scope !2209
  %i.ez = sub i64 4611686018427387903, %i.ey
  %i.fa = icmp ult i64 %i.ez, %i.eq
  br i1 %i.fa, label %.invoke.i.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i148

.invoke.i.i149:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i147, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #26
          to label %.cont.i.i150 unwind label %bb.v

.cont.i.i150:                                     ; preds = %.invoke.i.i149
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i147
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.eo, i64 noundef %i.eq)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i148, %.invoke.i.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i146, %bb.t
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %16, align 8, !tbaa !26, !alias.scope !2209 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.er
  br i1 %i.fe, label %.body151, label %.body151.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i148
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %i.ff = load i64, ptr %i.es, align 8, !tbaa !27, !noalias !2210
  %i.fg = icmp eq i64 %i.ff, 4611686018427387903
  br i1 %i.fg, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.w:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #26
          to label %.noexc154 unwind label %bb.ar

.noexc154:                                        ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.fh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.472, i64 noundef 1)
          to label %.noexc155 unwind label %bb.ar ; 6 uses

.noexc155:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  store ptr %i.fi, ptr %15, align 8, !tbaa !20, !alias.scope !2210
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !26 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 5 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

bb.x:                                             ; preds = %.noexc155
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !27 ; 3 uses
  %i.fo = icmp ult i64 %i.fn, 16
  call void @llvm.assume(i1 %i.fo)
  %i.fp = add nuw nsw i64 %i.fn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fi, ptr noundef nonnull align 8 dereferenceable(1) %i.fk, i64 %i.fp, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %.noexc155
  store ptr %i.fj, ptr %15, align 8, !tbaa !26, !alias.scope !2210
  %i.fq = load i64, ptr %i.fk, align 8, !tbaa !21
  store i64 %i.fq, ptr %i.fi, align 8, !tbaa !21, !alias.scope !2210
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.x
  %i.fr = phi i64 [ %i.fn, %bb.x ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 %i.fr, ptr %i.ft, align 8, !tbaa !27, !alias.scope !2210
  store ptr %i.fk, ptr %i.fh, align 8, !tbaa !26
  store i64 0, ptr %i.fs, align 8, !tbaa !27
  store i8 0, ptr %i.fk, align 8, !tbaa !21
  %i.fu = load ptr, ptr %i.ak, align 8, !tbaa !277 ; 6 uses
  %i.fv = load ptr, ptr %i.am, align 8, !tbaa !278
  %.not.i.i156 = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.i.i156, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 3 uses
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !20
  %i.fx = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fi
  br i1 %i.fy, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157

bb.aa:                                            ; preds = %bb.z
  %i.fz = load i64, ptr %i.ft, align 8, !tbaa !27 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fw, ptr noundef nonnull align 8 dereferenceable(1) %i.fi, i64 %i.gb, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit160.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157: ; preds = %bb.z
  store ptr %i.fx, ptr %i.fu, align 8, !tbaa !26
  %i.gc = load i64, ptr %i.fi, align 8, !tbaa !21
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !21
  %.pre386 = load i64, ptr %i.ft, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit160.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit160.thread: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157
  %i.gd = phi i64 [ %.pre386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157 ], [ %i.fz, %bb.aa ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
end_hunk_0
