Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/ci-baseline?download=true
inline.NumInlined: 2400
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_2v:._crit_edge.i.i
          cleanup
  br label %bb.hh

bb.em:                                            ; preds = %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit666
  %i.amf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

.body691:                                         ; preds = %bb.dv, %bb.dw, %bb.dy
  %eh.lpad-body692 = phi { ptr, i32 } [ %i.agd, %bb.dw ], [ %i.agp, %bb.dy ], [ %i.agd, %bb.dv ] ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %57, i64 400
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !53 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %57, i64 416 ; 2 uses
  %i.amj = icmp eq ptr %i.amh, %i.ami
  br i1 %i.amj, label %_ZN5vcpkg11PackageSpecD2Ev.exit738, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735: ; preds = %.body691
  %i.amk = load i64, ptr %i.ami, align 8, !tbaa !56
  %i.aml = add i64 %i.amk, 1
  call void @_ZdlPvm(ptr noundef %i.amh, i64 noundef %i.aml) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738

_ZN5vcpkg11PackageSpecD2Ev.exit738:               ; preds = %.body691, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735
  %i.amm = getelementptr inbounds nuw i8, ptr %57, i64 360
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !53 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %57, i64 376 ; 2 uses
  %i.amp = icmp eq ptr %i.amn, %i.amo
  br i1 %i.amp, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.1: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738
  %i.amq = load i64, ptr %i.amo, align 8, !tbaa !56
  %i.amr = add i64 %i.amq, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amr) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.1

_ZN5vcpkg11PackageSpecD2Ev.exit738.1:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.1
  %i.ams = getelementptr inbounds nuw i8, ptr %57, i64 320
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !53 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %57, i64 336 ; 2 uses
  %i.amv = icmp eq ptr %i.amt, %i.amu
  br i1 %i.amv, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.2: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.1
  %i.amw = load i64, ptr %i.amu, align 8, !tbaa !56
  %i.amx = add i64 %i.amw, 1
  call void @_ZdlPvm(ptr noundef %i.amt, i64 noundef %i.amx) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.2

_ZN5vcpkg11PackageSpecD2Ev.exit738.2:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.2
  %i.amy = getelementptr inbounds nuw i8, ptr %57, i64 280
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !53 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %57, i64 296 ; 2 uses
  %i.anb = icmp eq ptr %i.amz, %i.ana
  br i1 %i.anb, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.3: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.2
  %i.anc = load i64, ptr %i.ana, align 8, !tbaa !56
  %i.and = add i64 %i.anc, 1
  call void @_ZdlPvm(ptr noundef %i.amz, i64 noundef %i.and) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.3

_ZN5vcpkg11PackageSpecD2Ev.exit738.3:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.3
  %i.ane = getelementptr inbounds nuw i8, ptr %57, i64 240
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !53 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %57, i64 256 ; 2 uses
  %i.anh = icmp eq ptr %i.anf, %i.ang
  br i1 %i.anh, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.4: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.3
  %i.ani = load i64, ptr %i.ang, align 8, !tbaa !56
  %i.anj = add i64 %i.ani, 1
  call void @_ZdlPvm(ptr noundef %i.anf, i64 noundef %i.anj) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.4

_ZN5vcpkg11PackageSpecD2Ev.exit738.4:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.4
  %i.ank = getelementptr inbounds nuw i8, ptr %57, i64 200
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !53 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %57, i64 216 ; 2 uses
  %i.ann = icmp eq ptr %i.anl, %i.anm
  br i1 %i.ann, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.5: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.4
  %i.ano = load i64, ptr %i.anm, align 8, !tbaa !56
  %i.anp = add i64 %i.ano, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.anp) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.5

_ZN5vcpkg11PackageSpecD2Ev.exit738.5:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.5
  %i.anq = getelementptr inbounds nuw i8, ptr %57, i64 160
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !53 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %57, i64 176 ; 2 uses
  %i.ant = icmp eq ptr %i.anr, %i.ans
  br i1 %i.ant, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.6: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.5
  %i.anu = load i64, ptr %i.ans, align 8, !tbaa !56
  %i.anv = add i64 %i.anu, 1
  call void @_ZdlPvm(ptr noundef %i.anr, i64 noundef %i.anv) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.6

_ZN5vcpkg11PackageSpecD2Ev.exit738.6:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.6
  %i.anw = getelementptr inbounds nuw i8, ptr %57, i64 120
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !53 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %57, i64 136 ; 2 uses
  %i.anz = icmp eq ptr %i.anx, %i.any
  br i1 %i.anz, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.7: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.6
  %i.aoa = load i64, ptr %i.any, align 8, !tbaa !56
  %i.aob = add i64 %i.aoa, 1
  call void @_ZdlPvm(ptr noundef %i.anx, i64 noundef %i.aob) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.7

_ZN5vcpkg11PackageSpecD2Ev.exit738.7:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.7
  %i.aoc = getelementptr inbounds nuw i8, ptr %57, i64 80
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !53 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %57, i64 96 ; 2 uses
  %i.aof = icmp eq ptr %i.aod, %i.aoe
  br i1 %i.aof, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.8: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.7
  %i.aog = load i64, ptr %i.aoe, align 8, !tbaa !56
  %i.aoh = add i64 %i.aog, 1
  call void @_ZdlPvm(ptr noundef %i.aod, i64 noundef %i.aoh) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.8

_ZN5vcpkg11PackageSpecD2Ev.exit738.8:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.8
  %i.aoi = getelementptr inbounds nuw i8, ptr %57, i64 40
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !53 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %57, i64 56 ; 2 uses
  %i.aol = icmp eq ptr %i.aoj, %i.aok
  br i1 %i.aol, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.9: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.8
  %i.aom = load i64, ptr %i.aok, align 8, !tbaa !56
  %i.aon = add i64 %i.aom, 1
  call void @_ZdlPvm(ptr noundef %i.aoj, i64 noundef %i.aon) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.9

_ZN5vcpkg11PackageSpecD2Ev.exit738.9:             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.9
  %i.aoo = load ptr, ptr %57, align 8, !tbaa !53  ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.aoq = icmp eq ptr %i.aoo, %i.aop
  br i1 %i.aoq, label %_ZN5vcpkg11PackageSpecD2Ev.exit738.10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.10: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.9
  %i.aor = load i64, ptr %i.aop, align 8, !tbaa !56
  %i.aos = add i64 %i.aor, 1
  call void @_ZdlPvm(ptr noundef %i.aoo, i64 noundef %i.aos) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit738.10

_ZN5vcpkg11PackageSpecD2Ev.exit738.10:            ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i735.10
  %i.aot = load ptr, ptr %68, align 8, !tbaa !53  ; 2 uses
  %i.aou = icmp eq ptr %i.aot, %i.afr
  br i1 %i.aou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.10
  %i.aov = load i64, ptr %i.afr, align 8, !tbaa !56
  %i.aow = add i64 %i.aov, 1
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aow) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741: ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit738.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  %i.aox = load ptr, ptr %67, align 8, !tbaa !53  ; 2 uses
  %i.aoy = icmp eq ptr %i.aox, %i.afj
  br i1 %i.aoy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741
  %i.aoz = load i64, ptr %i.afj, align 8, !tbaa !56
  %i.apa = add i64 %i.aoz, 1
  call void @_ZdlPvm(ptr noundef %i.aox, i64 noundef %i.apa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.apb = load ptr, ptr %66, align 8, !tbaa !53  ; 2 uses
  %i.apc = icmp eq ptr %i.apb, %i.afc
  br i1 %i.apc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744
  %i.apd = load i64, ptr %i.afc, align 8, !tbaa !56
  %i.ape = add i64 %i.apd, 1
  call void @_ZdlPvm(ptr noundef %i.apb, i64 noundef %i.ape) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  %i.apf = load ptr, ptr %65, align 8, !tbaa !53  ; 2 uses
  %i.apg = icmp eq ptr %i.apf, %i.ael
  br i1 %i.apg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747
  %i.aph = load i64, ptr %i.ael, align 8, !tbaa !56
  %i.api = add i64 %i.aph, 1
  call void @_ZdlPvm(ptr noundef %i.apf, i64 noundef %i.api) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748, %bb.em
  %.2241 = phi ptr [ %i.aek, %bb.em ], [ %i.afq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748 ], [ %i.afq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ]
  %.3231 = phi i1 [ false, %bb.em ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ]
  %.pn316.pn.pn.pn = phi { ptr, i32 } [ %i.amf, %bb.em ], [ %eh.lpad-body692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748 ], [ %eh.lpad-body692, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  %i.apj = load ptr, ptr %64, align 8, !tbaa !53  ; 2 uses
  %i.apk = icmp eq ptr %i.apj, %i.aee
  br i1 %i.apk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750
  %i.apl = load i64, ptr %i.aee, align 8, !tbaa !56
  %i.apm = add i64 %i.apl, 1
  call void @_ZdlPvm(ptr noundef %i.apj, i64 noundef %i.apm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  %i.apn = load ptr, ptr %63, align 8, !tbaa !53  ; 2 uses
  %i.apo = icmp eq ptr %i.apn, %i.adx
  br i1 %i.apo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753
  %i.app = load i64, ptr %i.adx, align 8, !tbaa !56
  %i.apq = add i64 %i.app, 1
  call void @_ZdlPvm(ptr noundef %i.apn, i64 noundef %i.apq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.apr = load ptr, ptr %62, align 8, !tbaa !53  ; 2 uses
  %i.aps = icmp eq ptr %i.apr, %i.adq
  br i1 %i.aps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756
  %i.apt = load i64, ptr %i.adq, align 8, !tbaa !56
  %i.apu = add i64 %i.apt, 1
  call void @_ZdlPvm(ptr noundef %i.apr, i64 noundef %i.apu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  %i.apv = load ptr, ptr %61, align 8, !tbaa !53  ; 2 uses
  %i.apw = icmp eq ptr %i.apv, %i.adj
  br i1 %i.apw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759
  %i.apx = load i64, ptr %i.adj, align 8, !tbaa !56
  %i.apy = add i64 %i.apx, 1
  call void @_ZdlPvm(ptr noundef %i.apv, i64 noundef %i.apy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  %i.apz = load ptr, ptr %60, align 8, !tbaa !53  ; 2 uses
  %i.aqa = icmp eq ptr %i.apz, %i.adc
  br i1 %i.aqa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762
  %i.aqb = load i64, ptr %i.adc, align 8, !tbaa !56
  %i.aqc = add i64 %i.aqb, 1
  call void @_ZdlPvm(ptr noundef %i.apz, i64 noundef %i.aqc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  %i.aqd = load ptr, ptr %59, align 8, !tbaa !53  ; 2 uses
  %i.aqe = icmp eq ptr %i.aqd, %i.acu
  br i1 %i.aqe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765
  %i.aqf = load i64, ptr %i.acu, align 8, !tbaa !56
  %i.aqg = add i64 %i.aqf, 1
  call void @_ZdlPvm(ptr noundef %i.aqd, i64 noundef %i.aqg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  %i.aqh = load ptr, ptr %58, align 8, !tbaa !53  ; 2 uses
  %i.aqi = icmp eq ptr %i.aqh, %i.acn
  br i1 %i.aqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768
  %i.aqj = load i64, ptr %i.acn, align 8, !tbaa !56
  %i.aqk = add i64 %i.aqj, 1
  call void @_ZdlPvm(ptr noundef %i.aqh, i64 noundef %i.aqk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  br i1 %.3231, label %.loopexit991, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %_ZN5vcpkg11PackageSpecD2Ev.exit775
  %i.aql = phi ptr [ %i.aqm, %_ZN5vcpkg11PackageSpecD2Ev.exit775 ], [ %.2241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771 ] ; 2 uses
  %i.aqm = getelementptr inbounds i8, ptr %i.aql, i64 -40 ; 3 uses
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !53 ; 2 uses
  %i.aqo = getelementptr inbounds i8, ptr %i.aql, i64 -24 ; 2 uses
  %i.aqp = icmp eq ptr %i.aqn, %i.aqo
  br i1 %i.aqp, label %_ZN5vcpkg11PackageSpecD2Ev.exit775, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i772: ; preds = %.preheader
  %i.aqq = load i64, ptr %i.aqo, align 8, !tbaa !56
  %i.aqr = add i64 %i.aqq, 1
  call void @_ZdlPvm(ptr noundef %i.aqn, i64 noundef %i.aqr) #23
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit775

_ZN5vcpkg11PackageSpecD2Ev.exit775:               ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i772
  %i.aqs = icmp eq ptr %i.aqm, %57
  br i1 %i.aqs, label %.loopexit991, label %.preheader

.loopexit991:                                     ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit775, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %bb.hg

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21
  br label %bb.fb

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aqu = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.eq

bb.ep:                                            ; preds = %.loopexit989
  %i.aqv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %73) #21
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.pn328 = phi { ptr, i32 } [ %i.aqv, %bb.ep ], [ %i.aqu, %bb.eo ]
  %.79 = extractvalue { ptr, i32 } %.pn328, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  %i.aqw = call ptr @__cxa_begin_catch(ptr %.79) #21 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %69)
          to label %bb.er unwind label %bb.ey

bb.er:                                            ; preds = %bb.eq
  invoke void @__cxa_end_catch()
          to label %bb.es unwind label %bb.ez

bb.es:                                            ; preds = %bb.er, %bb.ec
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %69)
          to label %bb.et unwind label %bb.ez

bb.et:                                            ; preds = %bb.es
  %i.aqx = getelementptr inbounds nuw i8, ptr %69, i64 58
  %i.aqy = load i8, ptr %i.aqx, align 2, !tbaa !36, !range !24, !noundef !25
  %i.aqz = trunc nuw i8 %i.aqy to i1
  br i1 %i.aqz, label %_ZN5Catch16AssertionHandlerD2Ev.exit776, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ara = getelementptr inbounds nuw i8, ptr %69, i64 64
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !43, !nonnull !25, !align !44 ; 2 uses
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !32
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 112
  %i.are = load ptr, ptr %i.ard, align 8
  invoke void %i.are(ptr noundef nonnull align 8 dereferenceable(8) %i.arb, ptr noundef nonnull align 8 dereferenceable(72) %69)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit776 unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.arf = landingpad { ptr, i32 }
          catch ptr null
  %i.arg = extractvalue { ptr, i32 } %i.arf, 0
  call void @__clang_call_terminate(ptr %i.arg) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit776:          ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #21
  store ptr @.str.11, ptr %75, align 8
  %i.arh = getelementptr inbounds nuw i8, ptr %75, i64 8
  store i64 5, ptr %i.arh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #21
  store ptr @.str, ptr %76, align 8, !tbaa !20
  %i.ari = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 227, ptr %i.ari, align 8, !tbaa !23
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull @.str.41) #21
  %i.arj = load ptr, ptr %77, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.arl = load i64, ptr %i.ark, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %74, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %76, ptr %i.arj, i64 %i.arl, i32 noundef 2)
          to label %bb.ew unwind label %bb.fc

bb.ew:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit776
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.arm = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !115
  %i.aro = load ptr, ptr %52, align 8, !tbaa !118
  %i.arp = ptrtoint ptr %i.arn to i64
  %i.arq = ptrtoint ptr %i.aro to i64
  %i.arr = sub i64 %i.arp, %i.arq                 ; 2 uses
  %i.ars = sdiv exact i64 %i.arr, 40
  store i64 %i.ars, ptr %i.l, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  store i32 2, ptr %i.m, align 4, !tbaa !119
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.art = icmp eq i64 %i.arr, 80
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.46) #21, !noalias !120
  %i.aru = load ptr, ptr %2, align 8, !noalias !120
  %i.arv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.arw = load i64, ptr %i.arv, align 8, !noalias !120
  %i.arx = zext i1 %i.art to i8
  %i.ary = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i8 1, ptr %i.ary, align 8, !tbaa !26, !alias.scope !120
  %i.arz = getelementptr inbounds nuw i8, ptr %78, i64 9
  store i8 %i.arx, ptr %i.arz, align 1, !tbaa !31, !alias.scope !120
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKmRKiEE, i64 16), ptr %78, align 8, !tbaa !32, !alias.scope !120
  %i.asa = getelementptr inbounds nuw i8, ptr %78, i64 16
  store ptr %i.l, ptr %i.asa, align 8, !tbaa !81, !alias.scope !120
  %i.asb = getelementptr inbounds nuw i8, ptr %78, i64 24
  store ptr %i.aru, ptr %i.asb, align 8, !tbaa !83, !alias.scope !120
  %.sroa.2.0..sroa_idx.i.i777 = getelementptr inbounds nuw i8, ptr %78, i64 32
  store i64 %i.arw, ptr %.sroa.2.0..sroa_idx.i.i777, align 8, !tbaa !74, !alias.scope !120
  %i.asc = getelementptr inbounds nuw i8, ptr %78, i64 40
  store ptr %i.m, ptr %i.asc, align 8, !tbaa !123, !alias.scope !120
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %74, ptr noundef nonnull align 8 dereferenceable(10) %78)
          to label %bb.ex unwind label %bb.fd

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %78) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #21
  br label %bb.ff

bb.ey:                                            ; preds = %bb.eq
  %i.asd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fa unwind label %bb.ho

bb.ez:                                            ; preds = %bb.es, %bb.er
  %i.ase = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %.pn329 = phi { ptr, i32 } [ %i.ase, %bb.ez ], [ %i.asd, %bb.ey ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %69) #21
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.en
  %.pn329.pn = phi { ptr, i32 } [ %.pn329, %bb.fa ], [ %i.aqt, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  br label %bb.hf

bb.fc:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit776
  %i.asf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #21
  br label %bb.fu

bb.fd:                                            ; preds = %bb.ew
  %i.asg = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %78) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  %.83 = extractvalue { ptr, i32 } %i.asg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #21
  %i.ash = call ptr @__cxa_begin_catch(ptr %.83) #21 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %bb.fe unwind label %bb.fr

bb.fe:                                            ; preds = %bb.fd
  invoke void @__cxa_end_catch()
          to label %bb.ff unwind label %bb.fs

bb.ff:                                            ; preds = %bb.fe, %bb.ex
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %bb.fg unwind label %bb.fs

bb.fg:                                            ; preds = %bb.ff
  %i.asi = getelementptr inbounds nuw i8, ptr %74, i64 58
  %i.asj = load i8, ptr %i.asi, align 2, !tbaa !36, !range !24, !noundef !25
  %i.ask = trunc nuw i8 %i.asj to i1
  br i1 %i.ask, label %_ZN5Catch16AssertionHandlerD2Ev.exit778, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.asl = getelementptr inbounds nuw i8, ptr %74, i64 64
end_hunk_0
