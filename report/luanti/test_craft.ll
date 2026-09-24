Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_craft?download=true
inline.NumInlined: 1566
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN9TestCraft13testShapelessEP8IGameDef:._crit_edge.i.i
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.2
  %i.ye = load i64, ptr %i.yc, align 8, !tbaa !24
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yb, i64 noundef %i.yf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.3
  %i.yg = getelementptr inbounds nuw i8, ptr %29, i64 352
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !23 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %29, i64 368 ; 2 uses
  %i.yj = icmp eq ptr %i.yh, %i.yi
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.3
  %i.yk = load i64, ptr %i.yi, align 8, !tbaa !24
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yh, i64 noundef %i.yl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.4
  %i.ym = getelementptr inbounds nuw i8, ptr %29, i64 320
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !23 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %29, i64 336 ; 2 uses
  %i.yp = icmp eq ptr %i.yn, %i.yo
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.4
  %i.yq = load i64, ptr %i.yo, align 8, !tbaa !24
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yn, i64 noundef %i.yr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.5
  %i.ys = getelementptr inbounds nuw i8, ptr %29, i64 288
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !23 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %29, i64 304 ; 2 uses
  %i.yv = icmp eq ptr %i.yt, %i.yu
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.5
  %i.yw = load i64, ptr %i.yu, align 8, !tbaa !24
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yt, i64 noundef %i.yx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.6
  %i.yy = getelementptr inbounds nuw i8, ptr %29, i64 256
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !23 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %29, i64 272 ; 2 uses
  %i.zb = icmp eq ptr %i.yz, %i.za
  br i1 %i.zb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.6
  %i.zc = load i64, ptr %i.za, align 8, !tbaa !24
  %i.zd = add i64 %i.zc, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.7
  %i.ze = getelementptr inbounds nuw i8, ptr %29, i64 224
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !23 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %29, i64 240 ; 2 uses
  %i.zh = icmp eq ptr %i.zf, %i.zg
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.7
  %i.zi = load i64, ptr %i.zg, align 8, !tbaa !24
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.8
  %i.zk = getelementptr inbounds nuw i8, ptr %29, i64 192
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !23 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %29, i64 208 ; 2 uses
  %i.zn = icmp eq ptr %i.zl, %i.zm
  br i1 %i.zn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.8
  %i.zo = load i64, ptr %i.zm, align 8, !tbaa !24
  %i.zp = add i64 %i.zo, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.9
  %i.zq = getelementptr inbounds nuw i8, ptr %29, i64 160
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !23 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %29, i64 176 ; 2 uses
  %i.zt = icmp eq ptr %i.zr, %i.zs
  br i1 %i.zt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.9
  %i.zu = load i64, ptr %i.zs, align 8, !tbaa !24
  %i.zv = add i64 %i.zu, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.10
  %i.zw = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !23 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %29, i64 144 ; 2 uses
  %i.zz = icmp eq ptr %i.zx, %i.zy
  br i1 %i.zz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.10
  %i.aaa = load i64, ptr %i.zy, align 8, !tbaa !24
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zx, i64 noundef %i.aab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.11
  %i.aac = getelementptr inbounds nuw i8, ptr %29, i64 96
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !23 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %29, i64 112 ; 2 uses
  %i.aaf = icmp eq ptr %i.aad, %i.aae
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.11
  %i.aag = load i64, ptr %i.aae, align 8, !tbaa !24
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aad, i64 noundef %i.aah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.12
  %i.aai = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !23 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %29, i64 80 ; 2 uses
  %i.aal = icmp eq ptr %i.aaj, %i.aak
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.12
  %i.aam = load i64, ptr %i.aak, align 8, !tbaa !24
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aaj, i64 noundef %i.aan) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.13
  %i.aao = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !23 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  %i.aar = icmp eq ptr %i.aap, %i.aaq
  br i1 %i.aar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.13
  %i.aas = load i64, ptr %i.aaq, align 8, !tbaa !24
  %i.aat = add i64 %i.aas, 1
  call void @_ZdlPvm(ptr noundef %i.aap, i64 noundef %i.aat) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.14
  %i.aau = load ptr, ptr %29, align 8, !tbaa !23  ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.aaw = icmp eq ptr %i.aau, %i.aav
  br i1 %i.aaw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.14
  %i.aax = load i64, ptr %i.aav, align 8, !tbaa !24
  %i.aay = add i64 %i.aax, 1
  call void @_ZdlPvm(ptr noundef %i.aau, i64 noundef %i.aay) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412.15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.aaz = load ptr, ptr %27, align 8, !tbaa !23  ; 2 uses
  %i.aba = icmp eq ptr %i.aaz, %i.ra
  br i1 %i.aba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.15
  %i.abb = load i64, ptr %i.ra, align 8, !tbaa !24
  %i.abc = add i64 %i.abb, 1
  call void @_ZdlPvm(ptr noundef %i.aaz, i64 noundef %i.abc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414.15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1415
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.abd = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.abd, ptr %35, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.abd, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.abe = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 12, ptr %i.abe, align 8, !tbaa !33
  %i.abf = getelementptr inbounds nuw i8, ptr %35, i64 28
  store i8 0, ptr %i.abf, align 4, !tbaa !24
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.abg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  store ptr %i.abg, ptr %34, align 8, !tbaa !32, !alias.scope !260
  %i.abh = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.abh, align 8, !tbaa !33, !alias.scope !260
  store i8 0, ptr %i.abg, align 8, !tbaa !24, !alias.scope !260
  %i.abi = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i16 0, ptr %i.abi, align 8, !tbaa !267, !alias.scope !260
  %i.abj = getelementptr inbounds nuw i8, ptr %34, i64 34
  store i16 0, ptr %i.abj, align 2, !tbaa !268, !alias.scope !260
  %i.abk = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 3 uses
  %i.abl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8, !noalias !260 ; 54 uses
  store ptr %i.abl, ptr %i.abk, align 8, !tbaa !17, !alias.scope !260
  %i.abm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8, !noalias !260 ; 57 uses
  %i.abn = getelementptr i8, ptr %i.abl, i64 -80  ; 57 uses
  %i.abo = load i64, ptr %i.abn, align 8
  %i.abp = getelementptr inbounds i8, ptr %i.abk, i64 %i.abo
  store ptr %i.abm, ptr %i.abp, align 8, !tbaa !17, !alias.scope !260
  %i.abq = getelementptr inbounds nuw i8, ptr %34, i64 48
  store i8 0, ptr %i.abq, align 8, !tbaa !72, !alias.scope !260
  %i.abr = getelementptr inbounds nuw i8, ptr %34, i64 56
  %i.abs = getelementptr inbounds nuw i8, ptr %34, i64 104
  store ptr %i.abs, ptr %i.abr, align 8, !tbaa !73, !alias.scope !260
  %i.abt = getelementptr inbounds nuw i8, ptr %34, i64 64
  store i64 1, ptr %i.abt, align 8, !tbaa !74, !alias.scope !260
  %i.abu = getelementptr inbounds nuw i8, ptr %34, i64 72
  %i.abv = getelementptr inbounds nuw i8, ptr %34, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abu, i8 0, i64 16, i1 false), !alias.scope !260
  store float 1.000000e+00, ptr %i.abv, align 8, !tbaa !269, !alias.scope !260
  %i.abw = getelementptr inbounds nuw i8, ptr %34, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abw, i8 0, i64 16, i1 false), !alias.scope !260
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.abk, align 8, !tbaa !17, !alias.scope !260
  %i.abx = getelementptr inbounds nuw i8, ptr %34, i64 224
  store i8 0, ptr %i.abx, align 8, !tbaa !75, !alias.scope !260
  %i.aby = getelementptr inbounds nuw i8, ptr %34, i64 288
  store i8 0, ptr %i.aby, align 8, !tbaa !76, !alias.scope !260
  invoke void @_ZN9ItemStack11deSerializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef %i.ac)
          to label %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit" unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417
  %i.abz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %34) #23
  br label %.body1422

"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417
  %i.aca = getelementptr inbounds nuw i8, ptr %34, i64 296 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.acb = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.acb, ptr %36, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.acb, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.acc = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 12, ptr %i.acc, align 8, !tbaa !33
  %i.acd = getelementptr inbounds nuw i8, ptr %36, i64 28
  store i8 0, ptr %i.acd, align 4, !tbaa !24
  %i.ace = getelementptr inbounds nuw i8, ptr %34, i64 312 ; 2 uses
  store ptr %i.ace, ptr %i.aca, align 8, !tbaa !32, !alias.scope !270
  %i.acf = getelementptr inbounds nuw i8, ptr %34, i64 304
  store i64 0, ptr %i.acf, align 8, !tbaa !33, !alias.scope !270
  store i8 0, ptr %i.ace, align 8, !tbaa !24, !alias.scope !270
  %i.acg = getelementptr inbounds nuw i8, ptr %34, i64 328
  store i16 0, ptr %i.acg, align 8, !tbaa !267, !alias.scope !270
  %i.ach = getelementptr inbounds nuw i8, ptr %34, i64 330
  store i16 0, ptr %i.ach, align 2, !tbaa !268, !alias.scope !270
  %i.aci = getelementptr inbounds nuw i8, ptr %34, i64 336 ; 3 uses
  store ptr %i.abl, ptr %i.aci, align 8, !tbaa !17, !alias.scope !270
  %i.acj = load i64, ptr %i.abn, align 8
  %i.ack = getelementptr inbounds i8, ptr %i.aci, i64 %i.acj
  store ptr %i.abm, ptr %i.ack, align 8, !tbaa !17, !alias.scope !270
  %i.acl = getelementptr inbounds nuw i8, ptr %34, i64 344
  store i8 0, ptr %i.acl, align 8, !tbaa !72, !alias.scope !270
  %i.acm = getelementptr inbounds nuw i8, ptr %34, i64 352
  %i.acn = getelementptr inbounds nuw i8, ptr %34, i64 400
  store ptr %i.acn, ptr %i.acm, align 8, !tbaa !73, !alias.scope !270
  %i.aco = getelementptr inbounds nuw i8, ptr %34, i64 360
  store i64 1, ptr %i.aco, align 8, !tbaa !74, !alias.scope !270
  %i.acp = getelementptr inbounds nuw i8, ptr %34, i64 368
  %i.acq = getelementptr inbounds nuw i8, ptr %34, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acp, i8 0, i64 16, i1 false), !alias.scope !270
  store float 1.000000e+00, ptr %i.acq, align 8, !tbaa !269, !alias.scope !270
  %i.acr = getelementptr inbounds nuw i8, ptr %34, i64 392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acr, i8 0, i64 16, i1 false), !alias.scope !270
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.aci, align 8, !tbaa !17, !alias.scope !270
  %i.acs = getelementptr inbounds nuw i8, ptr %34, i64 520
  store i8 0, ptr %i.acs, align 8, !tbaa !75, !alias.scope !270
  %i.act = getelementptr inbounds nuw i8, ptr %34, i64 584
  store i8 0, ptr %i.act, align 8, !tbaa !76, !alias.scope !270
  invoke void @_ZN9ItemStack11deSerializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %i.aca, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef %i.ac)
          to label %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1430" unwind label %bb.ah

bb.ah:                                            ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %.body1428

"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1430": ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %i.acv = invoke noalias noundef nonnull dereferenceable(592) ptr @_Znwm(i64 noundef 592) #26
          to label %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i unwind label %bb.ai ; 3 uses

_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1430"
  %i.acw = getelementptr inbounds nuw i8, ptr %34, i64 592
  store ptr %i.acv, ptr %33, align 8, !tbaa !37
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 592
  %i.acy = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  store ptr %i.acx, ptr %i.acy, align 8, !tbaa !40
  %i.acz = invoke noundef ptr @_ZSt16__do_uninit_copyIPK9ItemStackPS0_ET0_T_S5_S4_(ptr noundef nonnull %34, ptr noundef nonnull %i.acw, ptr noundef nonnull %i.acv)
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i, %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1430"
  %i.ada = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adb = load ptr, ptr %33, align 8, !tbaa !37  ; 3 uses
  %.not.i.i5.i1431 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i5.i1431, label %.body1432, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.adc = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !40
  %i.ade = ptrtoint ptr %i.add to i64
  %i.adf = ptrtoint ptr %i.adb to i64
  %i.adg = sub i64 %i.ade, %i.adf
  call void @_ZdlPvm(ptr noundef nonnull %i.adb, i64 noundef %i.adg) #22
  br label %.body1432

bb.ak:                                            ; preds = %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i
  %i.adh = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr %i.acz, ptr %i.adh, align 8, !tbaa !38
  invoke void @_ZN10CraftInputC1E11CraftMethodjRKSt6vectorI9ItemStackSaIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.al unwind label %bb.by

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN9TestCraft20getDumpedCraftResultB5cxx11E10CraftInputP8IGameDef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 %32, ptr noundef nonnull %1)
          to label %bb.am unwind label %bb.bz

bb.am:                                            ; preds = %bb.al
  %i.adi = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !37 ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i.i1434 = icmp eq ptr %i.adj, %i.adl
  br i1 %.not4.i.i.i.i1434, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i1435

.lr.ph.i.i.i.i1435:                               ; preds = %bb.am, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i
  %.05.i.i.i.i1436 = phi ptr [ %i.ads, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i ], [ %i.adj, %bb.am ] ; 4 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1436, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.adm, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.adn = load ptr, ptr %.05.i.i.i.i1436, align 8, !tbaa !23 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1436, i64 16 ; 2 uses
  %i.adp = icmp eq ptr %i.adn, %i.ado
  br i1 %i.adp, label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1437: ; preds = %.lr.ph.i.i.i.i1435
  %i.adq = load i64, ptr %i.ado, align 8, !tbaa !24
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.adn, i64 noundef %i.adr) #22
  br label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i

_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i1435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1437
  %i.ads = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1436, i64 296 ; 2 uses
  %.not.i.i.i.i1438 = icmp eq ptr %i.ads, %i.adl
  br i1 %.not.i.i.i.i1438, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i1435, !llvm.loop !0

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i
  %.pr.i.i1439 = load ptr, ptr %i.adi, align 8, !tbaa !37
  br label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, %bb.am
  %i.adt = phi ptr [ %.pr.i.i1439, %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.adj, %bb.am ] ; 3 uses
  %.not.i.i1.i.i1440 = icmp eq ptr %i.adt, null
  br i1 %.not.i.i1.i.i1440, label %_ZN10CraftInputD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.adu = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !40
  %i.adw = ptrtoint ptr %i.adv to i64
  %i.adx = ptrtoint ptr %i.adt to i64
  %i.ady = sub i64 %i.adw, %i.adx
  call void @_ZdlPvm(ptr noundef nonnull %i.adt, i64 noundef %i.ady) #22
  br label %_ZN10CraftInputD2Ev.exit

_ZN10CraftInputD2Ev.exit:                         ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.an
  %i.adz = load ptr, ptr %33, align 8, !tbaa !37  ; 3 uses
  %i.aea = load ptr, ptr %i.adh, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i1442 = icmp eq ptr %i.adz, %i.aea
  br i1 %.not4.i.i.i1442, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1443

.lr.ph.i.i.i1443:                                 ; preds = %_ZN10CraftInputD2Ev.exit, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i
  %.05.i.i.i1444 = phi ptr [ %i.aeh, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i ], [ %i.adz, %_ZN10CraftInputD2Ev.exit ] ; 4 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.05.i.i.i1444, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.aeb, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.aec = load ptr, ptr %.05.i.i.i1444, align 8, !tbaa !23 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.05.i.i.i1444, i64 16 ; 2 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1443
  %i.aef = load i64, ptr %i.aed, align 8, !tbaa !24
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aeg) #22
  br label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i

_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i:         ; preds = %.lr.ph.i.i.i1443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %.05.i.i.i1444, i64 296 ; 2 uses
  %.not.i.i.i1445 = icmp eq ptr %i.aeh, %i.aea
  br i1 %.not.i.i.i1445, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1443, !llvm.loop !0

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i
  %.pr.i1446 = load ptr, ptr %33, align 8, !tbaa !37
  br label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZN10CraftInputD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN9TestCraft13testShapelessEP8IGameDef:._crit_edge.i.i
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.thread2991.thread, %.thread2991.thread4009
  %.pn748.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn3001.ph = phi { ptr, i32 } [ %.pn748.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.thread2991.thread4009 ], [ %i.asa, %.thread2991.thread ], [ %.pn748.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn3001.ph.ph, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1530, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1532
  %.pn748.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn3001 = phi { ptr, i32 } [ %.pn748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1530 ], [ %.pn748, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1532 ], [ %.pn748.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn3001.ph, %.sink.split ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef 128) #22
  br label %bb.kx

bb.by:                                            ; preds = %bb.ak
  %i.ash = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %bb.al
  %i.asi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10CraftInputD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %32) #23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn767 = phi { ptr, i32 } [ %i.asi, %bb.bz ], [ %i.ash, %bb.by ]
  call void @_ZNSt6vectorI9ItemStackSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #23
  br label %.body1432

.body1432:                                        ; preds = %bb.aj, %bb.ai, %bb.ca
  %.pn767.pn = phi { ptr, i32 } [ %.pn767, %bb.ca ], [ %i.ada, %bb.ai ], [ %i.ada, %bb.aj ]
  %i.asj = getelementptr inbounds nuw i8, ptr %34, i64 296
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.asj) #23
  br label %.body1428

.body1428:                                        ; preds = %.body1432, %bb.ah
  %.sink = phi ptr [ %34, %.body1432 ], [ %i.aca, %bb.ah ]
  %i.ask = phi i1 [ true, %.body1432 ], [ false, %bb.ah ]
  %.pn767.pn.pn = phi { ptr, i32 } [ %.pn767.pn, %.body1432 ], [ %i.acu, %bb.ah ]
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %.sink) #23
  %i.asl = load ptr, ptr %36, align 8, !tbaa !23  ; 2 uses
  %i.asm = icmp eq ptr %i.asl, %i.acb
  br i1 %i.asm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1535, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1533

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1533: ; preds = %.body1428
  %i.asn = load i64, ptr %i.acb, align 8, !tbaa !24
  %i.aso = add i64 %i.asn, 1
  call void @_ZdlPvm(ptr noundef %i.asl, i64 noundef %i.aso) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1535: ; preds = %.body1428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1533
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %.body1422

.body1422:                                        ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1535
  %.0685 = phi ptr [ %i.aca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1535 ], [ %34, %bb.ag ] ; 2 uses
  %.2683 = phi i1 [ %i.ask, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1535 ], [ false, %bb.ag ]
  %.pn767.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn767.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1535 ], [ %i.abz, %bb.ag ]
  %i.asp = load ptr, ptr %35, align 8, !tbaa !23  ; 2 uses
  %i.asq = icmp eq ptr %i.asp, %i.abd
  br i1 %i.asq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1538, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1536: ; preds = %.body1422
  %i.asr = load i64, ptr %i.abd, align 8, !tbaa !24
  %i.ass = add i64 %i.asr, 1
  call void @_ZdlPvm(ptr noundef %i.asp, i64 noundef %i.ass) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1538

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1538: ; preds = %.body1422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1536
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %i.ast = icmp eq ptr %34, %.0685
  %or.cond16 = or i1 %.2683, %i.ast
  br i1 %or.cond16, label %.loopexit3130, label %.preheader3129

.preheader3129:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1538, %.preheader3129
  %i.asu = phi ptr [ %i.asv, %.preheader3129 ], [ %.0685, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1538 ]
  %i.asv = getelementptr inbounds i8, ptr %i.asu, i64 -296 ; 3 uses
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.asv) #23
  %i.asw = icmp eq ptr %i.asv, %34
  br i1 %i.asw, label %.loopexit3130, label %.preheader3129

.loopexit3130:                                    ; preds = %.preheader3129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1538
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1627

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1454
  %i.asx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1544

bb.cc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2948
  %i.asy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1467, %_ZNSolsEPFRSoS_E.exit1465, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1462, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.aq
  %i.asz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1469
  %i.ata = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.as, %bb.ar
  %.0679 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.atb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.atc = load ptr, ptr %39, align 8, !tbaa !23  ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ate = icmp eq ptr %i.atc, %i.atd
  br i1 %i.ate, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1539: ; preds = %bb.ce
  %i.atf = load i64, ptr %i.atd, align 8, !tbaa !24
  %i.atg = add i64 %i.atf, 1
  call void @_ZdlPvm(ptr noundef %i.atc, i64 noundef %i.atg) #22
  br i1 %.0679, label %bb.cf, label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541: ; preds = %bb.ce
  br i1 %.0679, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541
  %.pn7743009 = phi { ptr, i32 } [ %i.ata, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541.thread ], [ %i.atb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541 ], [ %i.atb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1539 ]
  call void @__cxa_free_exception(ptr %i.agg) #23
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541, %bb.cf, %bb.cd
  %.pn774.pn = phi { ptr, i32 } [ %.pn7743009, %bb.cf ], [ %i.atb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1541 ], [ %i.asz, %bb.cd ], [ %i.atb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1539 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %38) #23
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cc
  %.pn774.pn.pn = phi { ptr, i32 } [ %.pn774.pn, %bb.cg ], [ %i.asy, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  %i.ath = load ptr, ptr %37, align 8, !tbaa !23  ; 2 uses
  %i.ati = icmp eq ptr %i.ath, %i.afi
  br i1 %i.ati, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1544, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1542: ; preds = %bb.ch
  %i.atj = load i64, ptr %i.afi, align 8, !tbaa !24
  %i.atk = add i64 %i.atj, 1
  call void @_ZdlPvm(ptr noundef %i.ath, i64 noundef %i.atk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1544

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.atl = icmp eq ptr %.pre3139, %i.afi
  br i1 %i.atl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1546: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.atm = icmp ult i64 %i.afp, 16
  call void @llvm.assume(i1 %i.atm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1545: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.atn = load i64, ptr %i.afi, align 8, !tbaa !24
  %i.ato = add i64 %i.atn, 1
  call void @_ZdlPvm(ptr noundef %.pre3139, i64 noundef %i.ato) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1547: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1546, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1545
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  %i.atp = load ptr, ptr %31, align 8, !tbaa !23  ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.atr = icmp eq ptr %i.atp, %i.atq
  br i1 %i.atr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1548: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1547
  %i.ats = load i64, ptr %i.atq, align 8, !tbaa !24
  %i.att = add i64 %i.ats, 1
  call void @_ZdlPvm(ptr noundef %i.atp, i64 noundef %i.att) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1550: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1547, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1548
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.atu = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 72
  %i.atw = load ptr, ptr %i.atv, align 8
  call void %i.atw(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.atx = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  store ptr %i.atx, ptr %44, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.atx, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.aty = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 12, ptr %i.aty, align 8, !tbaa !33
  %i.atz = getelementptr inbounds nuw i8, ptr %44, i64 28
  store i8 0, ptr %i.atz, align 4, !tbaa !24
  %i.aua = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  store ptr %i.aua, ptr %43, align 8, !tbaa !32, !alias.scope !271
  %i.aub = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 0, ptr %i.aub, align 8, !tbaa !33, !alias.scope !271
  store i8 0, ptr %i.aua, align 8, !tbaa !24, !alias.scope !271
  %i.auc = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i16 0, ptr %i.auc, align 8, !tbaa !267, !alias.scope !271
  %i.aud = getelementptr inbounds nuw i8, ptr %43, i64 34
  store i16 0, ptr %i.aud, align 2, !tbaa !268, !alias.scope !271
  %i.aue = getelementptr inbounds nuw i8, ptr %43, i64 40 ; 2 uses
  %i.auf = load i64, ptr %i.abn, align 8
  %i.aug = getelementptr inbounds i8, ptr %i.aue, i64 %i.auf
  store ptr %i.abm, ptr %i.aug, align 8, !tbaa !17, !alias.scope !271
  %i.auh = getelementptr inbounds nuw i8, ptr %43, i64 48
  store i8 0, ptr %i.auh, align 8, !tbaa !72, !alias.scope !271
  %i.aui = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.auj = getelementptr inbounds nuw i8, ptr %43, i64 104
  store ptr %i.auj, ptr %i.aui, align 8, !tbaa !73, !alias.scope !271
  %i.auk = getelementptr inbounds nuw i8, ptr %43, i64 64
  store i64 1, ptr %i.auk, align 8, !tbaa !74, !alias.scope !271
  %i.aul = getelementptr inbounds nuw i8, ptr %43, i64 72
  %i.aum = getelementptr inbounds nuw i8, ptr %43, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aul, i8 0, i64 16, i1 false), !alias.scope !271
  store float 1.000000e+00, ptr %i.aum, align 8, !tbaa !269, !alias.scope !271
  %i.aun = getelementptr inbounds nuw i8, ptr %43, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aun, i8 0, i64 16, i1 false), !alias.scope !271
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.aue, align 8, !tbaa !17, !alias.scope !271
  %i.auo = getelementptr inbounds nuw i8, ptr %43, i64 224
  store i8 0, ptr %i.auo, align 8, !tbaa !75, !alias.scope !271
  %i.aup = getelementptr inbounds nuw i8, ptr %43, i64 288
  store i8 0, ptr %i.aup, align 8, !tbaa !76, !alias.scope !271
  invoke void @_ZN9ItemStack11deSerializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %43, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef %i.ac)
          to label %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1557" unwind label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1550
  %i.auq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %43) #23
  br label %.body1555

"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1557": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1550
  %i.aur = getelementptr inbounds nuw i8, ptr %43, i64 296 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.aus = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 6 uses
  store ptr %i.aus, ptr %45, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aus, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.aut = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 12, ptr %i.aut, align 8, !tbaa !33
  %i.auu = getelementptr inbounds nuw i8, ptr %45, i64 28
  store i8 0, ptr %i.auu, align 4, !tbaa !24
  %i.auv = getelementptr inbounds nuw i8, ptr %43, i64 312 ; 2 uses
  store ptr %i.auv, ptr %i.aur, align 8, !tbaa !32, !alias.scope !272
  %i.auw = getelementptr inbounds nuw i8, ptr %43, i64 304
  store i64 0, ptr %i.auw, align 8, !tbaa !33, !alias.scope !272
  store i8 0, ptr %i.auv, align 8, !tbaa !24, !alias.scope !272
  %i.aux = getelementptr inbounds nuw i8, ptr %43, i64 328
  store i16 0, ptr %i.aux, align 8, !tbaa !267, !alias.scope !272
  %i.auy = getelementptr inbounds nuw i8, ptr %43, i64 330
  store i16 0, ptr %i.auy, align 2, !tbaa !268, !alias.scope !272
  %i.auz = getelementptr inbounds nuw i8, ptr %43, i64 336 ; 2 uses
  %i.ava = load i64, ptr %i.abn, align 8
  %i.avb = getelementptr inbounds i8, ptr %i.auz, i64 %i.ava
  store ptr %i.abm, ptr %i.avb, align 8, !tbaa !17, !alias.scope !272
  %i.avc = getelementptr inbounds nuw i8, ptr %43, i64 344
  store i8 0, ptr %i.avc, align 8, !tbaa !72, !alias.scope !272
  %i.avd = getelementptr inbounds nuw i8, ptr %43, i64 352
  %i.ave = getelementptr inbounds nuw i8, ptr %43, i64 400
  store ptr %i.ave, ptr %i.avd, align 8, !tbaa !73, !alias.scope !272
  %i.avf = getelementptr inbounds nuw i8, ptr %43, i64 360
  store i64 1, ptr %i.avf, align 8, !tbaa !74, !alias.scope !272
  %i.avg = getelementptr inbounds nuw i8, ptr %43, i64 368
  %i.avh = getelementptr inbounds nuw i8, ptr %43, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avg, i8 0, i64 16, i1 false), !alias.scope !272
  store float 1.000000e+00, ptr %i.avh, align 8, !tbaa !269, !alias.scope !272
  %i.avi = getelementptr inbounds nuw i8, ptr %43, i64 392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avi, i8 0, i64 16, i1 false), !alias.scope !272
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.auz, align 8, !tbaa !17, !alias.scope !272
  %i.avj = getelementptr inbounds nuw i8, ptr %43, i64 520
  store i8 0, ptr %i.avj, align 8, !tbaa !75, !alias.scope !272
  %i.avk = getelementptr inbounds nuw i8, ptr %43, i64 584
  store i8 0, ptr %i.avk, align 8, !tbaa !76, !alias.scope !272
  invoke void @_ZN9ItemStack11deSerializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %i.aur, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef %i.ac)
          to label %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1564" unwind label %bb.cj

bb.cj:                                            ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1557"
  %i.avl = landingpad { ptr, i32 }
          cleanup
  br label %.body1562

"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1564": ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1557"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.avm = invoke noalias noundef nonnull dereferenceable(592) ptr @_Znwm(i64 noundef 592) #26
          to label %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1567 unwind label %bb.ck ; 3 uses

_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1567: ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1564"
  %i.avn = getelementptr inbounds nuw i8, ptr %43, i64 592
  store ptr %i.avm, ptr %42, align 8, !tbaa !37
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avm, i64 592
  %i.avp = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  store ptr %i.avo, ptr %i.avp, align 8, !tbaa !40
  %i.avq = invoke noundef ptr @_ZSt16__do_uninit_copyIPK9ItemStackPS0_ET0_T_S5_S4_(ptr noundef nonnull %43, ptr noundef nonnull %i.avn, ptr noundef nonnull %i.avm)
          to label %bb.cm unwind label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1567, %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1564"
  %i.avr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avs = load ptr, ptr %42, align 8, !tbaa !37  ; 3 uses
  %.not.i.i5.i1565 = icmp eq ptr %i.avs, null
  br i1 %.not.i.i5.i1565, label %.body1568, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.avt = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !40
  %i.avv = ptrtoint ptr %i.avu to i64
  %i.avw = ptrtoint ptr %i.avs to i64
  %i.avx = sub i64 %i.avv, %i.avw
  call void @_ZdlPvm(ptr noundef nonnull %i.avs, i64 noundef %i.avx) #22
  br label %.body1568

bb.cm:                                            ; preds = %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1567
  %i.avy = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  store ptr %i.avq, ptr %i.avy, align 8, !tbaa !38
  invoke void @_ZN10CraftInputC1E11CraftMethodjRKSt6vectorI9ItemStackSaIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %bb.cn unwind label %bb.cv

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN9TestCraft20getDumpedCraftResultB5cxx11E10CraftInputP8IGameDef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 8 %41, ptr noundef nonnull %1)
          to label %bb.co unwind label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.avz = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !37 ; 3 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i.i1571 = icmp eq ptr %i.awa, %i.awc
  br i1 %.not4.i.i.i.i1571, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1579, label %.lr.ph.i.i.i.i1572

.lr.ph.i.i.i.i1572:                               ; preds = %bb.co, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1575
  %.05.i.i.i.i1573 = phi ptr [ %i.awj, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1575 ], [ %i.awa, %bb.co ] ; 4 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1573, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.awd, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.awe = load ptr, ptr %.05.i.i.i.i1573, align 8, !tbaa !23 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1573, i64 16 ; 2 uses
  %i.awg = icmp eq ptr %i.awe, %i.awf
  br i1 %i.awg, label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1575, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1574: ; preds = %.lr.ph.i.i.i.i1572
  %i.awh = load i64, ptr %i.awf, align 8, !tbaa !24
  %i.awi = add i64 %i.awh, 1
  call void @_ZdlPvm(ptr noundef %i.awe, i64 noundef %i.awi) #22
  br label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1575

_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1575:   ; preds = %.lr.ph.i.i.i.i1572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1574
  %i.awj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1573, i64 296 ; 2 uses
  %.not.i.i.i.i1576 = icmp eq ptr %i.awj, %i.awc
  br i1 %.not.i.i.i.i1576, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1577, label %.lr.ph.i.i.i.i1572, !llvm.loop !0

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1577: ; preds = %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1575
  %.pr.i.i1578 = load ptr, ptr %i.avz, align 8, !tbaa !37
  br label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1579

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1579: ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1577, %bb.co
  %i.awk = phi ptr [ %.pr.i.i1578, %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1577 ], [ %i.awa, %bb.co ] ; 3 uses
  %.not.i.i1.i.i1580 = icmp eq ptr %i.awk, null
  br i1 %.not.i.i1.i.i1580, label %_ZN10CraftInputD2Ev.exit1582, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1579
  %i.awl = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !40
  %i.awn = ptrtoint ptr %i.awm to i64
  %i.awo = ptrtoint ptr %i.awk to i64
  %i.awp = sub i64 %i.awn, %i.awo
  call void @_ZdlPvm(ptr noundef nonnull %i.awk, i64 noundef %i.awp) #22
  br label %_ZN10CraftInputD2Ev.exit1582

_ZN10CraftInputD2Ev.exit1582:                     ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1579, %bb.cp
  %i.awq = load ptr, ptr %42, align 8, !tbaa !37  ; 3 uses
  %i.awr = load ptr, ptr %i.avy, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i1583 = icmp eq ptr %i.awq, %i.awr
  br i1 %.not4.i.i.i1583, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1591, label %.lr.ph.i.i.i1584

.lr.ph.i.i.i1584:                                 ; preds = %_ZN10CraftInputD2Ev.exit1582, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1587
  %.05.i.i.i1585 = phi ptr [ %i.awy, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1587 ], [ %i.awq, %_ZN10CraftInputD2Ev.exit1582 ] ; 4 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.05.i.i.i1585, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.aws, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.awt = load ptr, ptr %.05.i.i.i1585, align 8, !tbaa !23 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.05.i.i.i1585, i64 16 ; 2 uses
  %i.awv = icmp eq ptr %i.awt, %i.awu
  br i1 %i.awv, label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1586: ; preds = %.lr.ph.i.i.i1584
  %i.aww = load i64, ptr %i.awu, align 8, !tbaa !24
  %i.awx = add i64 %i.aww, 1
  call void @_ZdlPvm(ptr noundef %i.awt, i64 noundef %i.awx) #22
  br label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1587

_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1587:     ; preds = %.lr.ph.i.i.i1584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1586
  %i.awy = getelementptr inbounds nuw i8, ptr %.05.i.i.i1585, i64 296 ; 2 uses
  %.not.i.i.i1588 = icmp eq ptr %i.awy, %i.awr
  br i1 %.not.i.i.i1588, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1589, label %.lr.ph.i.i.i1584, !llvm.loop !0

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1589: ; preds = %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1587
  %.pr.i1590 = load ptr, ptr %42, align 8, !tbaa !37
  br label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1591

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1591: ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1589, %_ZN10CraftInputD2Ev.exit1582
  %i.awz = phi ptr [ %.pr.i1590, %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1589 ], [ %i.awq, %_ZN10CraftInputD2Ev.exit1582 ] ; 3 uses
  %.not.i.i1.i1592 = icmp eq ptr %i.awz, null
  br i1 %.not.i.i1.i1592, label %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1595, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1591
  %i.axa = load ptr, ptr %i.avp, align 8, !tbaa !40
  %i.axb = ptrtoint ptr %i.axa to i64
  %i.axc = ptrtoint ptr %i.awz to i64
  %i.axd = sub i64 %i.axb, %i.axc
  call void @_ZdlPvm(ptr noundef nonnull %i.awz, i64 noundef %i.axd) #22
  br label %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1595

_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1595:     ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1591, %bb.cq
  %i.axe = getelementptr inbounds nuw i8, ptr %43, i64 296
  %i.axf = getelementptr inbounds nuw i8, ptr %43, i64 336
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.axf, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.axg = load ptr, ptr %i.axe, align 8, !tbaa !23 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %43, i64 312 ; 2 uses
  %i.axi = icmp eq ptr %i.axg, %i.axh
  br i1 %i.axi, label %_ZN9ItemStackD2Ev.exit1598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1596: ; preds = %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1595
  %i.axj = load i64, ptr %i.axh, align 8, !tbaa !24
  %i.axk = add i64 %i.axj, 1
  call void @_ZdlPvm(ptr noundef %i.axg, i64 noundef %i.axk) #22
  br label %_ZN9ItemStackD2Ev.exit1598

_ZN9ItemStackD2Ev.exit1598:                       ; preds = %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1595, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1596
  %i.axl = getelementptr inbounds nuw i8, ptr %43, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.axl, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.axm = load ptr, ptr %43, align 8, !tbaa !23  ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.axo = icmp eq ptr %i.axm, %i.axn
  br i1 %i.axo, label %_ZN9ItemStackD2Ev.exit1598.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1596.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1596.1: ; preds = %_ZN9ItemStackD2Ev.exit1598
  %i.axp = load i64, ptr %i.axn, align 8, !tbaa !24
  %i.axq = add i64 %i.axp, 1
  call void @_ZdlPvm(ptr noundef %i.axm, i64 noundef %i.axq) #22
  br label %_ZN9ItemStackD2Ev.exit1598.1

_ZN9ItemStackD2Ev.exit1598.1:                     ; preds = %_ZN9ItemStackD2Ev.exit1598, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1596.1
  %i.axr = load ptr, ptr %45, align 8, !tbaa !23  ; 2 uses
  %i.axs = icmp eq ptr %i.axr, %i.aus
  br i1 %i.axs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1601, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1599: ; preds = %_ZN9ItemStackD2Ev.exit1598.1
  %i.axt = load i64, ptr %i.aus, align 8, !tbaa !24
  %i.axu = add i64 %i.axt, 1
  call void @_ZdlPvm(ptr noundef %i.axr, i64 noundef %i.axu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1601

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1601: ; preds = %_ZN9ItemStackD2Ev.exit1598.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1599
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
end_hunk_1
begin_hunk_2_@_ZN9TestCraft13testShapelessEP8IGameDef:._crit_edge.i.i

bb.du:                                            ; preds = %bb.dl
  %i.bhc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10CraftInputD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %50) #23
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn793 = phi { ptr, i32 } [ %i.bhc, %bb.du ], [ %i.bhb, %bb.dt ]
  call void @_ZNSt6vectorI9ItemStackSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %51) #23
  br label %.body1670

.body1670:                                        ; preds = %bb.dj, %bb.di, %bb.dv
  %.pn793.pn = phi { ptr, i32 } [ %.pn793, %bb.dv ], [ %i.bde, %bb.di ], [ %i.bde, %bb.dj ]
  %i.bhd = getelementptr inbounds nuw i8, ptr %52, i64 592
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.bhd) #23
  %i.bhe = getelementptr inbounds nuw i8, ptr %52, i64 296
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.bhe) #23
  br label %.body1664

.body1664:                                        ; preds = %.body1670, %bb.dh
  %.sink4022 = phi ptr [ %52, %.body1670 ], [ %i.bce, %bb.dh ]
  %i.bhf = phi i1 [ true, %.body1670 ], [ false, %bb.dh ]
  %.pn793.pn.pn = phi { ptr, i32 } [ %.pn793.pn, %.body1670 ], [ %i.bcy, %bb.dh ]
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %.sink4022) #23
  %i.bhg = load ptr, ptr %55, align 8, !tbaa !23  ; 2 uses
  %i.bhh = icmp eq ptr %i.bhg, %i.bcf
  br i1 %i.bhh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1735, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1733

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1733: ; preds = %.body1664
  %i.bhi = load i64, ptr %i.bcf, align 8, !tbaa !24
  %i.bhj = add i64 %i.bhi, 1
  call void @_ZdlPvm(ptr noundef %i.bhg, i64 noundef %i.bhj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1735

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1735: ; preds = %.body1664, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1733
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  br label %.body1657

.body1657:                                        ; preds = %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1735
  %.0625 = phi ptr [ %i.bce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1735 ], [ %i.bbk, %bb.dg ]
  %.2621 = phi i1 [ %i.bhf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1735 ], [ false, %bb.dg ]
  %.pn793.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn793.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1735 ], [ %i.bcd, %bb.dg ]
  %i.bhk = load ptr, ptr %54, align 8, !tbaa !23  ; 2 uses
  %i.bhl = icmp eq ptr %i.bhk, %i.bbl
  br i1 %i.bhl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1738, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1736

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1736: ; preds = %.body1657
  %i.bhm = load i64, ptr %i.bbl, align 8, !tbaa !24
  %i.bhn = add i64 %i.bhm, 1
  call void @_ZdlPvm(ptr noundef %i.bhk, i64 noundef %i.bhn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1738

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1738: ; preds = %.body1657, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1736
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  br label %.body1650

.body1650:                                        ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1738
  %.2627 = phi ptr [ %.0625, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1738 ], [ %52, %bb.df ] ; 2 uses
  %.4623 = phi i1 [ %.2621, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1738 ], [ false, %bb.df ]
  %.pn793.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn793.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1738 ], [ %i.bbj, %bb.df ]
  %i.bho = load ptr, ptr %53, align 8, !tbaa !23  ; 2 uses
  %i.bhp = icmp eq ptr %i.bho, %i.baq
  br i1 %i.bhp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1739

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1739: ; preds = %.body1650
  %i.bhq = load i64, ptr %i.baq, align 8, !tbaa !24
  %i.bhr = add i64 %i.bhq, 1
  call void @_ZdlPvm(ptr noundef %i.bho, i64 noundef %i.bhr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1741

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1741: ; preds = %.body1650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1739
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %i.bhs = icmp eq ptr %52, %.2627
  %or.cond22 = or i1 %.4623, %i.bhs
  br i1 %or.cond22, label %.loopexit3126, label %.preheader3125

.preheader3125:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1741, %.preheader3125
  %i.bht = phi ptr [ %i.bhu, %.preheader3125 ], [ %.2627, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1741 ]
  %i.bhu = getelementptr inbounds i8, ptr %i.bht, i64 -296 ; 3 uses
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.bhu) #23
  %i.bhv = icmp eq ptr %i.bhu, %52
  br i1 %i.bhv, label %.loopexit3126, label %.preheader3125

.loopexit3126:                                    ; preds = %.preheader3125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1741
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1709
  %i.bhw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1747

bb.dx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1715.thread3019
  %i.bhx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1727, %_ZNSolsEPFRSoS_E.exit1725, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1723, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1721, %_ZNSolsEPFRSoS_E.exit1719, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1717, %bb.dq
  %i.bhy = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1729
  %i.bhz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.ds, %bb.dr
  %.0617 = phi i1 [ false, %bb.ds ], [ true, %bb.dr ] ; 2 uses
  %i.bia = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bib = load ptr, ptr %58, align 8, !tbaa !23  ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.bid = icmp eq ptr %i.bib, %i.bic
  br i1 %i.bid, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1742

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1742: ; preds = %bb.dz
  %i.bie = load i64, ptr %i.bic, align 8, !tbaa !24
  %i.bif = add i64 %i.bie, 1
  call void @_ZdlPvm(ptr noundef %i.bib, i64 noundef %i.bif) #22
  br i1 %.0617, label %bb.ea, label %bb.eb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744: ; preds = %bb.dz
  br i1 %.0617, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744
  %.pn8023027 = phi { ptr, i32 } [ %i.bhz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744.thread ], [ %i.bia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744 ], [ %i.bia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1742 ]
  call void @__cxa_free_exception(ptr %i.bgv) #23
  br label %bb.eb

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744, %bb.ea, %bb.dy
  %.pn802.pn = phi { ptr, i32 } [ %.pn8023027, %bb.ea ], [ %i.bia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1744 ], [ %i.bhy, %bb.dy ], [ %i.bia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1742 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %57) #23
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dx
  %.pn802.pn.pn = phi { ptr, i32 } [ %.pn802.pn, %bb.eb ], [ %i.bhx, %bb.dx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  %i.big = load ptr, ptr %56, align 8, !tbaa !23  ; 2 uses
  %i.bih = icmp eq ptr %i.big, %i.bfx
  br i1 %i.bih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1747, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1745

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1745: ; preds = %bb.ec
  %i.bii = load i64, ptr %i.bfx, align 8, !tbaa !24
  %i.bij = add i64 %i.bii, 1
  call void @_ZdlPvm(ptr noundef %i.big, i64 noundef %i.bij) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1747

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1715.thread: ; preds = %bb.dp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1715
  %i.bik = icmp eq ptr %.pre3141, %i.bfx
  br i1 %i.bik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1749, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1748

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1749: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1715.thread
  %i.bil = icmp ult i64 %i.bge, 16
  call void @llvm.assume(i1 %i.bil)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1750

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1748: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1715.thread
  %i.bim = load i64, ptr %i.bfx, align 8, !tbaa !24
  %i.bin = add i64 %i.bim, 1
  call void @_ZdlPvm(ptr noundef %.pre3141, i64 noundef %i.bin) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1750

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1750: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1749, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1748
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  %i.bio = load ptr, ptr %49, align 8, !tbaa !23  ; 2 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.biq = icmp eq ptr %i.bio, %i.bip
  br i1 %i.biq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1753, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1751: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1750
  %i.bir = load i64, ptr %i.bip, align 8, !tbaa !24
  %i.bis = add i64 %i.bir, 1
  call void @_ZdlPvm(ptr noundef %i.bio, i64 noundef %i.bis) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1753

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1753: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1750, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1751
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  %i.bit = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.bit, ptr %63, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bit, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.biu = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 12, ptr %i.biu, align 8, !tbaa !33
  %i.biv = getelementptr inbounds nuw i8, ptr %63, i64 28
  store i8 0, ptr %i.biv, align 4, !tbaa !24
  %i.biw = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  store ptr %i.biw, ptr %62, align 8, !tbaa !32, !alias.scope !276
  %i.bix = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 0, ptr %i.bix, align 8, !tbaa !33, !alias.scope !276
  store i8 0, ptr %i.biw, align 8, !tbaa !24, !alias.scope !276
  %i.biy = getelementptr inbounds nuw i8, ptr %62, i64 32
  store i16 0, ptr %i.biy, align 8, !tbaa !267, !alias.scope !276
  %i.biz = getelementptr inbounds nuw i8, ptr %62, i64 34
  store i16 0, ptr %i.biz, align 2, !tbaa !268, !alias.scope !276
  %i.bja = getelementptr inbounds nuw i8, ptr %62, i64 40 ; 2 uses
  %i.bjb = load i64, ptr %i.abn, align 8
  %i.bjc = getelementptr inbounds i8, ptr %i.bja, i64 %i.bjb
  store ptr %i.abm, ptr %i.bjc, align 8, !tbaa !17, !alias.scope !276
  %i.bjd = getelementptr inbounds nuw i8, ptr %62, i64 48
  store i8 0, ptr %i.bjd, align 8, !tbaa !72, !alias.scope !276
  %i.bje = getelementptr inbounds nuw i8, ptr %62, i64 56
  %i.bjf = getelementptr inbounds nuw i8, ptr %62, i64 104
  store ptr %i.bjf, ptr %i.bje, align 8, !tbaa !73, !alias.scope !276
  %i.bjg = getelementptr inbounds nuw i8, ptr %62, i64 64
  store i64 1, ptr %i.bjg, align 8, !tbaa !74, !alias.scope !276
  %i.bjh = getelementptr inbounds nuw i8, ptr %62, i64 72
  %i.bji = getelementptr inbounds nuw i8, ptr %62, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjh, i8 0, i64 16, i1 false), !alias.scope !276
  store float 1.000000e+00, ptr %i.bji, align 8, !tbaa !269, !alias.scope !276
  %i.bjj = getelementptr inbounds nuw i8, ptr %62, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjj, i8 0, i64 16, i1 false), !alias.scope !276
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.bja, align 8, !tbaa !17, !alias.scope !276
  %i.bjk = getelementptr inbounds nuw i8, ptr %62, i64 224
  store i8 0, ptr %i.bjk, align 8, !tbaa !75, !alias.scope !276
  %i.bjl = getelementptr inbounds nuw i8, ptr %62, i64 288
  store i8 0, ptr %i.bjl, align 8, !tbaa !76, !alias.scope !276
  invoke void @_ZN9ItemStack11deSerializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %62, ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef %i.ac)
          to label %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1760" unwind label %bb.ed

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1753
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %62) #23
  br label %.body1758

"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1760": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1753
  %i.bjn = getelementptr inbounds nuw i8, ptr %62, i64 296 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  %i.bjo = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  store ptr %i.bjo, ptr %64, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bjo, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.bjp = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 12, ptr %i.bjp, align 8, !tbaa !33
  %i.bjq = getelementptr inbounds nuw i8, ptr %64, i64 28
  store i8 0, ptr %i.bjq, align 4, !tbaa !24
  %i.bjr = getelementptr inbounds nuw i8, ptr %62, i64 312 ; 2 uses
  store ptr %i.bjr, ptr %i.bjn, align 8, !tbaa !32, !alias.scope !277
  %i.bjs = getelementptr inbounds nuw i8, ptr %62, i64 304
  store i64 0, ptr %i.bjs, align 8, !tbaa !33, !alias.scope !277
  store i8 0, ptr %i.bjr, align 8, !tbaa !24, !alias.scope !277
  %i.bjt = getelementptr inbounds nuw i8, ptr %62, i64 328
  store i16 0, ptr %i.bjt, align 8, !tbaa !267, !alias.scope !277
  %i.bju = getelementptr inbounds nuw i8, ptr %62, i64 330
  store i16 0, ptr %i.bju, align 2, !tbaa !268, !alias.scope !277
  %i.bjv = getelementptr inbounds nuw i8, ptr %62, i64 336 ; 2 uses
  %i.bjw = load i64, ptr %i.abn, align 8
  %i.bjx = getelementptr inbounds i8, ptr %i.bjv, i64 %i.bjw
  store ptr %i.abm, ptr %i.bjx, align 8, !tbaa !17, !alias.scope !277
  %i.bjy = getelementptr inbounds nuw i8, ptr %62, i64 344
  store i8 0, ptr %i.bjy, align 8, !tbaa !72, !alias.scope !277
  %i.bjz = getelementptr inbounds nuw i8, ptr %62, i64 352
  %i.bka = getelementptr inbounds nuw i8, ptr %62, i64 400
  store ptr %i.bka, ptr %i.bjz, align 8, !tbaa !73, !alias.scope !277
  %i.bkb = getelementptr inbounds nuw i8, ptr %62, i64 360
  store i64 1, ptr %i.bkb, align 8, !tbaa !74, !alias.scope !277
  %i.bkc = getelementptr inbounds nuw i8, ptr %62, i64 368
  %i.bkd = getelementptr inbounds nuw i8, ptr %62, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bkc, i8 0, i64 16, i1 false), !alias.scope !277
  store float 1.000000e+00, ptr %i.bkd, align 8, !tbaa !269, !alias.scope !277
  %i.bke = getelementptr inbounds nuw i8, ptr %62, i64 392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bke, i8 0, i64 16, i1 false), !alias.scope !277
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.bjv, align 8, !tbaa !17, !alias.scope !277
  %i.bkf = getelementptr inbounds nuw i8, ptr %62, i64 520
  store i8 0, ptr %i.bkf, align 8, !tbaa !75, !alias.scope !277
  %i.bkg = getelementptr inbounds nuw i8, ptr %62, i64 584
  store i8 0, ptr %i.bkg, align 8, !tbaa !76, !alias.scope !277
  invoke void @_ZN9ItemStack11deSerializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %i.bjn, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef %i.ac)
          to label %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1767" unwind label %bb.ee

bb.ee:                                            ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1760"
  %i.bkh = landingpad { ptr, i32 }
          cleanup
  br label %.body1765

"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1767": ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1760"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %i.bki = invoke noalias noundef nonnull dereferenceable(592) ptr @_Znwm(i64 noundef 592) #26
          to label %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1770 unwind label %bb.ef ; 3 uses

_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1770: ; preds = %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1767"
  %i.bkj = getelementptr inbounds nuw i8, ptr %62, i64 592
  store ptr %i.bki, ptr %61, align 8, !tbaa !37
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bki, i64 592
  %i.bkl = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  store ptr %i.bkk, ptr %i.bkl, align 8, !tbaa !40
  %i.bkm = invoke noundef ptr @_ZSt16__do_uninit_copyIPK9ItemStackPS0_ET0_T_S5_S4_(ptr noundef nonnull %62, ptr noundef nonnull %i.bkj, ptr noundef nonnull %i.bki)
          to label %bb.eh unwind label %bb.ef

bb.ef:                                            ; preds = %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1770, %"_ZZN9TestCraft13testShapelessEP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1767"
  %i.bkn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bko = load ptr, ptr %61, align 8, !tbaa !37  ; 3 uses
  %.not.i.i5.i1768 = icmp eq ptr %i.bko, null
  br i1 %.not.i.i5.i1768, label %.body1771, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bkp = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !40
  %i.bkr = ptrtoint ptr %i.bkq to i64
  %i.bks = ptrtoint ptr %i.bko to i64
  %i.bkt = sub i64 %i.bkr, %i.bks
  call void @_ZdlPvm(ptr noundef nonnull %i.bko, i64 noundef %i.bkt) #22
  br label %.body1771

bb.eh:                                            ; preds = %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE11_M_allocateEm.exit.i.i1770
  %i.bku = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  store ptr %i.bkm, ptr %i.bku, align 8, !tbaa !38
  invoke void @_ZN10CraftInputC1E11CraftMethodjRKSt6vectorI9ItemStackSaIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %60, i32 noundef 0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.ei unwind label %bb.eq

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZN9TestCraft20getDumpedCraftResultB5cxx11E10CraftInputP8IGameDef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 8 %60, ptr noundef nonnull %1)
          to label %bb.ej unwind label %bb.er

bb.ej:                                            ; preds = %bb.ei
  %i.bkv = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !37 ; 3 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i.i1774 = icmp eq ptr %i.bkw, %i.bky
  br i1 %.not4.i.i.i.i1774, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1782, label %.lr.ph.i.i.i.i1775

.lr.ph.i.i.i.i1775:                               ; preds = %bb.ej, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1778
  %.05.i.i.i.i1776 = phi ptr [ %i.blf, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1778 ], [ %i.bkw, %bb.ej ] ; 4 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1776, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.bkz, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.bla = load ptr, ptr %.05.i.i.i.i1776, align 8, !tbaa !23 ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1776, i64 16 ; 2 uses
  %i.blc = icmp eq ptr %i.bla, %i.blb
  br i1 %i.blc, label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1778, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1777

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1777: ; preds = %.lr.ph.i.i.i.i1775
  %i.bld = load i64, ptr %i.blb, align 8, !tbaa !24
  %i.ble = add i64 %i.bld, 1
  call void @_ZdlPvm(ptr noundef %i.bla, i64 noundef %i.ble) #22
  br label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1778

_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1778:   ; preds = %.lr.ph.i.i.i.i1775, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1777
  %i.blf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1776, i64 296 ; 2 uses
  %.not.i.i.i.i1779 = icmp eq ptr %i.blf, %i.bky
  br i1 %.not.i.i.i.i1779, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1780, label %.lr.ph.i.i.i.i1775, !llvm.loop !0

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1780: ; preds = %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i.i1778
  %.pr.i.i1781 = load ptr, ptr %i.bkv, align 8, !tbaa !37
  br label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1782

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1782: ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1780, %bb.ej
  %i.blg = phi ptr [ %.pr.i.i1781, %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i1780 ], [ %i.bkw, %bb.ej ] ; 3 uses
  %.not.i.i1.i.i1783 = icmp eq ptr %i.blg, null
  br i1 %.not.i.i1.i.i1783, label %_ZN10CraftInputD2Ev.exit1785, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1782
  %i.blh = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !40
  %i.blj = ptrtoint ptr %i.bli to i64
  %i.blk = ptrtoint ptr %i.blg to i64
  %i.bll = sub i64 %i.blj, %i.blk
  call void @_ZdlPvm(ptr noundef nonnull %i.blg, i64 noundef %i.bll) #22
  br label %_ZN10CraftInputD2Ev.exit1785

_ZN10CraftInputD2Ev.exit1785:                     ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i.i1782, %bb.ek
  %i.blm = load ptr, ptr %61, align 8, !tbaa !37  ; 3 uses
  %i.bln = load ptr, ptr %i.bku, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i1786 = icmp eq ptr %i.blm, %i.bln
  br i1 %.not4.i.i.i1786, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1794, label %.lr.ph.i.i.i1787

.lr.ph.i.i.i1787:                                 ; preds = %_ZN10CraftInputD2Ev.exit1785, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1790
  %.05.i.i.i1788 = phi ptr [ %i.blu, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1790 ], [ %i.blm, %_ZN10CraftInputD2Ev.exit1785 ] ; 4 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %.05.i.i.i1788, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.blo, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.blp = load ptr, ptr %.05.i.i.i1788, align 8, !tbaa !23 ; 2 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %.05.i.i.i1788, i64 16 ; 2 uses
  %i.blr = icmp eq ptr %i.blp, %i.blq
  br i1 %i.blr, label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1790, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1789

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1789: ; preds = %.lr.ph.i.i.i1787
  %i.bls = load i64, ptr %i.blq, align 8, !tbaa !24
  %i.blt = add i64 %i.bls, 1
  call void @_ZdlPvm(ptr noundef %i.blp, i64 noundef %i.blt) #22
  br label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1790

_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1790:     ; preds = %.lr.ph.i.i.i1787, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1789
  %i.blu = getelementptr inbounds nuw i8, ptr %.05.i.i.i1788, i64 296 ; 2 uses
  %.not.i.i.i1791 = icmp eq ptr %i.blu, %i.bln
  br i1 %.not.i.i.i1791, label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1792, label %.lr.ph.i.i.i1787, !llvm.loop !0

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1792: ; preds = %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i.i1790
  %.pr.i1793 = load ptr, ptr %61, align 8, !tbaa !37
  br label %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1794

_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1794: ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1792, %_ZN10CraftInputD2Ev.exit1785
  %i.blv = phi ptr [ %.pr.i1793, %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i1792 ], [ %i.blm, %_ZN10CraftInputD2Ev.exit1785 ] ; 3 uses
  %.not.i.i1.i1795 = icmp eq ptr %i.blv, null
  br i1 %.not.i.i1.i1795, label %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1798, label %bb.el

bb.el:                                            ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1794
  %i.blw = load ptr, ptr %i.bkl, align 8, !tbaa !40
  %i.blx = ptrtoint ptr %i.blw to i64
  %i.bly = ptrtoint ptr %i.blv to i64
  %i.blz = sub i64 %i.blx, %i.bly
  call void @_ZdlPvm(ptr noundef nonnull %i.blv, i64 noundef %i.blz) #22
  br label %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1798

_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1798:     ; preds = %_ZSt8_DestroyIP9ItemStackS0_EvT_S2_RSaIT0_E.exit.i1794, %bb.el
  %i.bma = getelementptr inbounds nuw i8, ptr %62, i64 296
  %i.bmb = getelementptr inbounds nuw i8, ptr %62, i64 336
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.bmb, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.bmc = load ptr, ptr %i.bma, align 8, !tbaa !23 ; 2 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %62, i64 312 ; 2 uses
  %i.bme = icmp eq ptr %i.bmc, %i.bmd
  br i1 %i.bme, label %_ZN9ItemStackD2Ev.exit1801, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1799

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1799: ; preds = %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1798
  %i.bmf = load i64, ptr %i.bmd, align 8, !tbaa !24
  %i.bmg = add i64 %i.bmf, 1
  call void @_ZdlPvm(ptr noundef %i.bmc, i64 noundef %i.bmg) #22
  br label %_ZN9ItemStackD2Ev.exit1801

_ZN9ItemStackD2Ev.exit1801:                       ; preds = %_ZNSt6vectorI9ItemStackSaIS0_EED2Ev.exit1798, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1799
  %i.bmh = getelementptr inbounds nuw i8, ptr %62, i64 40
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.bmh, ptr noundef nonnull @_ZTT17ItemStackMetadata) #23
  %i.bmi = load ptr, ptr %62, align 8, !tbaa !23  ; 2 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.bmk = icmp eq ptr %i.bmi, %i.bmj
  br i1 %i.bmk, label %_ZN9ItemStackD2Ev.exit1801.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1799.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1799.1: ; preds = %_ZN9ItemStackD2Ev.exit1801
  %i.bml = load i64, ptr %i.bmj, align 8, !tbaa !24
  %i.bmm = add i64 %i.bml, 1
  call void @_ZdlPvm(ptr noundef %i.bmi, i64 noundef %i.bmm) #22
  br label %_ZN9ItemStackD2Ev.exit1801.1

_ZN9ItemStackD2Ev.exit1801.1:                     ; preds = %_ZN9ItemStackD2Ev.exit1801, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1799.1
  %i.bmn = load ptr, ptr %64, align 8, !tbaa !23  ; 2 uses
  %i.bmo = icmp eq ptr %i.bmn, %i.bjo
  br i1 %i.bmo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1804, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1802

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1802: ; preds = %_ZN9ItemStackD2Ev.exit1801.1
  %i.bmp = load i64, ptr %i.bjo, align 8, !tbaa !24
  %i.bmq = add i64 %i.bmp, 1
  call void @_ZdlPvm(ptr noundef %i.bmn, i64 noundef %i.bmq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1804

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1804: ; preds = %_ZN9ItemStackD2Ev.exit1801.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1802
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
end_hunk_2
