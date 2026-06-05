inline.NumInlined: 862
inline.NumDeleted: 421
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_uNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEB1b_:bb.a
bb.ae:                                            ; preds = %.body.i.i, %.body30.i.i, %.body22.i.i, %.body17.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i21.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i

.body22.i.i:                                      ; preds = %bb.af, %bb.k
  %eh.lpad-body23.i.i = phi { ptr, i32 } [ %i.ba, %bb.af ], [ %i.n, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !52
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !52, !nonnull !4, !align !9, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7JU2D1aBbVY_15deltalake_mount(ptr %.val3.i.i, ptr nonnull %.val4.i.i) #9
          to label %common.resume unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit24.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i21.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !52 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i = load ptr, ptr %i.be, align 8, !alias.scope !52, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  %i.bf = load ptr, ptr %.val2.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i36.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit24.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bf(ptr noundef nonnull %.val.i.i)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit24.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !11, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit

bb.aj:                                            ; preds = %bb.ag
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #8
  br label %common.resume

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i29.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i.i

.body30.i.i:                                      ; preds = %bb.al, %bb.q
  %eh.lpad-body31.i.i = phi { ptr, i32 } [ %i.br, %bb.al ], [ %i.s, %bb.q ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str8NulErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(32) %i.bs) #9
          to label %common.resume unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit32.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i29.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str8NulErrorECs7JU2D1aBbVY_15deltalake_mount.exit.i.i unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit32.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str8NulErrorECs7JU2D1aBbVY_15deltalake_mount.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit32.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bt)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ao, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bw, %bb.ao ], [ %i.h, %bb.e ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val13.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !52, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val14.i.i = load ptr, ptr %i.by, align 8, !alias.scope !52
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECs7JU2D1aBbVY_15deltalake_mount(ptr %.val13.i.i, ptr %.val14.i.i) #9
          to label %common.resume unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val11.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !52, !noundef !4 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val12.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !52 ; 6 uses
  %i.cb = icmp eq ptr %.val11.i.i, null
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i) ]
  %i.cc = load ptr, ptr %.val12.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void %i.cc(ptr noundef nonnull %.val11.i.i)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cg = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit

bb.at:                                            ; preds = %bb.aq
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %common.resume, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cm = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ck, i64 noundef range(i64 1, 536870913) %i.cn) #8
  br label %common.resume

bb.av:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.co, align 8, !noundef !4 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.cp, align 8           ; 6 uses
  %i.cq = icmp eq ptr %.val, null
  br i1 %i.cq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.cr = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void %i.cr(ptr noundef nonnull %.val)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit

bb.ba:                                            ; preds = %bb.ax
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %common.resume, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.db = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs7JU2D1aBbVY_15deltalake_mount4file20LocalFileSystemErrorEEB17_.exit: ; preds = %bb.az, %bb.ay, %bb.av, %bb.as, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str8NulErrorECs7JU2D1aBbVY_15deltalake_mount.exit.i.i, %bb.ai, %bb.ah, %bb.ab, %bb.aa, %bb.v, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit27.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7JU2D1aBbVY_15deltalake_mount(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #8
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #8
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2z_21DeltaIOStorageBackendINtNtB1W_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2z_B3y_B4l_13put_multipart00IB1S_DNtNtB4n_6upload15MultipartUploadEL_EE0EEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = load i32, ptr %0, align 8, !range !62, !alias.scope !63, !noundef !4
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_13put_multipart00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !63, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBP_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BP_B1O_B2Q_13put_multipart00INtNtB2m_5boxed3BoxDNtNtB2S_6upload15MultipartUploadEL_EE0ECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %.val.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_13put_multipart00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i unwind label %bb.c, !noalias !63

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 64, i64 noundef 8) #8, !noalias !63
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_13put_multipart00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 64, i64 noundef 8) #8, !noalias !63
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_13put_multipart00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB1K_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(72) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_13put_multipart00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_13put_multipart00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_13put_multipart00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2z_21DeltaIOStorageBackendINtNtB1W_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2z_B3y_B4l_18put_multipart_opts00IB1S_DNtNtB4n_6upload15MultipartUploadEL_EE0EEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.a = load i32, ptr %0, align 8, !range !62, !alias.scope !73, !noundef !4
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_18put_multipart_opts00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !73, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBP_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BP_B1O_B2Q_18put_multipart_opts00INtNtB2m_5boxed3BoxDNtNtB2S_6upload15MultipartUploadEL_EE0ECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %.val.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_18put_multipart_opts00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i unwind label %bb.c, !noalias !73

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 144, i64 noundef 8) #8, !noalias !73
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_18put_multipart_opts00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 144, i64 noundef 8) #8, !noalias !73
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_18put_multipart_opts00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB1K_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(72) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_18put_multipart_opts00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_18put_multipart_opts00IB2y_DNtNtB53_6upload15MultipartUploadEL_EE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_18put_multipart_opts00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2z_21DeltaIOStorageBackendINtNtB1W_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2z_B3y_B4l_3get00NtB4n_9GetResultE0EEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = load i32, ptr %0, align 8, !range !62, !alias.scope !83, !noundef !4
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3get00NtB53_9GetResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !83, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBP_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BP_B1O_B2Q_3get00NtB2S_9GetResultE0ECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %.val.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_3get00NtB3s_9GetResultE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i unwind label %bb.c, !noalias !83

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 64, i64 noundef 8) #8, !noalias !83
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_3get00NtB3s_9GetResultE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 64, i64 noundef 8) #8, !noalias !83
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3get00NtB53_9GetResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtCsjyY8HP3IvQ6_12object_store9GetResultNtB18_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(192) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3get00NtB53_9GetResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3get00NtB53_9GetResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_3get00NtB3s_9GetResultE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2z_21DeltaIOStorageBackendINtNtB1W_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2z_B3y_B4l_3put00NtB4n_9PutResultE0EEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.a = load i32, ptr %0, align 8, !range !62, !alias.scope !93, !noundef !4
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3put00NtB53_9PutResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !93, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBP_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BP_B1O_B2Q_3put00NtB2S_9PutResultE0ECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %.val.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_3put00NtB3s_9PutResultE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i unwind label %bb.c, !noalias !93

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 80, i64 noundef 8) #8, !noalias !93
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_3put00NtB3s_9PutResultE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 80, i64 noundef 8) #8, !noalias !93
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3put00NtB53_9PutResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtCsjyY8HP3IvQ6_12object_store9PutResultNtB18_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(72) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3put00NtB53_9PutResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3f_21DeltaIOStorageBackendINtNtB2C_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3f_B4e_B51_3put00NtB53_9PutResultE0EEEEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_3put00NtB3s_9PutResultE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2z_21DeltaIOStorageBackendINtNtB1W_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2z_B3y_B4l_4head00NtB4n_10ObjectMetaE0EEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.a = load i32, ptr %0, align 8, !range !62, !alias.scope !103, !noundef !4
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount:bb.a
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !11, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #8
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str8NulErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.d) #9
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !9, !noundef !4 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.c, !inline_history !570

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !577, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !578
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #10
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !589, !noundef !4 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7JU2D1aBbVY_15deltalake_mount.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !590
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #10
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECs7JU2D1aBbVY_15deltalake_mount(ptr %.8.val, ptr nofree readonly captures(none) %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.8.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.b = load ptr, ptr %.16.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.8.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECs7JU2D1aBbVY_15deltalake_mount.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #8
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_13put_multipart00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_13put_multipart00IB1B_DNtNtB46_6upload15MultipartUploadEL_EE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_13put_multipart00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_13put_multipart00IB1B_DNtNtB46_6upload15MultipartUploadEL_EE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_18put_multipart_opts00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_18put_multipart_opts00IB1B_DNtNtB46_6upload15MultipartUploadEL_EE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_18put_multipart_opts00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_18put_multipart_opts00IB1B_DNtNtB46_6upload15MultipartUploadEL_EE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_3get00NtB42_9GetResultE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_3get00NtB46_9GetResultE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_3get00NtB42_9GetResultE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_3get00NtB46_9GetResultE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_3put00NtB42_9PutResultE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_3put00NtB46_9PutResultE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_3put00NtB42_9PutResultE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_3put00NtB46_9PutResultE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_4head00NtB42_10ObjectMetaE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_4head00NtB46_10ObjectMetaE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_4head00NtB42_10ObjectMetaE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_4head00NtB46_10ObjectMetaE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_6delete00uE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_6delete00uE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_6delete00uE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_6delete00uE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_8get_opts00NtB42_9GetResultE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_8get_opts00NtB46_9GetResultE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_8get_opts00NtB42_9GetResultE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_8get_opts00NtB46_9GetResultE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_8put_opts00NtB42_9PutResultE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_8put_opts00NtB46_9PutResultE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_8put_opts00NtB42_9PutResultE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_8put_opts00NtB46_9PutResultE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2i_B3h_B44_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2e_B3d_B40_18copy_if_not_exists00uE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2i_B3h_B44_18copy_if_not_exists00uE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2e_B3d_B40_18copy_if_not_exists00uE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2i_B3h_B44_18copy_if_not_exists00uE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2e_B3d_B40_20rename_if_not_exists00uE0EEIB3I_NtNtNtB6_9scheduler14current_thread6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2i_B3h_B44_20rename_if_not_exists00uE0EEIB3M_NtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2e_B3d_B40_20rename_if_not_exists00uE0EEIB3I_NtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2i_21DeltaIOStorageBackendINtNtB1F_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2i_B3h_B44_20rename_if_not_exists00uE0EEIB3M_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}
end_hunk_1
