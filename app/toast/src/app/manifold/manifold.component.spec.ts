import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ManifoldComponent } from './manifold.component';

describe('ManifoldComponent', () => {
  let component: ManifoldComponent;
  let fixture: ComponentFixture<ManifoldComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ManifoldComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ManifoldComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
